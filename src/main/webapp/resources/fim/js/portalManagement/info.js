/* jshint esversion: 6 */
'use strict';
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
                    srcFunction : function(rowIndex, columnIndex, value, item) {
                        // return "/resources/img/sprites/template_pc/icon-attachment.png";
                        switch(value) {
                        case "20" : 
                            return "/resources/img/sprites/template_pc/icon-attachment.png";
                        case "Blue":
                            return "./assets/blue_circle.png";
                        case "Gray":
                            return "./assets/gray_circle.png";
                        case "Green":
                            return "./assets/green_circle.png";
                        case "Orange":
                            return "./assets/orange2_circle.png";
                        case "Pink":
                            return "./assets/pink_circle.png";
                        case "Violet":
                            return "./assets/violet_circle.png";
                        default:
                            return null; // null 반환하면 이미지 표시 안함.
                        }
                    }
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
