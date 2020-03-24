$(document).ready(function(){
    Vue.use(MyPlugin);
    new Vue({
        el : "#app"
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
            async getBizInfoList () {
                const param = {
                    searchStdDt : this.searchStdDt
                    ,searchEndDt : this.searchEndDt
                    ,bizNo : this.bizNo
                }
                let bizInfo = await this.doAxios("/financialLink/biz/bizInfo/bizInfoList","get", param);
                this.bizInfoList = bizInfo.data.bizInfoList;
            }
            
        }
    });
    
});
