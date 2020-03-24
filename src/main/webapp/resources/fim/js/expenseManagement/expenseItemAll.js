$(document).ready(function(){
    Vue.use(MyPlugin);
    // 비용항목 중분류 더블 클릭시 뜨는 팝업
    let expenseAllApp = new Vue({
        el : ".popup-layer--expenses-all"
        ,data : {
            costInfoVO : {}
            ,expenseList : []
            ,expenseAllPopupFlag : false                                        // 팝업 보기 변수
        }
        ,created () {
            EventBus.$on('openExpenseAllPopup', this.openExpenseAllPopup);
        }
        ,methods : {
            /**********************************************
             * @method : openExpenseAllPopup
             * @note 넘겨진 정보를 세팅하고 모달을 보여주는 함수
             * @author : es-seungglee
             ***********************************************/
            openExpenseAllPopup(smKindName, userNm, comCd) {
                this.expenseAllPopupFlag = true;                                // true면 팝업이 뜬다.
                this.costInfoVO.smKindName = smKindName;                         // 중분류 명
                this.costInfoVO.userNm = userNm;                                 // 사용자 이름 (임원 체크용)
                this.costInfoVO.comCd = comCd;                                   // 부서명(sfg체크용)
                this.selectExpenseList();
            }
            /**********************************************
             * @method : selectExpenseList
             * @note 비용항목 리스트 조회
             * @author : es-seungglee
             ***********************************************/
            , async selectExpenseList () {
                const param = {
                        smKindName : this.costInfoVO.smKindName                      // 중분류명
                        ,costName : this.costInfoVO.costName                         // 소분류명
                        ,activityNm : this.costInfoVO.activityNm                     // 액티비티명
                        ,costItemNm : this.costInfoVO.costItemNm                     // 비용항목 명
                        ,userNm : this.costInfoVO.userNm                             // 사용자명(임원체크용)
                        ,comCd : this.costInfoVO.comCd                               // 회사코드(sgf체크 용)
                }
                let expense = await this.doAxios("/expenseManagement/approval/getExpense", "get", param);
                this.expenseList = expense.data.expenseList;
            }
            /**********************************************
             * @method : closePopup
             * @note 모달 닫는 함수
             * @author : es-seungglee
             ***********************************************/
            ,closePopup() {
                this.expenseAllPopupFlag = false;                               // 팝업 플래그 (팝업 닫기)
                this.costInfoVO = {};                                            // 변수 초기화
            }
            /**********************************************
             * @method : choiceItem
             * @note  선택하기 함수(선택 후 부모 쪽으로 정보 보내주고 팝업 닫기)
             * @author : es-seungglee
             ***********************************************/
            ,choiceItem(data) {                                                 // 선택하기 함수
                if(typeof(returnCostItemAct) === 'function') {
                    returnCostItemAct(data);
                }else {
                    EventBus.$emit('setExpenseItemAll',data);
                }
                this.closePopup();
            }
        }
    });
});
