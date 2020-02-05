$(document).ready(function() {
    document.getElementById('taxDate').innerHTML = getDate(new Date(),'-');
    Vue.use(MyPlugin);
    let vue = new Vue({
        el : "#container"
        ,data : {
            exchangeList : []
            ,taxPlanList : []
        }
        ,mounted : function() {
            this.doAxios("/index/getInitData", "get", this.setData);
        }
        ,methods : {
            setData : function(res) {
                this.exchangeList = res.exRateList;
                this.taxPlanList = res.taxPlanList;
            }
        }
    });
});