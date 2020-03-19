$(document).ready(function(){
    // sgma activity더블 클릭 혹은 엔터 입력시 뜨는 팝업
    let expenseSgmaApp = new Vue({
        el : ".popup-layer--expenses-sgma"
            , data : {
                expenseList : []
    ,expenseVO : {}
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
            this.doAxios("/expenseManagement/approval/getExpenseByActivityNm","get",param, this.setData);
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
            EventBus.$emit('setExpenseItemSgma', data);
            this.closePopup();
        }
    }
    });
});