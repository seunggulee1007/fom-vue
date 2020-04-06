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
    ,budgetDeptNm : ''
    ,budgetDeptCd : ''
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
var tiarCostVO = {
    useDate : getDate(),
    title : '',
    memo : '',
    tiCostSerl : ''
};

$(document).ready(function(){
    tiarCostVO.tiCostSeq = $("#tiCostSeq").val();
    tiarCostVO.regDate = getToday();
    // TODO 세션에서 받아온 값 넣기.
    tiarCostVO.regUserId = '110204';
    tiarCostVO.regUserNm = '성준호';
    tiarCostVO.regEmpNo = 'H10004';
    tiarCostVO.regDeptCd = 'H0000000';
    tiarCostVO.regDeptNm = '스마일게이트 홀딩스';
    tiarCostVO.comCd = 'H0000000';
    tiarCostVO.title = '[지출결의서(현금)_'+tiarCostVO.regUserNm+'_'+tiarCostVO.regDate+']';
    if($("#tiCostSeq").val()) {
        const param = {
            tiCostSeq : $("#tiCostSeq").val()
        }
        let expense = doAjax("/expenseManagement/approval/expenseList", "get", param);
        tiarCostVO = expense.data.tiarCostVO;
        expenseList = expense.data.tiCostAmtVOList;
        if(expense.data.fileList.length > 0) {
            let fileList = expense.data.fileList;
            for(let i=0; i< fileList.length; i++) {
                let file = {};
                file.name = fileList[i].originalFileNm;
                file.size = fileList[i].fileSzie;
                file.type = fileList[i].contentType;
                file.fileId = fileList[i].fileId;
                uploadFiles.push(file);
            }
            makeFile();
        }
        makeTopHtml();
        makeExpenseList();
        tiarCostVO.budgetDeptCd = expenseList[0].deptVO.budgetDeptCd;
        tiarCostVO.budgetDeptNm = expenseList[0].deptVO.budgetDeptNm;
        tiarCostVO.budgetErpDeptSeq  = expenseList[0].deptVO.budgetErpDeptSeq;
        setDeptVO();
        makeTotalAmt();
    }else {
        getBudgetInfo();
        getBankInfo();
    }
    bottomHtml();
    makeButtonHtml();
    // 추가 버튼 클릭
    $("#addExpense").click(function(){
        addExepnseList();
    });

    // 삭제 버튼 클릭
    $("#removeExpense").click(function(){
        // 배열의 체크된 부분들을 뒤에서 부터 지운다.
        let cnt = 0;
        for(var i= expenseList.length -1; i >= 0; i--) {
            if(expenseList[i].checkYn) {
                expenseList.splice(i, 1);
                cnt ++;
            }
        }
        if(cnt == 0) {
            alert("삭제할 항목을 선택해 주세요 .");
        }else {
            makeExpenseList();
        }
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
        let formData = new FormData(/* $("#frm")[0] */); 
        let cnt = 1;
        if(expenseList.length == 0) {
            alert("세부항목을 1건 이상 입력해 주세요.");
            return;
        }
        for(let i=0;i <expenseList.length; i++) {
            let expense = expenseList[i];
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
            for(let key in expense) {
                let subExpense = expense[key];
                if(typeof(subExpense) == 'object') {
                    for(let subKey in subExpense) {
                        if(isNull(subExpense[subKey])) {
                            continue;
                        }
                        formData.append('tiarCostAmtList['+(cnt-1)+'].'+key+"."+subKey, subExpense[subKey]);
                    }
                }else {
                    if(isNull(expense[key])) {
                        continue;
                    }
                    formData.append('tiarCostAmtList['+(cnt-1)+'].'+key, expense[key]);
                }
            }
            cnt++;
        }
        if(!$("#memo").val()) {
            alert("의견입력을 해 주세요.");
            $("#memo").focus();
            return;
        }
        for(let key in tiarCostVO) {
            if(isNull(tiarCostVO[key])) {
                continue;
            }
            formData.append(key, tiarCostVO[key]);
        }
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

        let res = doAjax("/expenseManagement/approval/saveExpense", "post", formData, ajaxConfig);

        console.log(res);
        alert(res.resultMsg);

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

/**********************************************
 * @method : getBudgetInfo
 * @note 예산 부서 정보 세팅 
 * @since 2020.04.06
 * @author : es-seungglee
 ***********************************************/
function getBudgetInfo() {
    const param = {
        comCd : tiarCostVO.comCd
        ,deptCd : tiarCostVO.regDeptCd
    }
    let res = doAjax("/common/getBudgetDeptInfo", "get", param);
    console.log(res);
    if(res.result == 0) {
        tiarCostVO.budgetDeptCd = res.data.deptSeq;                 // 예산 부서 코드
        tiarCostVO.budgetDeptNm = res.data.deptNm;                  // 예산 부서 명
        tiarCostVO.budgetErpDeptSeq = res.data.deptSeq;             // 예산 부서 erp 코드
    }
    setDeptVO();
    makeExpenseList();
}

/**********************************************
 * @method : setDeptVO
 * @note 부서 정보 세팅 
 * @since 2020.04.06
 * @author : es-seungglee
 ***********************************************/
function setDeptVO () {
    deptVO.budgetDeptCd = tiarCostVO.budgetDeptCd;
    deptVO.budgetDeptNm = tiarCostVO.budgetDeptNm;
    deptVO.budgetErpDeptSeq = tiarCostVO.budgetErpDeptSeq;
    deptVO.deptCd = tiarCostVO.regDeptCd;
    deptVO.deptNm = tiarCostVO.regDeptNm;
    deptVO.useDeptCd = tiarCostVO.regDeptCd;
    deptVO.useDeptNm = tiarCostVO.regDeptNm;
    deptVO.useUserId = tiarCostVO.regUserId;
    deptVO.useUserNm = tiarCostVO.regUserNm;
}

/**********************************************
 * @method : makeFile
 * @note file 만들기
 * @since 2020.04.03
 * @author : es-seungglee
 ***********************************************/
function makeFile() {
    makeFileHtml(uploadFiles);
}

/**********************************************
 * @method : makeFileHtml
 * @note 파일 view 리턴
 * @since 2020.04.03
 * @author : es-seungglee
 ***********************************************/
function makeFileHtml(fileList) {
    $("#uploadFile").empty();
    html = '';
    
    for(let i=0; i< fileList.length; i++) {
        let file = fileList[i];
        console.log(file);
        html += '<div class="file-info">' + file.name;
        html += '<button type="button" class="btn btn--remove deleteBtn" value="'+file.fileId+'"><span class="sp icon-delete"><span class="blind">닫기</span></span></button>';
        html += '</div>';
    }
    $("#uploadFile").append(html);
    $(".deleteBtn").click(function(){
        if(!confirm("해당 파일을 삭제하시겠습니까?")) {
            return;
        }
        if($(this).val()){
            const param = {
                fileId : $(this).val()
            }
            console.log(param);
            doAjax("/expenseManagement/approval/deleteTiarCostFileByFileId","get", param);
        }
 
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
    expenseList[idx].deptVO = data;
    expenseList[idx].deptVO.useDeptCd = data.deptCd;
    expenseList[idx].deptVO.useDeptNm = data.deptNm;
    expenseList[idx].deptVO.useUserId = data.userId;
    expenseList[idx].deptVO.useUserNm = data.userNm;
    expenseList[idx].deptVO.useEmpNo = data.empNo;
    
    expenseList[idx].costInfoVO = costInfoVO;
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
/**********************************************
 * @method : openExpenseDetail
 * @note 비용항목 세부항목 팝업 호출
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
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
    console.log(expenseList);
    for(let i=0; i< expenseList.length; i++) {
        let expense = expenseList[i];
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
        html += '        <span class="table__txt">'+expense.deptVO.budgetDeptNm+'</span>                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--btn">                                                                             ';
        html += '        <span class="table__txt">'+expense.deptVO.useUserNm+'<br>'+expense.deptVO.useDeptNm+'</span>                                                                     ';
        html += '        <button type="button" class="btn btn-change-user" onclick="openUserPopup(\''+cnt+'\');">                                                         ';
        html += '            <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>                                                     ';
        html += '        </button>                                                                                         ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input" placeholder="선택해주세요." name="tiarCostAmtList['+cnt+'].costInfoVO.smKindName" value="'+ expense.costInfoVO.smKindName+'" ondblClick="openExpensItemAllPopup(\''+cnt + '\');">  ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <div class="input-field input-field-table">';
        html += '        <input type="text" class="input-field__input" disabled value="'+expense.costInfoVO.costName+'">                                                                             ';
        html += '        </div>';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input"';
        if(!expense.costInfoVO.smKindSeq) {
            html += ' disabled placeholder="선택해주세요."';
        }
        html += ' name="tiarCostAmtList['+cnt+'].costInfoVO.activityNm" value="'+ expense.costInfoVO.activityNm+'" ondblClick="openExpensItemSgmaPopup(\''+cnt + '\');"> ';
        
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td table__td--data">                                                                             ';
        html += '        <div class="input-field input-field-table">'
        html += '            <input type="text" class="input-field__input" disabled value="'+expense.costInfoVO.costItemNm+'">                                                                             ';
        html +='         </div>';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="changeStore input-field__input" placeholder="입력해주세요." name="tiarCostAmtList['+cnt+'].store" value="'+expense.store+'">                                                          ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '           <div class="input-field">';
        html += '                   <input type="text" class="input-field__input input-field__datepicker" readonly name="tiarCostAmtList['+cnt+'].userDate" value="'+expense.useDate+'">';
        html += '           </div>';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input changeRemark" placeholder="입력해주세요." name="tiarCostAmtList['+cnt+'].remark" value="'+expense.remark+'">                                                          ';
        html += '        </div>                                                                                             ';
        html += '        <span class="table__txt table__txt-caption txt--blue"></span>                                                                 ';
        html += '    </td>                                                                                             ';
        html += '    <td class="table__td">                                                                                     ';
        html += '        <div class="input-field input-field-table">                                                                         ';
        html += '            <input type="text" class="input-field__input table__txt--align-right changeCurAmt" placeholder="입력해주세요." name="tiarCostAmtList['+cnt+'].curAmt" value="'+setComma(expense.curAmt)+'">                                              ';
        html += '        </div>                                                                                             ';
        html += '    </td>                                                                                             ';
        html += '</tr>                                                                                                ';
        cnt++;
    }
    
    $("#expenseList").append(html);
    // 체크박스 조작 시 
    $(".checkbox_member-leave").change(function() {
        let idx = $(".checkbox_member-leave").index(this);
        expenseList[idx].checkYn = $(this).is(":checked");
    });
    // 가맹접 입력시 변경
    $(".input-field-table > .changeStore").change(function(){
        let idx = $(".changeStore").index(this);
        expenseList[idx].store = $(this).val(); 
    });
    // 적요 입력시 변경
    $(".input-field-table > .changeRemark").change(function(){
        let idx = $(".changeRemark").index(this);
        expenseList[idx].remark = $(this).val(); 
    });
    // 금액 입력시 변경
    $(".input-field-table > .changeCurAmt").change(function(){
        let value = $(this).val()
        if(typeof(value) == 'string' && value.indexOf(',') !=-1) {
            value = value.replace(/,/gi,'');
        }
        let idx = $(".changeCurAmt").index(this);
        $(this).val(setComma(value));
        expenseList[idx].curAmt = value;
        makeTotalAmt();
    });

    $(".input-field-table > .changeCurAmt").keyup(function(){
        if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
           this.value = this.value.replace(/[^0-9\.]/g, '');
        }
    })

    $(".input-field-table > .changeCurAmt").focusin(function(){
        if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
           this.value = this.value.replace(/[^0-9\.]/g, '');
        }
    })
    // 달력 적용
    $(".input-field__datepicker").datepicker({
        dateFormat : 'yy-mm-dd',
        showOn : "both",
        buttonImage : "/resources/fim/img/calendar.jpg",
        onSelect : function (dateText, inst) {
            let idx = $(".input-field__datepicker").index(this);
            expenseList[idx].useDate = dateText;
        },
        yearSuffix: '년',
        monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
        dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
        showMonthAfterYear: true,
        prevText: "전월",
        nextTexT: "차월",
        currentText: "오늘",
        closeText: "달력 닫기",
    });
}

/**********************************************
 * @method : addExepnseList
 * @note 상세내역 리스트 한 건 추가
 * @since 2020.04.01
 * @author : es-seungglee
 ***********************************************/
function addExepnseList () {
    expenseList.push(
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

/**********************************************
 * @method : checkDetailPopupOpenYn
 * @note 세부항목 팝업 띄울지 여부 리턴하는 함수
 * @since 2020.04.02
 * @author : es-seungglee
 ***********************************************/
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

/**********************************************
 * @method : getBankInfo
 * @note 은행 계좌 정보 가져오는 함수
 * @since 2020.04.06
 * @author : es-seungglee
 ***********************************************/
function getBankInfo() {
    const param = {
        deptCd : tiarCostVO.regDeptCd
        ,empNo : tiarCostVO.regEmpNo
    }
    let bankInfo = this.doAjax("/expenseManagement/approval/getBankInfo","get", param, this.setBankInfo);
    let bankInfoVO = bankInfo.data.bankInfoVO;
    tiarCostVO.acctNo = bankInfoVO.AccNo;
    tiarCostVO.bankNm = bankInfoVO.PayBankName;
    tiarCostVO.acctOwnerNm = bankInfoVO.OwnerName;
    makeTopHtml();
}

/**********************************************
 * @method : makeTopHtml
 * @note 기본정보 매핑 시키는 함수
 * @since 2020.04.06
 * @author : es-seungglee
 ***********************************************/
function makeTopHtml() {
    $("#topHtml").empty();
    let html = '';
    html += '<tr>                                                                    ';
    html += '    <th class="table__th">문서번호</th>                                                     ';
    html += '    <td class="table__td table__td--data"><span class="table__txt bg--white">';
    
    if(tiarCostVO.tiCostSerl) {
        html += tiarCostVO.tiCostSerl
    }else {
        html +='결재 완료 시, 발번됩니다.';
    }
    html += '</span></td>                    ';
    html += '    <th class="table__th">기안일자</th>                                                     ';
    html += '    <td class="table__td table__td--data"><span class="table__txt">'+tiarCostVO.regDate+ '</span></td>                            ';
    html += '    <th class="table__th">기안자</th>                                                     ';
    html += '    <td class="table__td table__td--data"><span class="table__txt">'+tiarCostVO.regUserNm+'</span></td>                            ';
    html += '</tr>                                                                    ';
    html += '<tr>                                                                    ';
    html += '    <th class="table__th">기안부서</th>                                                     ';
    html += '    <td colspan="5" class="table__td table__td--data"><span class="table__txt">'+tiarCostVO.regDeptNm+'</span></td>  ';
    html += '</tr>                                                                    ';
    html += '<tr>                                                                    ';
    html += '    <th class="table__th">제목</th>                                                    ';
    html += '    <td colspan="5" class="table__td">                                                    ';
    html += '    <div class="input-field input-field-table">                                            ';
    html += '        <input type="text" class="input-field__input" id="title" name="title" value="'+ tiarCostVO.title+ '">        ';
    html += '    </div>                                                                ';
    html += '    </td>                                                                ';
    html += '</tr>                                                                    ';
    html += '<tr>                                                                    ';
    html += '    <th class="table__th">계좌번호</th>                                                     ';
    html += '    <td class="table__td table__td--data"><span class="table__txt">'+tiarCostVO.acctNo+'</span></td>                            ';
    html += '    <th class="table__th">은행명</th>                                                     ';
    html += '    <td class="table__td table__td--data"><span class="table__txt">'+tiarCostVO.bankNm+'</span></td>                            ';
    html += '    <th class="table__th">예금주</th>                                                     ';
    html += '    <td class="table__td table__td--data"><span class="table__txt">'+tiarCostVO.acctOwnerNm+'</span></td>                            ';
    html += '</tr>                                                                ';
    $("#topHtml").append(html);
}

/**********************************************
 * @method : makeTotalAmt
 * @note 총 금액 계산
 * @since 2020.04.06
 * @author : es-seungglee
 ***********************************************/
function makeTotalAmt() {
    let totalAmt = 0;
    for(let i=0; i< expenseList.length; i++) {
        if(expenseList[i].curAmt) {
            totalAmt += Number(expenseList[i].curAmt);
        }
    }
    tiarCostVO.totalAmt = totalAmt;
    console.log(totalAmt);
    $("#totalAmt").text(totalAmt);
    $("#totalAmtDisplay").text(setComma(totalAmt));
}

function bottomHtml() {
    $("#bottomHtml").empty();
    let html = '';
    html += '<tr>                                                            ';
    html += '    <th class="table__th">의견입력</th>                                             ';
    html += '    <td class="table__td" colspan="5">                                            ';
    html += '        <div class="textarea">                                                ';
    html += '        <textarea id="memo" name="memo" cols="30" rows="10" style="height:80px">'+tiarCostVO.memo+'</textarea>                ';
    html += '        </div>                                                        ';
    html += '    </td>                                                                                ';
    html += '    </tr>                                                        ';
    html += '    <tr>                                                        ';
    html += '    <th class="table__th">전표처리여부</th>                                         ';
    html += '    <td class="table__td" colspan="5">                                            ';
    html += '        <div class="input-field input-field-table">                                    ';
    html += '        <input type="text" class="input-field__input">                                    ';
    html += '        </div>                                                        ';
    html += '    </td>                                                        ';
    html += '    </tr>                                                        ';
    html += '    <tr>                                                        ';
    html += '    <th class="table__th">파일 첨부</th>                                           ';
    html += '    <td class="table__td" colspan="5">                                            ';
    html += '        <div class="input-field input-field-table">                                    ';
    html += '        <button type="button" class="btn btn-file">                                    ';
    html += '            <label for="file2" class="btn__txt">파일선택</label>                                 ';
    html += '        </button>                                                    ';
    html += '        <input type="file" id="file2" class="input-field__file blind" multiple>                        ';
    html += '        <span class="input__dsc-txt"><span id="fileSize">0</span> <span id="fileFormat">Bytes</span> / 100 MB</span>      ';
    html += '        <div class="input-field__file-box" id="uploadFile">                                ';
    html += '        </div>                                                        ';
    html += '        </div>                                                        ';
    html += '    </td>                                                        ';
    html += '</tr>                                                            ';    
    $("#bottomHtml").append(html);
    $("#memo").on("change",function(){
        tiarCostVO.memo = $(this).val();
    })
    makeFile();
}

function deleteExpense() {
    let tiCostSeq = tiarCostVO.tiCostSeq;
    if(tiCostSeq) {
        let deleteExpense = doAjax("/expenseManagement/approval/deleteExpense", "get", {tiCostSeq : tiCostSeq});
        alert(deleteExpense.resultMsg);
    }
}

function makeButtonHtml() {
    $("#buttonHtml").empty();
    let html = '';
    if(tiarCostVO.tiCostSeq) {
        html += '<div class="component-box">';
        html += '    <button type="button" class="btn btn--large btn--bgtype" id="deleteBtn">';
        html += '    <span class="btn__txt">삭제</span>              ';
        html += '    </button>                              ';
        html += '</div>                                  ';
    }
    html += '<div class="component-box">                      ';
    html += '    <button type="button" class="btn btn--large" id="doSave">';
    html += '    <span class="btn__txt">저장</span>              ';
    html += '    </button>                              ';
    html += '</div>                                  ';
    html += '<div class="component-box">                      ';
    html += '    <button type="button" class="btn btn--large btn--orange">';
    html += '    <span class="btn__txt">결제상신</span>               ';
    html += '    </button>                              ';
    html += '</div>                                  ';
    $("#buttonHtml").append(html);
    $("#deleteBtn").click(function(){
        if(!confirm("삭제하시겠습니까?")){
            return;
        }
    })
}