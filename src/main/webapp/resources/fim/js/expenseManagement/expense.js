var deptVO = {          // 세션에서 가져와야 할 부서 정보
    comCd : ''
    ,deptCd : ''
    ,useDeptCd : ''
    ,useUserId : ''
    ,useUserNm : ''
    ,useDeptNm : ''
    ,userId : ''
    ,userNm : ''
    ,deptCd : ''
    ,deptNm : ''
};
var expenseList = [{
    deptVO : this.deptVO
    ,costInfo : {
        smKindName : ''
        ,costName : ''
        ,activityNm : ''
        ,costItemNm : ''
    }
    ,store : ''
    ,remark : ''
    ,curAmt : 0
    ,checkYn : false
    ,useDate : getDate(new Date(),'-')
}];
$(document).ready(function(){
    makeExpenseList();
    $("#frm").submit(function(event){
        console.log($(this).serializeArray());
        // event.preventDefault();
    });

    // 추가 버튼 클릭
    $("#addExpense").click(function(){
        addExepnseList();
    });
    // 삭제 버튼 클릭
    $("#removeExpense").click(function(){
        for(let i= expenseList.length -1; i < 0; i--) {
            if(expenseList[i].checkYn == 'Y') {
                expenseList.splice(i, 1);
            }
        }
    });
    $("#doSave").click(function(){
        $.ajaxForm({

        })
    })

});
/**********************************************
 * @method : openUserPopup
 * @note 사용자 선택 팝업 호출
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function openUserPopup(idx) {
    $("#idx").val(idx);
    window.open("/common/userPopup", "_blank", "width=1200,height=662,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no");
}
/**********************************************
 * @method : choiceUser
 * @note 사용자 선택 콜백 함수 
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function choiceUser(data, idx) {
    console.log(data);
    this.expenseList[idx].deptVO = data;
    makeExpenseList();
}
/**********************************************
 * @method : openExpensItemAllPopup
 * @note 비용항목 팝업 호출
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function openExpensItemAllPopup(idx) {
    $("#idx").val(idx);
    $("#comCd").val(this.expenseList[idx].deptVO.comCd);
    $("#userNm").val(this.expenseList[idx].deptVO.userNm);
    window.open("/common/expenseItemAllPopup", "_blank", "width=1000,height=662,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no");
}
/**********************************************
 * @method : choiceExpenseItemAll
 * @note 비용항목 콜백 함수
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function choiceExpenseItemAll(data, idx) {
    this.expenseList[idx].costInfo = data;
    this.expenseList[idx].remark = data.costName;
    makeExpenseList();
}

/**********************************************
 * @method : openExpensItemSgmaPopup
 * @note 비용항목 smga 팝업 호출
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function openExpensItemSgmaPopup(idx) {
    $("#idx").val(idx);
    $("#comCd").val(this.expenseList[idx].deptVO.comCd);
    $("#userNm").val(this.expenseList[idx].deptVO.userNm);
    window.open("/common/expenseItemSgmaPopup", "_blank", "width=1000,height=662,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no");
}

/**********************************************
 * @method : makeExpenseList
 * @note 지출결의 상세 내역 그려주는 함수
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function makeExpenseList() {
    $("#expenseList").empty();
    let cnt = 0;
    html = '';
    for(let expense of this.expenseList) {
        html += '<tr>                                                                                                 ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="btn_group">                                                                                 ';
        html += '            <span class="btn-checkbox">                                                                             ';
        if(expense.checkYn) {
            html += '                <input type="checkbox" class="checkbox_member-leave" id="checkbox_member'+cnt + '" checked>                                                     ';
        }else {
            html += '                <input type="checkbox" class="checkbox_member-leave" id="checkbox_member'+cnt + '">                                                     ';
        }
        html += '                <label for="checkbox_member'+cnt + '" class="btn-checkbox__label"><span class="blind">선택</span></label>                                         ';
        html += '            </span>                                                                                         ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <span class="table__txt"></span>                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--btn">                                                                             ';
        html += '        <span class="table__txt">'+expense.deptVO.userNm+'<br>'+expense.deptVO.deptNm+'</span>                                                                     ';
        html +='         <input type="hidden" name="tiarCostAmtList['+cnt+'].deptVO.useUserNm" value="'+expense.deptVO.userNm+'">';     // 사용자 이름
        html +='         <input type="hidden" name="tiarCostAmtList['+cnt+'].deptVO.useUserId" value="'+expense.deptVO.userId+'">';     // 사용자 아이디
        html +='         <input type="hidden" name="tiarCostAmtList['+cnt+'].deptVO.useDeptCd" value="'+expense.deptVO.deptCd+'">';     // 부서코드 
        html +='         <input type="hidden" name="tiarCostAmtList['+cnt+'].deptVO.useDeptNm" value="'+expense.deptVO.deptNm+'">';     // 부서명
        html += '        <button type="button" class="btn btn-change-user" onclick="openUserPopup(\''+cnt+'\');">                                                         ';
        html += '            <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>                                                     ';
        html += '        </button>                                                                                         ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input" placeholder="선택해주세요." name="tiarCostAmtList['+cnt+'].costInfo.smKindName" value="'+ expense.costInfo.smKindName+'" ondblClick="openExpensItemAllPopup(\''+cnt + '\');">  ';
        html += '            <input type="hidden" value="'+ expense.costInfo.smKindSeq+'" name="tiarCostAmtList['+cnt+'].costInfo.smKindSeq">  ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <span class="table__txt">'+expense.costInfo.costName+'</span>                                                                             ';
        html += '        <input type="hidden" value="'+ expense.costInfo.costName+'" name="tiarCostAmtList['+cnt+'].costInfo.costName">  ';
        html += '        <input type="hidden" value="'+ expense.costInfo.costSeq+'" name="tiarCostAmtList['+cnt+'].costInfo.costSeq"> ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input" placeholder="선택해주세요."  name="tiarCostAmtList['+cnt+'].costInfo.activityNm" value="'+ expense.costInfo.activityNm+'" ondblClick="openExpensItemSgmaPopup(\''+cnt + '\');"> ';
        html += '            <input type="hidden" value="'+ expense.costInfo.activityCd+'" name="tiarCostAmtList['+cnt+'].costInfo.activityCd">  ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <span class="table__txt">'+expense.costInfo.costItemNm+'</span>                                                                             ';
        html += '        <input type="hidden" value="'+expense.costInfo.costItemNm+'" name="tiarCostAmtList['+cnt+'].costInfo.costItemNm">                                                                             ';
        html += '        <input type="hidden" value="'+expense.costInfo.costItemCd+'" name="tiarCostAmtList['+cnt+'].costInfo.costItemCd">                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="changeStore input-field__input" placeholder="입력해주세요." name="tiarCostAmtList['+cnt+'].store" value="'+expense.store+'">                                                          ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '       <div class="datepicker">';
        html += '           <div class="input-field">';
        html += '               <span class="input-field__inner">';
        html += '                   <input type="text" class="input-field__input datePicker" title="검색 기준 시작일 선택" name="tiarCostAmtList['+cnt+'].userDate" value="'+expense.useDate+'">';
        html += '               </span>';
        html += '           </div>';
        html += '       </div>';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input changeRemark" placeholder="입력해주세요." name="tiarCostAmtList['+cnt+'].remark" value="'+expense.remark+'">                                                          ';
        html += '        </div>                                                                                             ';
        html += '        <span class="table__txt table__txt-caption txt--blue"></span>                                                                 ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input table__txt--align-right changeCurAmt" placeholder="입력해주세요." name="tiarCostAmtList['+cnt+']curAmt" value="'+expense.curAmt+'">                                              ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '</tr>                                                                                                ';
        cnt++;
    }
    
    $("#expenseList").append(html);
    // 체크박스 조작 시 
    $(".checkbox_member-leave").on("change", function() {
        let idx = $(".checkbox_member-leave").index(this);
        expenseList[idx].checkYn = $(this).is(":checked");
    });
    // 가맹접 입력시 변경
    $(".input-field-table > .changeStore").on("change",function(){
        let idx = $(".changeStore").index(this);
        expenseList[idx].store = $(this).val(); 
    });
    // 적요 입력시 변경
    $(".input-field-table > .changeRemark").on("change",function(){
        let idx = $(".changeRemark").index(this);
        expenseList[idx].remark = $(this).val(); 
    });
    // 금액 입력시 변경
    $(".input-field-table > .changeCurAmt").on("change",function(){
        let idx = $(".changeCurAmt").index(this);
        expenseList[idx].curAmt = $(this).val();
        let totalAmt = 0;
        $(".changeCurAmt").each(function(idx, item){
            totalAmt += Number(this.value);
        });
        $("#totalAmt").val(totalAmt);
        $("#totalAmtDisplay").text(totalAmt);
    });
    // 달력 적용
    $(".datePicker").datepicker({
        dateFormat : 'yy-mm-dd'
        ,showOn : "both"
        ,buttonImage : "/resources/fim/img/calendar.jpg"
        ,onSelect(dateText, inst) {
            let idx = $(".datePicker").index(this);
            expenseList[idx].useDate = dateText;
        }
    });
}

function addExepnseList () {
    this.expenseList.push(
        {
            deptVO : this.deptVO
            ,costInfo : {
                smKindName : ''
                ,costName : ''
                ,activityNm : ''
                ,costItemNm : ''
            }
            ,store : ''
            ,remark : ''
            ,curAmt : 0
            ,checkYn : false
            ,useDate : getDate(new Date(),'-')
        }
    )
    makeExpenseList();
}
