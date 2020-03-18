'use strict'
window.onload= function() {
    
    Vue.use(MyPlugin);                      // 전역 vue 플러그인
    Vue.use(onlyInt);
    let app = new Vue({
        el : "#container"
        , data : {
            openFlag : true
            , mode: 'single'                // 날짜 모드(single 단일 multi : 범위)
            , masks : {                     // 날짜 마스킹 처리
                title: 'MMMM YYYY',         // 날짜 타이틀
                input: 'YYYY-MM-DD',        // input에 보여질 포맷
                data: "YYYY-MM-DD",
            }
            , expenseList : [
                {
                    deptVO : {}
                    , useDate : getDate(new Date(), '-')
                    , remark : ""
                    , curAmt : 0
                    , costInfoVO : {}
                    , checked : false
                }
            ]
            ,expenseIdx : 0
            ,expenseAllPopupFlag : false
            ,fileName : ''              // 파일 명
            ,files: []                  // 파일 담을 객체(리스트)
            ,fileSize : 0               // 보여줄 파일 전체 크기
            ,totalAmt : 0               // 합계용 금액
            ,tiarCostVO : {
                title : "[SGH][지출결의서(현금)_김연준_2020-02-20]"
                ,regDeptNm : "SGH>IT기술본부>기술지원담당>정보시스템실>정보개발팀"
            }            // 저장용 VO
        }
        ,created () {
            this.getDeptList();
        }
        ,mounted () {
            EventBus.$on('setExpenseData', this.setExpenseData);
        }
        ,watch : {
            
        }
        ,methods : {
            /**********************************************
             * @method : sender
             * @note 다른 컴포넌트로 전송하는 함수
             * @author : es-seungglee
             ***********************************************/
            sender(data) {
                EventBus.$emit('deptList', data);               // deptList의 이름으로 데이터를 전송
            }
            /**********************************************
             * @method : setData
             * @note 서버 처리 이후 세팅용 함수
             * @author : es-seungglee
             ***********************************************/
            ,setData(data) {
                this.sender(data.deptList);
            }
            /**********************************************
             * @method : getDeptList
             * @note 부서 정보 가져오기
             * @author : es-seungglee
             ***********************************************/
            , getDeptList() {
                this.doAxios("/expense_management/approval/getDeptList", "get", null, this.setData);
            }
            , getBankInfo() {
                const param = {
                    deptCd : 'h0000000'
                    ,empNo : 'H20044'
                }
                this.doAxios("/","get", param,this.setData);
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
                        , useDate : getDate(new Date(), '-')
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
            ,openDeptPopup(idx) {
                this.expenseIdx = idx;
                EventBus.$emit('openDeptPopup', idx);
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
                let comCd = this.expenseList[idx].deptVO.comCd;         // 사용자 명
                expenseAllApp.openExpenseAllPopup(smKindName, userNm, comCd);
            }
            /**********************************************
             * @method : setExpenseItemAll
             * @note 비용항목 데이터 세팅(중분류 팝업에서 넘어온 값)
             * @author : es-seungglee
             ***********************************************/
            ,setExpenseItemAll(data) { 
                this.expenseList[this.expenseIdx].costInfoVO = data;
                this.onCompleted(this.expenseIdx, this.expenseList[this.expenseIdx].costInfoVO);
            }
            /**********************************************
             * @method : openExpenseSgma
             * @note 비용항목 activity 더블 클릭시 팝업띄우는 함수
             * @author : es-seungglee
             ***********************************************/
            ,openExpenseSgma(idx, activityNm) {                         // 
                this.expenseIdx = idx;
                expenseSgmaApp.openExpenseSgmaPopup(activityNm);
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
                
                axios.post("/expense_management/approval/expense"
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
                expenseDetailApp.openDetailPopup(copyCostInfo);                            // 세부 항목 팝업 띄운다.
                
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
                                smKind : '4503006'
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
    
    // 비용항목 중분류 더블 클릭시 뜨는 팝업
    let expenseAllApp = new Vue({
        el : ".popup-layer--expenses-all"
        ,data : {
            expenseVO : {}
            ,expenseList : []
            ,expenseAllPopupFlag : false                                        // 팝업 보기 변수
        }
        ,methods : {
            /**********************************************
             * @method : openExpenseAllPopup
             * @note 넘겨진 정보를 세팅하고 모달을 보여주는 함수
             * @author : es-seungglee
             ***********************************************/
            openExpenseAllPopup(smKindName, userNm, comCd) {
                this.expenseAllPopupFlag = true;                                // true면 팝업이 뜬다.
                this.expenseVO.smKindName = smKindName;                         // 중분류 명
                this.expenseVO.userNm = userNm;                                 // 사용자 이름 (임원 체크용)
                this.expenseVO.comCd = comCd;                                   // 부서명(sfg체크용)
                this.selectExpenseList();
            }
            /**********************************************
             * @method : setData
             * @note 데이터 서버 처리 이후 세팅 할 함수
             * @author : es-seungglee
             ***********************************************/
            ,setData(data) {
                this.expenseList = data.expenseList;
            }
            /**********************************************
             * @method : selectExpenseList
             * @note 비용항목 리스트 조회
             * @author : es-seungglee
             ***********************************************/
            ,selectExpenseList () {
                const param = {
                    smKindName : this.expenseVO.smKindName                      // 중분류명
                    ,costName : this.expenseVO.costName                         // 소분류명
                    ,activityNm : this.expenseVO.activityNm                     // 액티비티명
                    ,costItemNm : this.expenseVO.costItemNm                     // 비용항목 명
                    ,userNm : this.expenseVO.userNm                             // 사용자명(임원체크용)
                    ,comCd : this.expenseVO.comCd                               // 회사코드(sgf체크 용)
                }
                this.doAxios("/expense_management/approval/getExpense", "get", param, this.setData);
            }
            /**********************************************
             * @method : closePopup
             * @note 모달 닫는 함수
             * @author : es-seungglee
             ***********************************************/
            ,closePopup() {
                this.expenseAllPopupFlag = false;                               // 팝업 플래그 (팝업 닫기)
                this.expenseVO = {};                                            // 변수 초기화
            }
            /**********************************************
             * @method : choiceItem
             * @note  선택하기 함수(선택 후 부모 쪽으로 정보 보내주고 팝업 닫기)
             * @author : es-seungglee
             ***********************************************/
            ,choiceItem(data) {                                                 // 선택하기 함수
                app.setExpenseItemAll(data);                                    // 다른 vue의 함수 실행
                this.closePopup();
            }
        }
    });
    
    // sgma activity더블 클릭 혹은 엔터 입력시 뜨는 팝업
    let expenseSgmaApp = new Vue({
        el : ".popup-layer--expenses-sgma"
        , data : {
            expenseList : []
            ,expenseVO : {}
            ,expenseSgmaPopupFlag : false
        }
        ,methods : {
            /**********************************************
             * @method : openExpenseSgmaPopup
             * @note  넘겨진 정보를 세팅하고 모달을 보여주는 함수
             * @author : es-seungglee
             ***********************************************/
            openExpenseSgmaPopup(activityNm, userNm, comCd) {                       // 팝업 오픈
                this.expenseSgmaPopupFlag = true;                                   // 팝업 플래그 참이면 모달 켜짐
                this.expenseVO.activityNm = activityNm;                             // 액티비티 명
                this.expenseVO.userNm = userNm;                                     // 임원 확인용 사용자 명
                this.expenseVO.comCd = comCd;                                       // 희망법인 구분용 코드
                this.selectExpenseList();
            }
            /**********************************************
             * @method : setData
             * @note 데이터 서버 처리 이후 세팅 할 함수
             * @author : es-seungglee
             ***********************************************/
            ,setData(data) {
                this.expenseList = data.expenseList;
            }
            /**********************************************
             * @method : selectExpenseList
             * @note sgma activity 조회
             * @author : es-seungglee
             ***********************************************/
            ,selectExpenseList () {
                const param = {
                    activityNm : this.expenseVO.activityNm
                    ,costItemNm : this.expenseVO.costItemNm
                    ,userNm : this.expenseVO.userNm
                    ,comCd : this.expenseVO.comCd
                }
                this.doAxios("/expense_management/approval/getExpenseByActivityNm","get",param, this.setData);
            }
            /**********************************************
             * @method : closePopup
             * @note 모달 닫는 함수
             * @author : es-seungglee
             ***********************************************/
            ,closePopup() {                                                         // 모달 닫기
                this.expenseSgmaPopupFlag = false;
                this.expenseVO = {};
            }
            /**********************************************
             * @method : choiceItem
             * @note  선택하기 함수(선택 후 부모 쪽으로 정보 보내주고 팝업 닫기)
             * @author : es-seungglee
             ***********************************************/
            , choiceItem(data) {                                                    // 액티비티 선택
                app.setExpenseItemSgma(data);
                this.closePopup();
            }
        }
    });
    
    let expenseDetailApp = new Vue({                                                // 상세 등록 페이지
        el : ".popup-layer--expenses-detail"
        ,data : {
            expenseDetailFlag : false
            ,costInfoVO : {}
        }
        ,methods : {
            /**********************************************
             * @method : openDetailPopup
             * @note  넘겨진 정보를 세팅하고 모달을 보여주는 함수
             * @author : es-seungglee
             ***********************************************/
            openDetailPopup(costInfoVO) {
                this.costInfoVO = costInfoVO;
                this.expenseDetailFlag = true;
            }
            /**********************************************
             * @method : closePopup
             * @note 모달 닫는 함수
             * @author : es-seungglee
             ***********************************************/
            ,closePopup(flag) {
                if(!flag) {
                    if(!confirm("팝업을 닫으시면 저장하지 않은 내용이 삭제됩니다. \n 팝업을 닫으시겠습니까?")){
                        return;
                    }
                }
                this.expenseDetailFlag = false;
                this.costInfoVO = {};
            }
            /**********************************************
             * @method : choiceItem
             * @note  선택하기 함수(선택 후 부모 쪽으로 정보 보내주고 팝업 닫기)
             * @author : es-seungglee
             ***********************************************/
            , saveData() {                                                    // 액티비티 선택
                if(!this.validation()) {
                    return;
                }
                app.setExpenseDetail(this.costInfoVO);
                this.closePopup(true);
            }
            , validation() {
                let cost = this.costInfoVO;
                let smKind = cost.smKindSeq;
                let costSeq = cost.costSeq;
                if(smKind == '4503006') {           // 중분류가 교통비 일떄
                    if(!cost.startArea) {
                        alert("출발지를 입력해 주세요");
                        this.$refs.startArea.focus();
                        return false;
                    }else if(!cost.destArea) {
                        alert("목적지를 입력해 주세요.");
                        this.$refs.destArea.focus();
                        return false;
                    }
                    if(costSeq === 10 || costSeq === 11) {
                        if(!cost.transAmt) {
                            alert("금액을 입력해 주세요.");
                            this.$refs.transAmt.focus();
                            return false;
                        }
                    }
                    if(costSeq === 10) {        //  야근교통비
                        // TODO 업무시작/ 종료 시간 체크
                    }
                    if(costSeq === 86) {        // 유류대-직원
                        if(!cost.distance) {
                            alert("거리를 입력해 주세요.");
                            this.$refs.distance.focus();
                            return false;
                        }else if(!cost.personCnt) {
                            alert("인원수를 입력해 주세요.");
                            this.$refs.personCnt.focus();
                            return false;
                        }else if(!cost.personName) {
                            alert("탑승자를 입력해 주세요.");
                            this.$refs.personName.focus();
                            return false;
                        }else if(!cost.transAmt) {
                            alert("금액을 계산해 주세요.");
                            this.$refs.autoTransAmt.focus();
                            return false;
                        }
                    }
                }else if(smKind === '4503010') {            // 중분류가 접대비 일때
                    if(!cost.custName) {
                        alert("업체명을 입력해 주세요.");
                        this.$refs.custName.focus();
                        return false;
                    }else if(!cost.userName) {
                        alert("업체 담당자를 입력해 주세요");
                        this.$refs.userName.focus();
                        return false;
                    }else if(!cost.purpose) {
                        alert("목적을 입력해 주세요.");
                        this.$refs.purpose.focus();
                        return false;
                    }
                }else if(smKind === '4503008' || smKind === '4503009') {        // 중분류가 국내 출장 혹은 해외 출장일때
                    if(!cost.busiTripCode) {
                        alert("출장정보를 선택해 주세요.");
                        this.$refs.busiTripCode.focus();
                        return false;
                    }else if(!cost.busiTripType) {
                        alert("출장구분을 선택해 주세요.");
                        this.$refs.busiTripType.focus();
                        return false;
                    }
                }
                return true;
            }
        }
    });
};