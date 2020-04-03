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
    ,budgetErpDeptSeq : ''
    ,budgetErpDeptNm : ''
};
var costInfoVO = {
    smKindName : ''
    ,costName : ''
    ,activityNm : ''
    ,costItemNm : ''
}
var expenseList = [{
    deptVO : deptVO
    ,costInfoVO : costInfoVO
    ,store : ''
    ,remark : ''
    ,curAmt : 0
    ,checkYn : false
    ,useDate : getDate(new Date(),'-')
}];
var uploadFiles = [];               // 파일 저장용 리스트 
var originFileSize = 0;             // 계산용 기존 파일 크기

$(document).ready(function(){
    makeExpenseList();
    // 추가 버튼 클릭
    $("#addExpense").click(function(){
        addExepnseList();
    });

    // 삭제 버튼 클릭
    $("#removeExpense").click(function(){
        // 배열의 체크된 부분들을 뒤에서 부터 지운다.
        for(var i= expenseList.length -1; i >= 0; i--) {
            if(expenseList[i].checkYn) {
                expenseList.splice(i, 1);
            }
        }
        makeExpenseList();
    });
    $("#doSave").click(function(){
        if(!confirm("저장하시겠습니까 ? ")){
            return;
        }
        if(!$("#title").val()){
            alert("제목을 입력해 주세요");
            $("#title").focus();
            return;
        }
        let cnt = 1;
        for(let i=0;i <expenseList.length; i++) {
            let expense = expenseList[i];
            console.log(expense);
            if(!expense.costInfoVO.smKindSeq) {
                alert(cnt + "번째 비용항목을 선택해 주세요");
                $("input[name='tiarCostAmtList["+(cnt-1) + "].costInfoVO.smKindName']").focus();
                return;
            }else if(!expense.store) {
                alert(cnt + "번째 가맹점을 입력해 주세요");
                $("input[name='tiarCostAmtList["+(cnt-1) + "].store']").focus();
                return;
            }else if(!expense.remark) {
                alert(cnt + "번째 적요를 입력해 주세요");
                $("input[name='tiarCostAmtList["+(cnt-1) + "].remark']").focus();
                return;
            }else if(!expense.curAmt) {
                alert(cnt + "번째 금액을 입력해 주세요");
                $("input[name='tiarCostAmtList["+(cnt-1) + "].curAmt']").focus();
                return;
            }
            cnt++;
        }
        if(!$("#memo").val()) {
            alert("의견입력을 해 주세요.");
            $("#memo").focus();
            return;
        }
        let formData = new FormData($("#frm")[0]); 

        if($("#file2").val()) {
            let cnt = 0;
            for(let i=0; i< uploadFiles.length; i++) {
                let file = uploadFiles[i];
                formData.append('file['+cnt +']', file );
            }
        }

        let ajaxConfig = {
            contentType : false
            ,processData : false
            ,enctype : "multipart/form-data"
        }

        let res = doAjax("/expenseManagement/approval/expense", "post", formData, ajaxConfig);

        console.log(res);

    });

    $("#file2").on("change",function(){
        let copyFiles = Array.prototype.slice.call(uploadFiles);
        let fileFormat = $("#fileFormat").text();
        let fileSize = originFileSize;
        for(let i=0; i< $(this)[0].files.length; i++) {
            let uploadFile = $(this)[0].files[i];
            uploadFiles.push(uploadFile);
            fileSize += uploadFile.size;
            if(fileSize / 1e+8 > 1) {
                alert("100MB 이상의 파일은 올리실 수 없습니다.");
                uploadFiles = copyFiles;
                return;
            }
        }
        originFileSize = fileSize;
        if(fileSize / 1e+6 > 1) {           // 메가 바이트를 넘는다면
            fileSize = Math.round(fileSize / 1e+6);
            fileFormat = 'MB';
        }else {                             // 여전히 바이트라면
            fileFormat = "Bytes";
        }
        $("#fileSize").text(setComma(fileSize));
        $("#fileFormat").text(fileFormat);
        makeFile();
    });
});

function makeFile() {
    makeFileHtml(uploadFiles);
}

