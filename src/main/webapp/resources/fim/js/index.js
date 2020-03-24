$(document).ready(function() {
    Vue.use(MyPlugin);
    new Vue({
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
            this.getInitData();
        }
        ,methods : {
            async getInitData () {
                let initData = await this.doAxios("/index/getInitData","get"); 
                console.log(initData);
                this.exchangeList = initData.data.exRateList;
                this.taxPlanList = initData.data.taxPlanList;
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