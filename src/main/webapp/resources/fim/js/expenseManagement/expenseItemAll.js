var expenseList = [];

$(document).ready(function(){
    $("#smKindName").focus();
    $("#idx").val(opener.document.getElementById('idx').value);
    $("#smKindName").val(opener.document.getElementById('smKindName').value);
    $("#userNm").val(opener.document.getElementById('userNm').value);
    $("#comCd").val(opener.document.getElementById('comCd').value);
    getExpenseItemAll();
    $("#getExpenseBtn").click(function(){
        getExpenseItemAll();
    });

    $(".expenseInput").keyup(function (e){
        if(e.keyCode == 13) {
            getExpenseItemAll();
        }
    });
});

function getExpenseItemAll() {
    $.ajax({
        url : "/expenseManagement/approval/getExpense"
        ,type : "get"
        ,data : {
            smKindName : $("#smKindName").val()                      // 중분류명
            ,costName : $("#costName").val()                         // 소분류명
            ,activityNm : $("#activityNm").val()                     // 액티비티명
            ,costItemNm : $("#costItemNm").val()                     // 비용항목 명
            ,userNm : $("#userNm").val()                             // 사용자명(임원체크용)
            ,comCd : $("#comCd").val()                               // 회사코드(sgf체크 용)

        }
        ,async : false
        ,dataType : "json"
        ,success (res){
            console.log(res);
            expenseList = res.data.expenseList;
            makeExpense(res.data.expenseList);
        }
    })
}

function makeExpense(dataList) {
    $("#expense").empty();
    let html = '';
    let cnt = 0;
    for(let data of dataList) {
        html += '<tr ondblClick="choiceExpenseItemAll(\''+cnt+ '\');">                          ';
        html += '    <td class="table__td">              ';
        html += '        <span class="table__txt">'+ data.smKindName+'</span>       ';
        html += '    </td>                      ';
        html += '    <td class="table__td">              ';
        html += '        <span class="table__txt">'+data.costName+'</span>       ';
        html += '    </td>                      ';
        html += '    <td class="table__td">              ';
        html += '        <span class="table__txt">'+data.activityNm+'</span>';
        html += '    </td>                      ';
        html += '    <td class="table__td">              ';
        html += '        <span class="table__txt">'+data.costItemNm+'</span>       ';
        html += '    </td>                      ';
        html += '</tr>                        ';                
        cnt++;
    }
    $("#expense").append(html);
}


function choiceExpenseItemAll(idx) {
    let expense = expenseList[idx];
    console.log(expense);
    let rtnIdx = $("#idx").val();
    opener.choiceExpenseItemAll(expense, rtnIdx);
    window.close();
}