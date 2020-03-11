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
                }
            ]
            ,expenseIdx : 0
            ,expenseAllIdx : 0
            ,expenseAllPopupFlag : false
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
                axios({
                    url : "/expense_management/approval/getDeptList"
                    ,method : "get"
                }).then(res=>{
                    console.log(res);
                    this.sender(res.data.data.deptList);
                }).catch(err => {
                    alert(err);
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
            ,openDeptPopup(idx) {                   // 부서 조회 팝업 열기
                this.expenseIdx = idx;
                EventBus.$emit('openDeptPopup', idx);
            }
            ,setExpenseData (data) {                // 부서 정보 세팅
                this.expenseList[this.expenseIdx].deptVO = data;
            }
            ,openExpenseAll(idx, midDivCdNm) {                  // 비용항목(중분류 더블클릭시)
                this.expenseIdx = idx;
                expenseAllApp.openExpenseAllPopup(midDivCdNm);
            }
            ,setExpenseItemAll(data) {
                this.expenseList[this.expenseIdx].expenseVO = data;
                console.log(this.expenseList[this.expenseIdx]);
            }
            ,openExpenseSgma(idx, activityCdNm) {
                this.expenseIdx = idx;
                expenseSgmaApp.openExpenseSgmaPopup(activityCdNm);
            }
            ,setExpenseItemSgma(data) {
                let expenseVO = this.expenseList[this.expenseIdx].expenseVO;
                expenseVO.activityCdNm = data.activityCdNm;
                expenseVO.activityCd = data.activityCd;
                expenseVO.expenseItemCdNm = data.expenseItemCdNm;
                expenseVO.expenseItemCd = data.expenseItemCd;
            }
        }
    });
    
    let expenseAllApp = new Vue({
        el : ".popup-layer--expenses-all"
        ,data : {
            expenseVO : {}
            ,expenseList : []
            ,expenseAllPopupFlag : false
        }
        ,methods : {
            openExpenseAllPopup(midDivCdNm) {
                this.expenseAllPopupFlag = true;
                this.expenseVO.midDivCdNm = midDivCdNm;
                console.log(this.expenseVO);
                this.selectExpenseList();
            }
            ,selectExpenseList () {
                axios({
                    url : "/expense_management/approval/getExpense"
                    ,params : {
                        midDivCdNm : this.expenseVO.midDivCdNm
                        ,smDivCdNm : this.expenseVO.smDivCdNm
                        ,activityCdNm : this.expenseVO.activityCdNm
                        ,expenseItemCdNm : this.expenseVO.expenseItemCdNm
                    }
                }).then(res=>{
                    this.expenseList = res.data.data.expenseList;
                }).catch(err=>{
                    alert(err);
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
    
    let expenseSgmaApp = new Vue({
        el : ".popup-layer--expenses-sgma"
        , data : {
            expenseList : []
            ,expenseVO : {}
            ,expenseSgmaPopupFlag : false
        }
        ,methods : {
            openExpenseSgmaPopup(activityCdNm) {
                this.expenseSgmaPopupFlag = true;
                this.expenseVO.activityCdNm = activityCdNm;
                this.selectExpenseList();
            }
            ,selectExpenseList () {
                axios({
                    url : "/expense_management/approval/getExpense"
                    ,params : {
                        activityCdNm : this.expenseVO.activityCdNm
                        ,expenseItemCdNm : this.expenseVO.expenseItemCdNm
                    }
                }).then(res=>{
                    this.expenseList = res.data.data.expenseList;
                }).catch(err=>{
                    alert(err);
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

