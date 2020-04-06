$(document).ready(function(){

    $("#biz").keyup(function(event){
        if(event.keyCode == 13) {
            getInfo();
        }
    })

    $("#btn").click(function(){
        getInfo();
    })
});

function getInfo() {
    let bizNo = $("#bizNo");
    if(!bizNo.val()) {
        alert("사업자 번호를 입력해 주세요");
        bizNo.focus();
        return;
    }
    if(!checkBizNo(bizNo.val())) {
        alert("사업자 번호가 유효하지 않습니다. 사업자 번호를 확인해 주세요");
        bizNo.focus();
        return;
    }
    const param = {
        serverName : 'fim',
        bizNo : bizNo.val()
    }
    let res = doAjax("/financialLink/biz/bizInfo", "get", param);
    
    let trtCntn = res.data.trtCntn;
    let complBizNo = res.data.bizVO.bizNo;
    makeBizResult(trtCntn, complBizNo);
}

function makeBizResult(trtCntn, complBizNo) {
    $("#bizResult").empty();
    let html = '';
    if(trtCntn) {
        html += '<tr>';
        html += '    <td class="table__td"><span class="table__txt">'+bizNoFilter(complBizNo) +'</span></td>';
        html += '    <td class="table__td"><span class="table__txt">'+trtCntn+'</span></td>';
        html += '    <td class="table__td"><span class="table__txt">'+getToday()+'</span></td>';
        html += '</tr>';
    }
    $("#bizResult").append(html);

}