function makeFileHtml(fileList) {
    $("#uploadFile").empty();
    html = '';
    
    for(let i=0; i< fileList.length; i++) {
        let file = fileList[i];
        html += '<div class="file-info">' + file.name + '</div>';
        html += '<button type="button" class="deleteBtn">삭제</button>';
        
    }
    $("#uploadFile").append(html);
    $(".deleteBtn").on("click",function(){
        let idx = $(".deleteBtn").index(this);
        uploadFiles.splice(idx, 1);
        makeFile();
    });
}
/**********************************************
 * @method : openUserPopup
 * @note 사용자 선택 팝업 호출
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function openUserPopup(idx) {
    $("#idx").val(idx);
    window.open("/common/userPopup", "_blank", "width=1200,height=662,toolbar=no,menubar=no,scrollbars=no,resizable=yes,location=no");
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
    this.expenseList[idx].costInfoVO = costInfoVO;
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
    window.open("/common/expenseItemAllPopup", "_blank", "width=1000,height=662,toolbar=no,menubar=no,scrollbars=no,resizable=yes,location=no");
}
/**********************************************
 * @method : choiceExpenseItemAll
 * @note 비용항목 콜백 함수
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function choiceExpenseItemAll(data, idx) {
    this.expenseList[idx].costInfoVO = data;
    this.expenseList[idx].remark = data.costName;
    makeExpenseList();
    if(checkDetailPopupOpenYn(data)) {
        openExpenseDetail(idx);
        $("#costSeq").val(this.expenseList[idx].costInfoVO.costSeq);
        $("#smKindSeq").val(this.expenseList[idx].costInfoVO.smKindSeq);
        $("#costInfoVO").val(this.expenseList[idx].costInfoVO);
        this.expenseList[idx].costInfoVO = costInfoVO;
        makeExpenseList();
        console.log($("#costInfoVO").val());
    };
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
    window.open("/common/expenseItemSgmaPopup", "_blank", "width=1000,height=662,toolbar=no,menubar=no,scrollbars=no,resizable=yes,location=no");
}

function openExpenseDetail(idx) {
    $("#idx").val(idx);
    window.open("/common/expenseDetailPopup", "_blank", "width=560,height=760,toolbar=no,menubar=no,scrollbars=no,resizable=yes,location=no");
    
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
    for(let i=0; i< this.expenseList.length; i++) {
        let expense = this.expenseList[i];
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
        html += '            <input type="text" class="input-field__input non_box" placeholder="선택해주세요." name="tiarCostAmtList['+cnt+'].costInfoVO.smKindName" value="'+ expense.costInfoVO.smKindName+'" ondblClick="openExpensItemAllPopup(\''+cnt + '\');">  ';
        html += '            <input type="hidden" value="'+ expense.costInfoVO.smKindSeq+'" name="tiarCostAmtList['+cnt+'].costInfoVO.smKindSeq">  ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <span class="table__txt">'+expense.costInfoVO.costName+'</span>                                                                             ';
        html += '        <input type="hidden" value="'+ expense.costInfoVO.costName+'" name="tiarCostAmtList['+cnt+'].costInfoVO.costName">  ';
        html += '        <input type="hidden" value="'+ expense.costInfoVO.costSeq+'" name="tiarCostAmtList['+cnt+'].costInfoVO.costSeq"> ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        if(expense.costInfoVO.smKindSeq) {
            html += '            <input type="text" class="input-field__input non_box" placeholder="선택해주세요."  name="tiarCostAmtList['+cnt+'].costInfoVO.activityNm" value="'+ expense.costInfoVO.activityNm+'" ondblClick="openExpensItemSgmaPopup(\''+cnt + '\');"> ';
            html += '            <input type="hidden" value="'+ expense.costInfoVO.activityCd+'" name="tiarCostAmtList['+cnt+'].costInfoVO.activityCd">  ';
        }else {
            html += '<span class="table__txt"></span>';
        }
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <span class="table__txt">'+expense.costInfoVO.costItemNm+'</span>                                                                             ';
        html += '        <input type="hidden" value="'+expense.costInfoVO.costItemNm+'" name="tiarCostAmtList['+cnt+'].costInfoVO.costItemNm">                                                                             ';
        html += '        <input type="hidden" value="'+expense.costInfoVO.costItemCd+'" name="tiarCostAmtList['+cnt+'].costInfoVO.costItemCd">                                                                             ';
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
        html += '                   <input type="text" class="input-field__input datePicker" readonly name="tiarCostAmtList['+cnt+'].userDate" value="'+expense.useDate+'">';
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
        html += '            <input type="text" class="input-field__input table__txt--align-right changeCurAmt" placeholder="입력해주세요." name="tiarCostAmtList['+cnt+'].curAmt" value="'+expense.curAmt+'">                                              ';
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
        ,onSelect : function (dateText, inst) {
            let idx = $(".datePicker").index(this);
            expenseList[idx].useDate = dateText;
        }
    });
}

function addExepnseList () {
    this.expenseList.push(
        {
            deptVO : deptVO
            ,costInfoVO : costInfoVO
            ,store : ''
            ,remark : ''
            ,curAmt : 0
            ,checkYn : false
            ,useDate : getDate(new Date(),'-')
        }
    )
    makeExpenseList();
}


function checkDetailPopupOpenYn(costInfoVO) {
    let smKindSeq = costInfoVO.smKindSeq;        // 중분류
    let costSeq = costInfoVO.costSeq;            // 소분류
    let arr = [
        {
            smKind : '4503006'      // 교통비
                ,child : [
                    10              // 야근 교통비
                    ,11             // 외근 교통비
                    ,86             // 유류대-직원
                    ]
        }
        ,{
            smKind : '4503010'
                ,child : [          // 접대비
                    42              // 해외-접대비
                    , 44            // 경조사-접대비
                    , 45            // 일반접대비
                    ]
        }
        ,{
            smKind : '4503008'  // 해외 출장
                ,child : [
                    24              // 식대-해외출장
                    ,26             // 교통비-해외출장
                    ,31             // 기타
                    ,81             // 커뮤니케이션
                    ,87             // 렌터카
                    ,88             // 항공료
                    ,89             // 로밍
                    ,90             // 호텔 
                    ,25             // 접대비
                    ]
        }
        ,{
            smKind : '4503009'  // 국내출장
                ,child : [
                    34              // 식대
                    ,36             // 교통비
                    ,82             // 커뮤니케이션
                    ,91             // 렌터카
                    ,92             // 호텔
                    ,93             // 항공료
                    ]
        }
    ];
    for(let i=0; i<arr.length; i++) {
        let smKind = arr[i].smKind;                         // 중분류
        if(smKind === smKindSeq ) {                         // 해당 중분류가 배열에도 있다면
            for(let j=0; j<arr[i].child.length; j++) {      // 해당 중분류의 소분류를 비교
                let cost = arr[i].child[j];
                if(cost === costSeq) {                      // 맞는게 있다면
                    return true;                            // 참을 리턴하고 종료
                }
            }
        }
    }
    return false;
}
