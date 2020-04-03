$(document).ready(function(){
    $("#searchStdDt").val(getDate(new Date(), '-', -7));
    $("#searchEndDt").val(getDate(new Date(), '-'));
    searchHistory();
});
var expenseHistoryList = [];
var pagingVO = {};
function searchHistory(pageNo) {
    if(!pageNo) {
        pageNo = 1;
    }
    const param = {
        searchStdDt : $("#searchStdDt").val()
        ,searchEndDt : $("#searchEndDt").val()
        ,searchKind : $("#searchKind").val()
        ,searchKeyword : $("#searchKeyword").val()
        ,pageNo : pageNo
    }

    let res = doAjax("/expenseManagement/approval/expenseHistoryList","get",param);
    expenseHistoryList = res.data.expenseHistoryList;
    makeHistoryList();
    pagingVO = res.data.pagingVO;
    if(pagingVO.totalCnt> 0) {
        makePagingVO('searchHistory','pagingVO');
    }
}

function clickModifyPage(tiCostSeq) {
    location.href="/expenseManagement/approval/expense?tiCostSeq="+ tiCostSeq;
}

function makeHistoryList() {
    let html = '';
    $("#expenseHistory").empty();
    if(expenseHistoryList) {
        for(let list of expenseHistoryList) {
            html += '    <tr class="expandDetail">                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt">'+list.grstatus+'</span>                                                      ';
            html += '       </td>                                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt">'+list.grEndStatus+'</span>                                                  ';
            html += '       </td>                                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt">'+list.tiCostSeq+'</span>                                                      ';
            html += '       </td>                                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt"><a style="text-decoration:underline; cursor:pointer;" onclick="clickModifyPage(\''+list.tiCostSeq+'\')">'+list.title+'</a></span> ';
            html += '       </td>                                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt">'+list.regDate+'</span>                                                      ';
            html += '       </td>                                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt">'+list.regUserNm+'</span>                                                      ';
            html += '       </td>                                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt">'+list.regDeptNm+'</span>                                                      ';
            html += '       </td>                                                                              ';
            html += '       <td class="table__td">                                                                      ';
            html += '           <span class="table__txt">'+setComma(list.totalAmt)+'원</span>                                              ';
            html += '       </td>                                                                                                      ';
            html += '    </tr>                                                                              ';
            if(list.tiarCostAmtList.length > 0) {
                html += '    <tr class="table__row-sub--detail">                                          ';
                html += '       <td class="table__td table__td--table" colspan="8">                                                      ';
                html += '           <div class="table">                                                                      ';
                html += '               <table>                                                                          ';
                html += '                   <caption><span class="blind">상세 내역</span></caption>                                               ';
                html += '                   <colgroup>                                                                      ';
                html += '                       <col width="8%">                                                              ';
                html += '                       <col>                                                                      ';
                html += '                       <col>                                                                      ';
                html += '                       <col width="16%">                                                              ';
                html += '                       <col>                                                                      ';
                html += '                       <col>                                                                      ';
                html += '                       <col>                                                                      ';
                html += '                       <col>                                                                      ';
                html += '                       <col width="10%">                                                              ';
                html += '                   </colgroup>                                                                      ';
                html += '                   <thead>                                                                      ';
                html += '                   <tr>                                                                      ';
                html += '                       <th class="table__th align-center" rowspan="2" scope="col">사용일자</th>                                   ';
                html += '                       <th class="table__th align-center" rowspan="2" scope="col">예산부서</th>                                   ';
                html += '                       <th class="table__th align-center" rowspan="2" scope="col">사용자<br>(귀속부서)</th>                              ';
                html += '                       <th class="table__th align-center" rowspan="2" scope="col">적요</th>                                      ';
                html += '                       <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>                                   ';
                html += '                       <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>                                  ';
                html += '                       <th class="table__th align-center"rowspan="2" scope="col">금액<br>(VAT포함)</th>                               ';
                html += '                   </tr>                                                                      ';
                html += '                   <tr>                                                                      ';
                html += '                       <th class="table__th align-center" scope="col">중분류</th>                                           ';
                html += '                       <th class="table__th align-center" scope="col">소분류</th>                                           ';
                html += '                       <th class="table__th align-center" scope="col">비용항목</th>                                           ';
                html += '                       <th class="table__th align-center" scope="col">Activity</th>                                      ';
                html += '                   </tr>                                                                      ';
                html += '                   </thead>                                                                      ';
                html += '                   <tbody>                                                                      ';
                for(let history of list.tiarCostAmtList) {
                    html += '                       <tr>                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+dateFilter(history.useDate) +'</span>                                  ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+history.deptVO.budgetDeptNm+'</span>                                      ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+history.deptVO.useUserNm+'('+history.deptVO.useDeptNm+')</span>                      ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+history.remark+'</span>                                          ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+history.costInfoVO.smKindName+'</span>                                  ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+history.costInfoVO.costName+'</span>                                      ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+history.costInfoVO.costItemNm+'</span>                                  ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt">'+history.costInfoVO.activityNm+'</span>                                  ';
                    html += '                           </td>                                                                  ';
                    html += '                           <td class="table__td">                                                          ';
                    html += '                               <span class="table__txt table__txt--align-right">'+setComma(history.curAmt)+'원</span>                           ';
                    html += '                           </td>                                                                  ';
                    html += '                       </tr>                                                                      ';
                }
                html += '                   </tbody>                                                                      ';
                html += '               </table>                                                                      ';
                html += '           </div>                                                                          ';
                html += '       </td>                                                                                                 ';
                html += '   </tr>                                                                               ';
            }
        }
    }else {
        html += '<tr>';
        html += '<td class="table__td align-center" colspan="8"><span class="table__txt">조회된 내용이 없습니다.</span></td>';
        html += "</tr>";
    }

    $("#expenseHistory").append(html);

    $(".expandDetail").on("click",function(){
        $(this).siblings('.table__row-sub--detail').toggleClass('table__row--expanded');
    });
}

