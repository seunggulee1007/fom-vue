$(document).ready(function() {
   getCurrencyCode();
   getExchangeList();
});
let selectedCurrency = '';
let exchangeList=[];
let originDataList = [];
let currencyCode = [];
function getCurrencyCode () {
    $("#selectedDate").val(getToday());
    $("#selectedDate").change(function(){
        getExchangeList ();
    });
    currencyCode = doAjax("/financialLink/getCurrencyCode","get");
    currencyCode.unshift({"title":"전체","code" : ""});
    html = '';
    $("#currencyCode").empty();
    for(let i=0; i< currencyCode.length; i++) {
        let currency = currencyCode[i];
        html += '<option value="'+ currency.code + '" class="dropdown-select__menu"><span class="dropdown__menu-txt">'+ currency.title + '</span></option>';
    }
    $("#currencyCode").append(html);
    $("#currencyCode").on("change",function(){
        selectedCurrency = $(this).val();
        filterExchange();
    });
}   // end getCurrencyCode

function getExchangeList () {
    let exchange = doAjax("/financialLink/exRate/" + $("#selectedDate").val().replace(/-/gi, ""));
    exchangeList = exchange.data.exRateList;
    originDataList = exchangeList;
    filterExchange();
}

function filterExchange () {
    if(!selectedCurrency) {        // 전체 선택이라면
        exchangeList = originDataList;
    } else {                     // 통화가 선택되었다면
        exchangeList = originDataList.filter((data) => {
            if(data.CurrName == selectedCurrency) {
                return data;
            }   // end if
        }); // end filter
    }   // end else
     makeExchange();
}   // end filterExchange

function makeExchange() {
    $("#exchangeList").empty();
    html = '';
    console.log(exchangeList);
    if(exchangeList.length > 0) {

        for(let i=0; i< exchangeList.length; i++) {
            let list = exchangeList[i];
            html += '<tr>                               ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--blue-dark">'+list.KorCurrName+'</span>    ';
            html += '    </td>                                           ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--align-right">'+list.TTM+'</span>           ';
            html += '    </td>                                           ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--align-right">'+list.TTB+'</span>           ';
            html += '    </td>                                           ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--align-right">'+list.TTS+'</span>           ';
            html += '    </td>                                           ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--align-right">'+list.CASHB+'</span>           ';
            html += '    </td>                                           ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--align-right">'+list.CASHS+'</span>           ';
            html += '    </td>                                           ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--align-right">'+list.USAExrate+'</span>    ';
            html += '    </td>                                           ';
            html += '    <td class="table__td">                                   ';
            html += '        <span class="table__txt table__txt--align-right">'+list.ChangeRate+'</span>   ';
            html += '    </td>                                           ';
            html += '</tr>                                            ';
        }
    }else {
        html += '<td class="table__td" colspan="8">';
        html += '   <span class="table__txt align-center">조회된 내용이 없습니다.</span>';
        html += '</td>';
    }
    $("#exchangeList").append(html);
}