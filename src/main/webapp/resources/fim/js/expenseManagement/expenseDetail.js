$(document).ready(function() {
    let expenseDetailApp = new Vue({                                                // 상세 등록 페이지
        el : ".popup-layer--expenses-detail"
            ,data : {
                expenseDetailFlag : false
                ,costInfoVO : {}
            }
    ,created() {
        EventBus.$on('openDetailPopup',this.openDetailPopup);
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
            EventBus.$emit('setExpenseDetail',this.costInfoVO);
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
});