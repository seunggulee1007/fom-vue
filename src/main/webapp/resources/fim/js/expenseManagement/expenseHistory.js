$(document).ready(function(){
    new Vue({
        el : "#app"
        ,data () {
            return {
                searchStdDt : getDate(new Date(), '-'),
                searchEndDt : getDate(new Date(), '-'),
                mode : 'single',
                masks : {
                    title : 'MMMM YYYY',
                    input : 'YYYY-MM-DD',
                },
                expenseHistoryList : []
                
            }
        }
        ,created () {
            
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
    });
});
