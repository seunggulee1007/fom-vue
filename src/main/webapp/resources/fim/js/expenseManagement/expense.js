'use strict'
$(document).ready(function(){
    Vue.use(MyPlugin);                      // 전역 vue 플러그인
    Vue.use(onlyInt);
    let app = new Vue({
        el : "#app"
        , data : {
            openFlag : true
            , mode: 'single'                // 날짜 모드(single 단일 multi : 범위)
            , masks : {                     // 날짜 마스킹 처리
                title: 'MMMM YYYY',         // 날짜 타이틀
                input: 'YYYY-MM-DD',        // input에 보여질 포맷
            }
            , expenseList : [
                {
                    deptVO : {}
                    , useDate : new Date()
                    , remark : ""
                    , curAmt : 0
                    , costInfoVO : {}
                    , checked : false
                }
            ]
            , expenseIdx : 0
            , expenseAllPopupFlag : false
            , fileName : ''              // 파일 명
            , files: []                  // 파일 담을 객체(리스트)
            , fileSize : 0               // 보여줄 파일 전체 크기
            , totalAmt : 0               // 합계용 금액
            , tiarCostVO : {
                 title : ""
                 ,regDeptNm : ""
                 ,regDate : ''
                 ,acno : ''
                 ,bankNm : ''
                 ,ownerNm : ''
                 ,regEmpNm : ''
                 ,companySeq : '1'
            }             // 저장용 VO
            , deptList : []
        }
        ,created () {
            // this.getBankInfo('h0000000','H20044');
        }
        ,mounted () {
            EventBus.$on('setExpenseData', this.setExpenseData);
            EventBus.$on('setExpenseItemAll', this.setExpenseItemAll);
            EventBus.$on('setExpenseItemSgma', this.setExpenseItemSgma);
            EventBus.$on('setExpenseDetail',this.setExpenseDetail);
            // 임시... 삭제해야 함(sso가 없어서 임시로 만들라고 해서 만듦)
            EventBus.$on('sendTempData',this.setTempData);
        }
        ,watch : {
            
        }
        ,methods : {
            /**********************************************
             * @method : setBankInfo
             * @note 서버 처리 이후 세팅용 함수
             * @author : es-seungglee
             ***********************************************/
            setBankInfo(data) {
                if(data.bankInfoVO) {
                    this.tiarCostVO.accNo = data.bankInfoVO.AccNo;
                    this.tiarCostVO.bankNm = data.bankInfoVO.PayBankName;
                    this.tiarCostVO.ownerNm = data.bankInfoVO.OwnerName;
                    this.tiarCostVO.regDate = getDate(new Date(), '-');
                }else {
                    this.tiarCostVO.accNo       = "";
                    this.tiarCostVO.bankNm      = "";
                    this.tiarCostVO.ownerNm     = "";
                    this.tiarCostVO.regDate     = "";
                }
            }
            , getBankInfo(deptCd , empNo) {
                const param = {
                        deptCd : deptCd
                        ,empNo : empNo
                }
                this.doAxios("/expenseManagement/approval/getBankInfo","get", param, this.setBankInfo);
            }
            ,setTempData(data) {
                this.tiarCostVO.regDeptNm = data.deptNm;    // 부서 이름
                this.tiarCostVO.regEmpNm = data.userNm;     // 사용자 이름
                this.tiarCostVO.regDeptSeq = data.deptCd;   // 부서코드
                this.tiarCostVO.comCd = data.comCd;         // 법인 코드
                this.tiarCostVO.title = "[" + data.comNm+"][지출결의서(현금)_"+data.userNm+"_"+getDate(new Date(), "-")+"]";
                this.getBankInfo(data.deptCd, data.empNo);
                
                this.expenseList[0].deptVO.comCd = data.comCd; // 법인 코드
                this.expenseList[0].deptVO.deptCd = data.deptCd;
                this.expenseList[0].deptVO.deptNm = data.deptNm;
                this.expenseList[0].deptVO.comNm = data.comNm;
                this.expenseList[0].deptVO.userNm = data.userNm;
                
                
            }
            /**********************************************
             * @method : addExpenseList
             * @note 비용 항목 리스트 추가
             * @author : es-seungglee
             ***********************************************/
            ,addExpenseList() {
                this.expenseList.push(
                        {
                            deptVO : {}
                        , useDate : new Date()
                        , remark : ""
                            , curAmt : 0
                            , costInfoVO : {}
                        }
                );
            }
            /**********************************************
             * @method : openDeptPopup
             * @note 부서 조회 팝업 열기
             * @author : es-seungglee
             ***********************************************/
            ,openDeptPopup(idx, flag) {     // 임시...기안자도 이 팝업으로 가져와야 해서 임시로 만듦. 나중에 삭제.
                // ,openDeptPopup(idx) {
                if(typeof(idx) === 'number') {
                    this.expenseIdx = idx;
                }
                // EventBus.$emit('openDeptPopup');
                EventBus.$emit('openDeptPopup', flag);
            }
            /**********************************************
             * @method : setExpenseData
             * @note 부서 모달에서 넘어온 부서 정보 세팅
             * @author : es-seungglee
             ***********************************************/
            ,setExpenseData (data) {
                this.expenseList[this.expenseIdx].deptVO = data;
            }
            /**********************************************
             * @method : openExpenseAll
             * @note 비용항목(중분류 더블클릭시) 중분류 항목 모달 띄우기
             * @author : es-seungglee
             ***********************************************/
            ,openExpenseAll(idx, smKindName) {
                this.expenseIdx = idx;
                let userNm = this.expenseList[idx].deptVO.userNm;       // 사용자 명
                let comCd = this.expenseList[idx].deptVO.comCd;         // 회사 코드
                EventBus.$emit('openExpenseAllPopup',smKindName, userNm, comCd);
            }
            /**********************************************
             * @method : setExpenseItemAll
             * @note 비용항목 데이터 세팅(중분류 팝업에서 넘어온 값)
             * @author : es-seungglee
             ***********************************************/
            ,setExpenseItemAll(data) { 
                this.expenseList[this.expenseIdx].costInfoVO = data;
                this.expenseList[this.expenseIdx].remark = data.costName;
                this.onCompleted(this.expenseIdx, this.expenseList[this.expenseIdx].costInfoVO);
            }
            
            /**********************************************
             * @method : openExpenseSgma
             * @note 비용항목 activity 더블 클릭시 팝업띄우는 함수
             * @author : es-seungglee
             ***********************************************/
            ,openExpenseSgma(idx, activityNm) {                         // 
                this.expenseIdx = idx;
                let userNm = this.expenseList[idx].deptVO.userNm;       // 사용자 명
                let comCd = this.expenseList[idx].deptVO.comCd;         // 회사 코드
                EventBus.$emit('openExpenseSgmaPopup', activityNm, userNm, comCd);
            }
            /**********************************************
             * @method : setExpenseItemSgma
             * @note 비용항목 activity 세팅 팝업에서 넘어온 정보 세팅
             * @author : es-seungglee
             ***********************************************/
            ,setExpenseItemSgma(data) { 
                let costInfoVO = this.expenseList[this.expenseIdx].costInfoVO;
                costInfoVO.activityNm = data.activityNm;                 // activity 명
                costInfoVO.activityCd = data.activityCd;                 // activity 코드
                costInfoVO.costItemNm = data.costItemNm;                 // 비용항목 명
                costInfoVO.expenseItemCd = data.expenseItemCd;           // 비용항목 코드
                this.onCompleted(this.expenseIdx, this.expenseList[this.expenseIdx].costInfoVO);      // 4가지 다 입력시 발생하는 팝업
            }
            /**********************************************
             * @method : handleFilesUpload
             * @note 파일 선택 이벤트
             * @author : es-seungglee
             ***********************************************/
            ,handleFilesUpload(){
                let uploadedFiles = this.$refs.files.files;             // 해당 파일의 엘리먼트에 접근해서 변수에 담는다.
                /*
                  Adds the uploaded file to the files array
                 */
                for( var i = 0; i < uploadedFiles.length; i++ ){
                    this.files.push( uploadedFiles[i] );
                }
                this.fileSize = this.files[0].size;
                this.fileName = this.files[0].name;
            }   // end handleFilesUpload
            /**********************************************
             * @method : removeFile
             * @note 넘겨진 인덱스로 해당 순서에 있는 파일 삭제하는 함수
             * @author : es-seungglee
             ***********************************************/
            ,removeFile( key ){                                         // 파일 삭제(해당 순서)
                if(!confirm("삭제하시겠습니까?")) {
                    return;
                }
                this.files.splice( key, 1 );
            }       // end removeFile
            /**********************************************
             * @method : saveExpense
             * @note 지출 결의 저장
             * @author : es-seungglee
             ***********************************************/
            , saveExpense (flag) {
                
                if(!flag) {
                    if(!confirm("저장하시겠습니까?")) {
                        return
                    }
                }
                
                let formData = new FormData();
                for(let i=0; i< this.files.length;i++) {                // 파일 내용 저장
                    formData.append('files['+i+']', this.files[i]);
                }
                
                for(let key in this.tiarCostVO) {
                    formData.append(key, this.tiarCostVO[key]);
                }
                
                let cnt = 0;
                for(let expense of this.expenseList) {                  // 비용정산 상세 부분은 배열이므로 해당 배열은 직접 만들어 줘야 한다.
                    if(typeof(expense.useDate) === 'string' && expense.useDate.indexOf('-') != -1) {
                        expense.useDate = expense.useDate.replace(/-/gi, "");
                    }
                    if(expense.useDate.length > 8) {
                        expense.useDate = getDate(expense.useDate);
                    }
                    // 배열 생성하며 유효성 체크
                    if(!expense.costInfoVO.smKindSeq) {
                        alert((cnt+1) + "번째 항목의 중분류를 선택해 주세요");
                        return;
                    }else if(!expense.costInfoVO.activityCd) {
                        alert((cnt+1) +"번째 항목의 Activity를 선택해 주세요");
                        return;
                    }else if(!expense.store) {
                        alert((cnt+1) + "번째 항목의 가맹점을 입력해 주세요");
                        return;
                    }else if(!expense.remark) {
                        alert((cnt+1) + "번째 항목의 적요를 입력해 주세요");
                        return;
                    }else if(!expense.curAmt) {
                        alert((cnt+1) + "번째 항목의 금액을 입력해 주세요");
                        return;
                    }
                    
                    for(let key in expense) {
                        let subExpense = expense[key];
                        if(typeof(subExpense) == 'object') {
                            for(let subKey in subExpense) {
                                formData.append('tiarCostAmtList['+cnt+'].'+key+"."+subKey, subExpense[subKey]);
                            }
                        }else {
                            formData.append('tiarCostAmtList['+cnt+'].'+key, expense[key]);
                        }
                    }
                    cnt++;
                }
                
                axios.post("/expenseManagement/approval/expense"
                        ,formData
                        ,{
                            'Content-Type' : 'multipart/form-data'
                        }
                ).then(res => {
                    console.log(res);
                }).catch(err => {
                    
                })
                
            }
            /**********************************************
             * @method : removeExpenseList
             * @note 선택된 비용항목 리스트 삭제
             *          각 리스트에 pk값이 없어서 선택된 항목만 뺀 나머지를 다시 배열로 만드는 함수
             * @author : es-seungglee
             ***********************************************/
            , removeExpenseList() {
                let expenseCopyList = [];                                               // 복사할 리스트
                for(let expense of this.expenseList) {                                  // 하나만 선택된것이 아니기 때문에 반복문 돌린다.
                    if(!expense.checked) {                                              // 체크 되지 않은 항목만
                        expenseCopyList.push(expense);                                  // 새로운 배열에 담는다.
                    }
                }
                this.expenseList = expenseCopyList;                                     // 체크 되지 않은 항목만 담은 배열을 다시 해당 배열에 담는다.
            }
            /**********************************************
             * @method : onCompleted
             * @note 중분류, 비용항목 완성시 감지해서 팝업 띄우는 함수
             * @author : es-seungglee
             ***********************************************/
            , onCompleted (idx, costInfoVO) {
                if(!costInfoVO.costSeq || !costInfoVO.costItemCd || !costInfoVO.activityCd || !costInfoVO.smKindSeq) {          // 4가지 필드 중 하나라도 없다면 
                    return;
                }
                let flag = this.checkDetailPopupOpenYn(costInfoVO);
                if(!flag) {                           // 팝업 띄어야 할 항목 체크
                    return;
                }
                this.expenseIdx = idx;
                let copyCostInfo = Object.assign({},costInfoVO);
                this.expenseList[idx].costInfoVO = {};
                console.log(copyCostInfo);
                // expenseDetailApp.openDetailPopup(copyCostInfo);                            // 세부 항목 팝업 띄운다.
                EventBus.$emit('openDetailPopup',copyCostInfo)
                
            }
            /**********************************************
             * @method : checkDetailPopupOpenYn
             * @note 해당 비용항목이 상세 정보를 입력해야 하는 정보인지 판단
             * @author : es-seungglee
             ***********************************************/
            , checkDetailPopupOpenYn(costInfoVO) {
                let smKindSeq = costInfoVO.smKindSeq;        // 중분류
                let costSeq = costInfoVO.costSeq;            // 소분류
                let arr = [
                    {
                        smKind : '4503006'      // 교통비
                            ,child : [
                                10              // 야근 교통비
                                ,11             // 외근 교통비
                                ,86             // 유류대-직원
                                ]
                    }
                    ,{
                        smKind : '4503010'
                            ,child : [          // 접대비
                                42              // 해외-접대비
                                , 44            // 경조사-접대비
                                , 45            // 일반접대비
                                ]
                    }
                    ,{
                        smKind : '4503008'  // 해외 출장
                            ,child : [
                                24              // 식대-해외출장
                                ,26             // 교통비-해외출장
                                ,31             // 기타
                                ,81             // 커뮤니케이션
                                ,87             // 렌터카
                                ,88             // 항공료
                                ,89             // 로밍
                                ,90             // 호텔 
                                ,25             // 접대비
                                ]
                    }
                    ,{
                        smKind : '4503009'  // 국내출장
                            ,child : [
                                34              // 식대
                                ,36             // 교통비
                                ,82             // 커뮤니케이션
                                ,91             // 렌터카
                                ,92             // 호텔
                                ,93             // 항공료
                                ]
                    }
                    ];
                for(let i=0; i<arr.length; i++) {
                    let smKind = arr[i].smKind;                         // 중분류
                    if(smKind === smKindSeq ) {                         // 해당 중분류가 배열에도 있다면
                        for(let j=0; j<arr[i].child.length; j++) {      // 해당 중분류의 소분류를 비교
                            let cost = arr[i].child[j];
                            if(cost === costSeq) {                      // 맞는게 있다면
                                return true;                            // 참을 리턴하고 종료
                            }
                        }
                    }
                }
                return false;
            }
            /**********************************************
             * @method : calcTotalAmt
             * @note 합계 비용 나타내는 함수
             * @author : es-seungglee
             ***********************************************/
            , calcTotalAmt (data) {
                data.displayCurAmt = this.setComma(data.displayCurAmt); // 보여주는 금액은 ','를 포함
                data.curAmt = data.displayCurAmt.replace(/,/gi,"");     // 계산해야 하는 금액 ',' 제거
                this.totalAmt = 0;
                for(let expenseVO of this.expenseList) {                // 합계를 위한 반복문
                    this.totalAmt += Number(expenseVO.curAmt);
                }
                if(typeof(this.totalAmt) != 'number') {                 // 혹시모를 예외처리(숫자 타입이 아니라면)
                    this.totalAmt = 0;                                  // 0원으로 처리
                }
                this.totalAmt = this.setComma(this.totalAmt);           // 보여주는 합계 금액도 컴마 처리
            }
            /**********************************************
             * @method : setExpenseDetail
             * @note 세부 항목 저장 함수
             * @author : es-seungglee
             ***********************************************/
            , setExpenseDetail(data) {
                this.expenseList[this.expenseIdx].costInfoVO = data;
            }
        }
    });
});
