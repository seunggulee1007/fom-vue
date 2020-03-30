/* jshint esversion: 6 */
'use strict';
$(document).ready(function(){
    Vue.use(MyPlugin);
    new Vue({
        el : "#container"
        , data : {
            searchStdDt : getDate(new Date(), '-')
            ,searchEndDt : getDate(new Date(), '-')                   // 사업자 번호
            ,mode: 'single'             // 날짜 모드(single 단일 multi : 범위)
            , masks : {                     // 날짜 마스킹 처리
                title: 'YYYY.MM',         // 날짜 타이틀
                input: 'YYYY-MM-DD',        // input에 보여질 포맷
            }
            ,searchKind : 'title'
            ,search : ''
            ,infoList : []
            ,paging : {}
            ,pagingVO : {}
            ,columnLayout : [
                {dataField : "", headerText : "분류", width : "9.5%"}
                ,{dataField : "title", headerText : "제목", width : "61.9%"}
                ,{dataField : "userNm", headerText : "작성자", width : "10%"}
                ,{dataField : "crtDate", headerText : "작성일", width : "7.2%"}
                ,{dataField : "hit", headerText : "조회수", width : "5.4%"}
                ,{
                    dataField : "iconSrc", 
                    headerText : "첨부", 
                    width : "6%",
                    renderer : {
                        type : "ImageRenderer",
                        imgHeight : 24,
                        altField : "iconSrc",
                    }
                }
            ]
            ,gridData : []
            ,gridId: ""
            , auigridProps : {
                // 편집 가능 여부 (기본값 : false)
                editable : false,
                // 셀 선택 모드 (기본값 : singleCell)
                selectionMode : "multipleCells",
                
                usePaging : true,
                
                pageRowCount : 10,
                    
            }
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
            ,gridData () {
                if(AUIGrid.isCreated("#grid_wrap")) {
                    AUIGrid.destroy("#grid_wrap");
                }
                this.girdId = AUIGrid.create("#grid_wrap", this.columnLayout, this.auigridProps);
                AUIGrid.removeAjaxLoader(this.girdId);
                console.log(this.gridData);
                AUIGrid.setGridData(this.girdId, this.gridData);
            }
        }
        , methods : {
            /**********************************************
             * @method : getInfoList
             * @note 공지사항 리스트 조회
             * @author : es-seungglee
             ***********************************************/
            async getInfoList (num) {
                if(!num) {
                    num = 0;
                }
                const param = {
                    searchStdDt : this.searchStdDt
                    ,searchEndDt : this.searchEndDt
                    ,searchKind : this.searchKind
                    ,search : encodeURIComponent(this.search)
                    ,page : num
                }
                let infoList = await this.doAxios( "/portalManagement/infoList", "get", param);
                this.gridData = infoList.data.boardList;
            }
        }
    });
})
