$(document).ready(function() {
    Vue.use(MyPlugin);
    let vue = new Vue({
        el : "#container"
        ,data : {
            exchangeList : []
            ,taxPlanList : []
            ,noti : true
            ,exchange : false
            ,taxSchedule : false
            ,taxDate : getDate(new Date(), '-')
        }
        ,mounted : function() {
            this.doAxios("/index/getInitData", "get",null, this.setData);
        }
        ,methods : {
            setData : function(res) {
                this.exchangeList = res.exRateList;
                this.taxPlanList = res.taxPlanList;
            }
            ,selectTab (index) {
                if(index == 1) {
                    this.noti = true;
                    this.exchange = false;
                    this.taxSchedule = false;
                }else if(index == 2) {
                    this.noti = false;
                    this.exchange = true;
                    this.taxSchedule = false;
                }else {
                    this.noti = false;
                    this.exchange = false;
                    this.taxSchedule = true;
                }
            }
        }
    });
});