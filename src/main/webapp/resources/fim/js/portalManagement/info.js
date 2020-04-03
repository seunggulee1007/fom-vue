/* jshint esversion: 6 */
let columnLayout = [
    {dataField : "", headerText : "분류", width : "9.5%"}
    ,{
        dataField : "title", 
        headerText : "제목", 
        width : "61.9%",
        renderer : {
            type : "LinkRenderer",
            baseUrl : "javascript",
            jsCallback : function(rowIndex, columnIndex, value, item) {
                console.log(item);
                location.href="/portalManagement/infoView?boardId="+item.boardId;
            },
        }
    }
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
let gridData = [];
let gridId = "";
let auigridProps = {
    // 편집 가능 여부 (기본값 : false)
    editable : false,
    // 셀 선택 모드 (기본값 : singleCell)
    selectionMode : "multipleCells",
    
    usePaging : true,
    
    pageRowCount : 10,
                
}
$(document).ready(function(){
    $("#searchStdDt").val(getDate(new Date(), '-', -7));
    $("#searchEndDt").val(getDate(new Date(), '-'));
    getInfoList();
})

function setAuiGrid() {
    if(AUIGrid.isCreated("#grid_wrap")) {
        AUIGrid.destroy("#grid_wrap");
    }
    girdId = AUIGrid.create("#grid_wrap", columnLayout, auigridProps);
    AUIGrid.removeAjaxLoader(girdId);
    console.log(gridData);
    AUIGrid.setGridData(girdId, gridData);
}
function getInfoList() {
    const param = {
        searchStdDt : $("#searchStdDt").val()
        ,searchEndDt : $("#searchEndDt").val()
        ,searchKind : $("#searchKind").val()
        ,search : encodeURIComponent($("#search").val())
    }
    let infoList = doAjax( "/portalManagement/infoList", "get", param);
    gridData = infoList.data.boardList;
    setAuiGrid();
}
