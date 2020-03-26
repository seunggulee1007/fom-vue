$(document).ready(function(){
    Vue.use(MyPlugin);                      // 전역 vue 플러그인
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
                expenseHistoryList : [],
                searchKind : 'regUserNm',
                searchKeyword : '',
                pagingVO : {
                    
                }

                
            }
        }
        ,created () {
            this.searchHistory();
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
        },
        methods : {
            async searchHistory(pageNo) {
                if(!pageNo) {
                    pageNo = 1;
                }
                const param = {
                    searchStdDt : this.searchStdDt,
                    searchEndDt : this.searchEndDt,
                    searchKind : this.searchKind,
                    searchKeyword : this.searchKeyword,
                    pageNo : pageNo
                }
                let expenseHistory = await this.doAxios('/expenseManagement/approval/expenseHistoryList', 'get', param);
                this.expenseHistoryList = expenseHistory.data.expenseHistoryList;
                console.log(this.expenseHistoryList);
                this.pagingVO = expenseHistory.data.pagingVO;
                console.log(this.pagingVO);
            },
            clickDetailList (data) {
                if(data.flag == undefined){
                    Vue.set(data, 'flag', false);
                }
                data.flag = !data.flag;
            }
            ,clickModifyPage(tiCostSeq) {
                location.href="/expenseManagement/approval/expense?tiCostSeq="+ tiCostSeq;
            }
        }
        
    });
});
