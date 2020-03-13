$(document).ready(function(){
    
    Vue.use(MyPlugin);                  // 전역 vue 플러그인
    
    let app = new Vue({
        el : "#container"
        , data : {
            openFlag : true
            , mode: 'single'             // 날짜 모드(single 단일 multi : 범위)
            , masks : {                  // 날짜 마스킹 처리
                title: 'MMMM YYYY',     // 날짜 타이틀
                input: 'YYYY-MM-DD',    // input에 보여질 포맷
                data: "YYYY-MM-DD",
            }
            , expenseList : [
                {
                    deptVO : {}
                    , useDate : getDate(new Date(), '-')
                    , remark : ""
                    , curAmt : 0
                    , expenseVO : {}
                    , checked : false
                }
            ]
            ,expenseIdx : 0
            ,expenseAllIdx : 0
            ,expenseAllPopupFlag : false
            ,fileName : ''
            ,files: []
            ,fileSize : 0
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
            sender(data) {
                EventBus.$emit('deptList', data);
            }
            , getDeptList() {         // 부서 정보 가져오기
                $.blockUI({ message: '<h3><img src="/resources/fim/img/busy.gif" /> 조회 중입니다.</h3>' });
                axios({
                    url : "/expense_management/approval/getDeptList"
                    ,method : "get"
                }).then(res=>{
                    console.log(res);
                    this.sender(res.data.data.deptList);
                    $.unblockUI();
                }).catch(e =>{
                    alert(e.response.data.resultMsg);
                    $.unblockUI();
                });
            }
            ,addExpenseList() {         // 비용 항목 리스트 추가
                this.expenseList.push(
                    {
                        deptVO : {}
                        , useDate : getDate(new Date(), '-')
                        , remark : ""
                        , curAmt : 0
                        , expenseVO : {}
                    }
                );
            }
            ,openDeptPopup(idx) {                                       // 부서 조회 팝업 열기
                this.expenseIdx = idx;
                EventBus.$emit('openDeptPopup', idx);
            }
            ,setExpenseData (data) {                                    // 부서 정보 세팅
                this.expenseList[this.expenseIdx].deptVO = data;
            }
            ,openExpenseAll(idx, smKindName) {                          // 비용항목(중분류 더블클릭시)
                this.expenseIdx = idx;
                let userNm = this.expenseList[idx].deptVO.userNm;       // 사용자 명
                let comCd = this.expenseList[idx].deptVO.comCd;         // 사용자 명
                expenseAllApp.openExpenseAllPopup(smKindName, userNm, comCd);
            }
            ,setExpenseItemAll(data) {                                  // 비용항목 데이터 세팅
                this.expenseList[this.expenseIdx].expenseVO = data;
                console.log(this.expenseList[this.expenseIdx]);
            }
            ,openExpenseSgma(idx, activityNm) {                         // 비용항목 activity 더블 클릭시
                this.expenseIdx = idx;
                expenseSgmaApp.openExpenseSgmaPopup(activityNm);
            }
            ,setExpenseItemSgma(data) {                                 // 비용항목 activity 세팅
                let expenseVO = this.expenseList[this.expenseIdx].expenseVO;
                expenseVO.activityNm = data.activityNm;
                expenseVO.activityCd = data.activityCd;
                expenseVO.costItemNm = data.costItemNm;
                expenseVO.expenseItemCd = data.expenseItemCd;
            }
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
            ,removeFile( key ){                                         // 파일 삭제(해당 순서)
                if(!confirm("삭제하시겠습니까?")) {
                    return;
                }
                this.files.splice( key, 1 );
            }       // end removeFile
            , saveExpense () {                                          // 지출결의 저장
                let formData = new FormData();
                for(let i=0; i< this.files.length;i++) {
                    formData.append('files['+i+']', this.files[i]);
                }
                const param = {};                                       // 저장용 객체
                
            }
            , removeExpenseList() {
                let expenseCopyList = this.expenseList;
                for(let expense of this.expenseList) {
                    if(expense.checked) {
                        console.log('checked !!!');
                        expenseCopyList.push(expense);
                    }
                }
                this.expenseList = expenseCopyList;
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
            openExpenseAllPopup(smKindName, userNm, comCd) {                    // 팝업 띄우기 
                this.expenseAllPopupFlag = true;                                // true면 팝업이 뜬다.
                this.expenseVO.smKindName = smKindName;                         // 중분류 명
                this.expenseVO.userNm = userNm;                                 // 사용자 이름 (임원 체크용)
                this.expenseVO.comCd = comCd;                                   // 부서명(sfg체크용)
                this.selectExpenseList();
            }
            ,selectExpenseList () {
                $.blockUI({ message: '<h3><img src="/resources/fim/img/busy.gif" /> 조회 중입니다.</h3>' });
                axios({
                    url : "/expense_management/approval/getExpense"
                    ,params : {
                        smKindName : this.expenseVO.smKindName
                        ,costName : this.expenseVO.costName
                        ,activityNm : this.expenseVO.activityNm
                        ,costItemNm : this.expenseVO.costItemNm
                        ,userNm : this.expenseVO.userNm
                        ,comCd : this.expenseVO.comCd
                    }
                }).then(res=>{
                    this.expenseList = res.data.data.expenseList;
                    $.unblockUI();
                }).catch(e =>{
                    alert(e.response.data.resultMsg);
                    $.unblockUI();
                });
            }
            ,closePopup() {
                this.expenseAllPopupFlag = false;
                this.expenseVO = {};
            }
            ,choiceItem(data) {
                app.setExpenseItemAll(data);
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
            openExpenseSgmaPopup(activityNm, userNm, comCd) {                       // 팝업 오픈
                this.expenseSgmaPopupFlag = true;
                this.expenseVO.activityNm = activityNm;
                this.expenseVO.userNm = userNm;
                this.expenseVO.comCd = comCd;
                this.selectExpenseList();
            }
            ,selectExpenseList () {
                $.blockUI({ message: '<h3><img src="/resources/fim/img/busy.gif" /> 조회 중입니다.</h3>' });
                axios({
                    url : "/expense_management/approval/getExpense"
                    ,params : {
                        activityNm : this.expenseVO.activityNm
                        ,costItemNm : this.expenseVO.costItemNm
                        ,userNm : this.expenseVO.userNm
                        ,comCd : this.expenseVO.comCd
                    }
                }).then(res=>{
                    let tempList = [];
                    console.log('res :::');
                    console.log(res.data.data.expenseList);
                    for(let temp of res.data.data.expenseList) {
                        tempList.push({
                            activityNm : temp.activityNm
                            ,activityCd : temp.activityCd
                            ,costItemNm : temp.costItemNm
                            ,costItemCd : temp.costItemCd
                        });
                    }
                    tempList.filter((data,idx,list)=> {
                        
                    })
                    console.log('tempList ::::: ');
                    console.log(tempList);
                    this.expenseList = Array.from(new Set(tempList));
                    console.log('expenseList ::: ');
                    console.log(this.expenseList);
                    $.unblockUI();
                }).catch(e =>{
                    console.log(e);
                    //alert(e.response.data.resultMsg);
                    $.unblockUI();
                });
            }
            ,closePopup() {
                this.expenseSgmaPopupFlag = false;
                this.expenseVO = {};
            }
            ,choiceItem(data) {
                app.setExpenseItemSgma(data);
                this.closePopup();
            }
        }
    });
});

