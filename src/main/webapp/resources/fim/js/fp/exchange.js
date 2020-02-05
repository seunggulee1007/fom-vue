$(document).ready(function() {
    Vue.use(MyPlugin);
    let vue = new Vue({
        el : "#container"
        ,data : {
            exchangeList : []
        }
        ,mounted : function() {
            this.doAxios("/fp/exRate", "get", this.setData);
        }
        ,methods : {
            setData : function(res) {
                this.exchangeList = res.exRateList;
            }
        }
    });
});