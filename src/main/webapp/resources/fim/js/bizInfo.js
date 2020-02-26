$(document).ready(function(){
    Vue.use(MyPlugin);
    let app = new Vue({
        el : "#container"
        , data : {
            trtCntn : ''                    // 결과 메시지
            ,bizNo : ''                   // 사업자 번호
            ,smpcBmanEnglTrtCntn : ''
            ,smpcBmanTrtCntn : ''
            ,complBizNo : ''              // 완료 이후 사업자 번호(화면에 보여주는 용도)
        }
        ,methods : {
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
                this.doAxios("/bm/biz/bizInfo/fim/"+bizNo,"get",this.setData);
            }
            ,setData (res) {
                console.log(res);
                this.trtCntn = res.trtCntn;
                this.complBizNo = this.bizNo;
            }
        }
    });
    
});
