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
            /**********************************************
             * @method : searchHistory
             * @note  지출결의 이력 조회
             * @author : es-seungglee
             ***********************************************/
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
                this.pagingVO = expenseHistory.data.pagingVO;
            },
            /**********************************************
             * @method : clickDetailList
             * @note  상세 보기
             * @author : es-seungglee
             ***********************************************/
            clickDetailList (data) {
                if(data.flag == undefined){         // flag는 데이터베이스에서 최초 조회될 때는 null 로 갖고 오기 떄문에 undefined로 체크한다.
                    Vue.set(data, 'flag', false);   // 최초 로딩 시 있던 값이 아닌 새로운 값이 추가된다면 새롭게 set을 해줘야 화면에 바인딩 된다.
                }
                data.flag = !data.flag;
            }
            /**********************************************
             * @method : clickModifyPage
             * @note    수정하기 페이지로 이동
             * @author : es-seungglee
             ***********************************************/
            ,clickModifyPage(tiCostSeq) {
                location.href="/expenseManagement/approval/expense?tiCostSeq="+ tiCostSeq;
            }
        }
        
    });
});
