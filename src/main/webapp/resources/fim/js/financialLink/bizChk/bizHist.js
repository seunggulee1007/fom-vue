/* jshint esversion: 6 */
'use strict';
let bizInfoList = [];
let pagingVO = {};
$(document).ready(function(){
    $("#searchStdDt").val(getDate(new Date(), '-', -7));
    $("#searchEndDt").val(getDate(new Date(), '-'));
    getBizInfoList();

    $("#searchBtn").click(function(){
        getBizInfoList();
    });

    $(".doSearch").keyup(function(e){
        if(e.keyCode == 13)  {
            getBizInfoList();
        }
    })
});
function getBizInfoList(pageNo) {
    if(!pageNo) {
        pageNo = 1;
    }
    const param = {
        searchStdDt : $("#searchStdDt").val()
        ,searchEndDt : $("#searchEndDt").val()
        ,bizNo : $("#bizNo").val()
        ,pageNo : pageNo
        ,userNm : $("#userNm").val()
        ,deptNm : $("#deptNm").val()
    }
    let bizInfo = doAjax("/financialLink/biz/bizInfo/bizInfoList","get", param);
    bizInfoList = bizInfo.data.bizInfoList;
    pagingVO = bizInfo.data.pagingVO;
    if(pagingVO.totalCnt> 0) {
        makePagingVO('getBizInfoList','pagingVO');
    }
    makeBizInfoList();
}

function makeBizInfoList() {
    let html = '';
    $("#bizInfoList").empty();
    if(bizInfoList.length > 0) {
        for(let i=0; i<bizInfoList.length; i++) {
            let list = bizInfoList[i];
            html += '<tr>                    ';
            html += '    <td class="table__td">                        ';
            html += '        <span class="table__txt">'+list.crtDateStr+'</span>        ';
            html += '    </td>                                ';
            html += '    <td class="table__td">                        ';
            html += '        <span class="table__txt">'+list.userNm+'</span>        ';
            html += '    </td>                                ';
            html += '    <td class="table__td">                        ';
            html += '        <span class="table__txt">'+list.deptNm+'</span>        ';
            html += '    </td>                                ';
            html += '    <td class="table__td">                        ';
            html += '        <span class="table__txt">'+bizNoFilter(list.bizNo)+'</span>    ';
            html += '    </td>                                ';
            html += '    <td class="table__td">                        ';
            html += '        <span class="table__txt">'+list.resultMsg+'</span>        ';
            html += '    </td>                                ';
            html += '</tr>                                    ';
        }
    }else {
        html += '<tr>';
        html += '    <td class="table__td align-center" colspan="5"><span class="table__txt">조회된 내용이 없습니다.</span></td>';
        html += '</tr>';
    }
    $("#bizInfoList").append(html);
}