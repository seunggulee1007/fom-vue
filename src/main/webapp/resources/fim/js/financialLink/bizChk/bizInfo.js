$(document).ready(function(){
    Vue.use(MyPlugin);
    let app = new Vue({
        el : "#app"
        , data : {
            trtCntn : ''                    // 결과 메시지
            ,bizNo : ''                   // 사업자 번호
            ,smpcBmanEnglTrtCntn : ''
            ,smpcBmanTrtCntn : ''
            ,complBizNo : ''              // 완료 이후 사업자 번호(화면에 보여주는 용도)
            ,openFlag : true
        }
        ,methods : {
            /**********************************************
             * @method : getInfo
             * @note 사업자 휴폐업 조회
             * @author : es-seungglee
             ***********************************************/
            getInfo (bizNo) {
                if(!bizNo) {
                    alert("사업자 번호를 입력해 주세요");
                    this.$refs.bizNo.focus();
                    return;
                }
                if(!this.checkBizNo(bizNo)) {
                    alert("사업자 번호가 유효하지 않습니다. 사업자 번호를 확인해 주세요");
                    this.$refs.bizNo.focus();
                    return;
                }
                this.doAxios("/financialLink/biz/bizInfo/fim/"+bizNo, "get",null , this.setData);
            }
            /**********************************************
             * @method : setData
             * @note 서버 통신 이후 세팅용 콜백 함수
             * @author : es-seungglee
             ***********************************************/
            , setData(data) {
                this.trtCntn = data.trtCntn;
                this.complBizNo = data.bizVO.bizNo;
            }
        }
    });
    
});
