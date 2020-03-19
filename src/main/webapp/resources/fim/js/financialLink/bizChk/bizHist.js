$(document).ready(function(){
    Vue.use(MyPlugin);
    let app = new Vue({
        el : "#container"
        , data : {
            searchStdDt : getDate(new Date(), '-')
            ,searchEndDt : getDate(new Date(), '-')                   // 사업자 번호
            ,openFlag : true
            ,mode: 'single'             // 날짜 모드(single 단일 multi : 범위)
            ,masks : {                  // 날짜 마스킹 처리
                title: 'MMMM YYYY',     // 날짜 타이틀
                input: 'YYYY-MM-DD',    // input에 보여질 포맷
            }
            ,bizNo : ''
            ,bizInfoList : []
            ,userNm : ''
            ,deptNm : ''
        }
        ,mounted () {
            this.getBizInfoList();
        }
        ,watch : {
            searchStdDt () {
                if(typeof(this.searchStdDt) !== 'string') {
                    this.searchStdDt = getDate(this.searchStdDt,'-');
                }
            }
            ,searchEndDt () {
                if(typeof(this.searchEndDt) !== 'string') {
                    this.searchEndDt = getDate(this.searchEndDt,'-');
                }
            }
        }
        ,methods : {
            getBizInfoList () {
                $.blockUI({ message: '<h3><img src="/resources/fim/img/busy.gif" /> 조회 중입니다.</h3>' });
                axios({
                    method : "get"
                    ,url : "/financialLink/biz/bizInfo/bizInfoList"
                    ,params : {
                        searchStdDt : this.searchStdDt
                        ,searchEndDt : this.searchEndDt
                        ,bizNo : this.bizNo
                    }
                }).then(res =>{
                    console.log(res);
                    this.bizInfoList = res.data.data.bizInfoList;
                    $.unblockUI();
                }).catch(error =>{
                    console.log(error.response);
                    $.unblockUI();
                });
            }
        }
    });
    
});
