$(document).ready(function(){
    Vue.use(MyPlugin);
    // 비용항목 중분류 더블 클릭시 뜨는 팝업
    let expenseAllApp = new Vue({
        el : ".popup-layer--expenses-all"
        ,data : {
            expenseVO : {}
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
                this.doAxios("/expenseManagement/approval/getExpense", "get", param, this.setData);
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
