$(document).ready(function(){
    Vue.use(MyPlugin);
    let app = new Vue({
        el : "#bunspInfoApp"
        , data : {
            trtCntn : ''                    // 결과 메시지
            ,busnpNo : ''                   // 사업자 번호
            ,smpcBmanEnglTrtCntn : ''
            ,smpcBmanTrtCntn : ''
            ,complBusnpNo : ''              // 완료 이후 사업자 번호(화면에 보여주는 용도)
        }
        ,methods : {
            getInfo (busnpNo) {
                if(!busnpNo) {
                    alert("사업자 번호를 입력해 주세요");
                    this.$refs.busnpNo.focus();
                    return;
                }
                if(!this.checkBusnpNo(busnpNo)) {
                    alert("사업자 번호가 유효하지 않습니다. 사업자 번호를 확인해 주세요");
                    this.$refs.busnpNo.focus();
                    return;
                }
                this.doAxios("/bm/busnp/busnpInfo/"+busnpNo,"get",this.setData);
            }
            ,setData (res) {
                this.trtCntn = res.trtCntn;
                this.complBusnpNo = this.busnpNo;
            }
        }
    });
    
});
