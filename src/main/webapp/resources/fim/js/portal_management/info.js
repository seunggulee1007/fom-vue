Vue.use(MyPlugin);
let vue = new Vue({
    el : "#container"
    , data : {
        searchStdDt : getDate(new Date(), '-')
        ,searchEndDt : getDate(new Date(), '-')                   // 사업자 번호
        ,mode: 'single'             // 날짜 모드(single 단일 multi : 범위)
        ,masks : {                  // 날짜 마스킹 처리
            title: 'MMMM YYYY',     // 날짜 타이틀
            input: 'YYYY-MM-DD',    // input에 보여질 포맷
        }
        ,searchKind : 'title'
        ,search : ''
        ,infoList : []
        ,paging : {}
        ,pagingVO : {}
    }
    , mounted () {
        this.getInfoList();
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
    , methods : {
        getInfoList (num) {
            if(!num) {
                num = 0;
            }
            $.blockUI({ message: '<h3><img src="/resources/fim/img/busy.gif" /> 조회 중입니다.</h3>' });
            axios({
                url : "/portalManagement/infoList"
                ,method : "get"
                ,params : {
                    searchStdDt : this.searchStdDt
                    ,searchEndDt : this.searchEndDt
                    ,searchKind : this.searchKind
                    ,search : encodeURIComponent(this.search)
                    ,page : num
                }
            }).then(res=>{
                console.log(res);
                this.paging = res.data.data.boardList;
                let paging = this.paging;
                this.infoList = this.paging.content;
                this.pagingVO  = this.getPagingVO(paging.number, paging.totalElements, paging.totalPages, 10);
                $.unblockUI();
            }).catch(err=>{
                alert(err);
                $.unblockUI();
            });
        }
        , goPage (num) {
            this.getInfoList(num-1);
        }
        , goPageGroup(flag) {
            let num = 0;
            if(flag === 'next') {
                num = (this.pagingVO.nowGroupCount + 1) * 10;
            }else if(flag === 'prev') {
                num = (this.pagingVO.nowGroupCount -1) * 10;
            }else if(flag === 'last') {
                num = this.pagingVO.totalPages -1;
            }
            this.getInfoList(num);
        }
    }
});
