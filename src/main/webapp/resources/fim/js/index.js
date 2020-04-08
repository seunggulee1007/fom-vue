$(document).ready(function() {
    let res = doAjax("/index/getInitData","get");
    let exchangeList = res.data.exRateList;
    let taxPlanList = res.data.taxPlanList;
    makeExchange(exchangeList);
    makeTaxPlan(taxPlanList);
    $("#taxDate").text(getToday()+'기준');
});

function makeExchange(exchangeList) {
    html = '';
    $("#exchage").empty();
    console.log(exchangeList);
    for(let i=0; i< exchangeList.length; i++) {
        let list = exchangeList[i];
        html += '<tr>';
        html += '    <td class="table__td">';
        html += '            <span class="table__txt table__txt--blue-dark">'+list.KorCurrName+' '+list.CurrName+'</span>';
        html += '    </td>';
        html += '    <td class="table__td table__title">';
        html += '        <span class="table__txt table__txt--align-right">'+list.TTM+'</span>';
        html += '    </td>';
        html += '</tr>';
    }
    $("#exchage").append(html);
}

function makeTaxPlan(taxPlanList) {
    html = '';
    $("#taxPlan").empty();
    for(let i=0; i< taxPlanList.length; i++) {
        let list = taxPlanList[i];
        html += '<tr>                    ';
        html += '    <td class="table__td">                        ';
        html += '    <span class="table__txt">'+list.taxDate+'</span>        ';
        html += '    </td>                                ';
        html += '    <td class="table__td table__title">                ';
        html += '    <span class="table__txt">'+list.taxPlan+'</span>        ';
        html += '    </td>                                ';
        html += '    <td class="table__td">                        ';
        html += '    <span class="table__txt table__txt--gray">'+list.note+'</span>    ';
        html += '    </td>                                ';
        html += '</tr>                                    ';
    }
    $("#taxPlan").append(html);
}