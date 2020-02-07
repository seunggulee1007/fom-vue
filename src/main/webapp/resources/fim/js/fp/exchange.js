$(document).ready(function() {
    Vue.use(MyPlugin);
    let vue = new Vue({
        el : "#container"
        , data : {
            exchangeList : []
            ,originDataList : []
            ,search : ""
        }
        , mounted () {
            this.doAxios("/fp/exRate", "get", this.setData);
        }
        , methods : {
            setData(res) {
                this.exchangeList = res.exRateList;
            }
            ,doSearch() {
                const param = {
                    search : this.search
                }
                
                this.doAxios("/fp/exRate/"+this.search, "get", this.setData);
            }
        }
    });
});