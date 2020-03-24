$(document).ready(function(){
    Vue.use(MyPlugin);
    // sgma activity더블 클릭 혹은 엔터 입력시 뜨는 팝업
    let expenseSgmaApp = new Vue({
        el : ".popup-layer--expenses-sgma"
        , data : {
            expenseList : []
            ,costInfoVO : {}
            ,expenseSgmaPopupFlag : false
            }
        ,created () {
            EventBus.$on('openExpenseSgmaPopup', this.openExpenseSgmaPopup)
        }
        ,methods : {
            /**********************************************
             * @method : openExpenseSgmaPopup
             * @note  넘겨진 정보를 세팅하고 모달을 보여주는 함수
             * @author : es-seungglee
             ***********************************************/
            openExpenseSgmaPopup(activityNm, userNm, comCd) {                       // 팝업 오픈
                this.expenseSgmaPopupFlag = true;                                   // 팝업 플래그 참이면 모달 켜짐
                this.costInfoVO.activityNm = activityNm;                             // 액티비티 명
                this.costInfoVO.userNm = userNm;                                     // 임원 확인용 사용자 명
                this.costInfoVO.comCd = comCd;                                       // 희망법인 구분용 코드
                this.selectExpenseList();
            }
            /**********************************************
             * @method : selectExpenseList
             * @note sgma activity 조회
             * @author : es-seungglee
             ***********************************************/
            , async selectExpenseList () {
                const param = {
                        activityNm : this.costInfoVO.activityNm
                        ,costItemNm : this.costInfoVO.costItemNm
                        ,userNm : this.costInfoVO.userNm
                        ,comCd : this.costInfoVO.comCd
                }
                let expense = await this.doAxios("/expenseManagement/approval/getExpenseByActivityNm","get",param, this.setData);
                this.expenseList = expense.data.expenseList;
            }
            /**********************************************
             * @method : closePopup
             * @note 모달 닫는 함수
             * @author : es-seungglee
             ***********************************************/
            ,closePopup() {                                                         // 모달 닫기
                this.expenseSgmaPopupFlag = false;
                this.costInfoVO = {};
            }
            /**********************************************
             * @method : choiceItem
             * @note  선택하기 함수(선택 후 부모 쪽으로 정보 보내주고 팝업 닫기)
             * @author : es-seungglee
             ***********************************************/
            , choiceItem(data) {                                                    // 액티비티 선택
                if(typeof(returnSGMA) === 'function') {
                    returnSGMA(data);
                }else {
                    EventBus.$emit('setExpenseItemSgma', data);
                }
                this.closePopup();
            }
        }
    });
});