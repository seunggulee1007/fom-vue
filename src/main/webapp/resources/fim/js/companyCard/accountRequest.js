
/**
 *
 * @returns
 */

/** 정산내역 테이블에서 클릭한 row index */
var rowIdx;

$(document).ready(function(){



//	$("#useCardList tbody tr td").find("input[name=inSmKindNm]").click(function() {
//
//		var column_num = parseInt( $(this).index() ) + 1;
//		var row_num = parseInt( $(this).parent().parent().parent().index() );
//
//		console.log("Row_num =" + row_num + "  ,  Rolumn_num ="+ column_num);
//
//	});


	/**
	 * 조직도 팝업.
	 */
	$("#btnCardUser").click((evt) => {
		EventBus.$emit('openDeptPopup');
	});

	/**
	 * 정산내역 리스트 조직도 팝업.
	 */
	$("#useCardListClone tbody tr td").find("button[name=btnAccountUser]").on("click",function(evt) {
		rowIdx = parseInt( $(this).parent().parent().index() );

		console.log("btnAccountUser " + rowIdx);
		EventBus.$emit('openDeptPopup');
	});

	/**
	 * 비용항목 팝업.
	 */
	$("#useCardListClone tbody tr").find("td[name=tdSmKindNm]").find("input").dblclick(function(evt){
        rowIdx = parseInt( $(this).parent().parent().parent().index() );
        let userNm = $(this).parent().parent().parent().find("td[name=tdUseUser]").find("input[name=useUserNm]").val();
        let comCd = $(this).parent().parent().parent().find("td[name=tdComNm]").find("input[name=comCd]").val();
        console.log("userNm "+userNm);
        console.log("rowIdx "+rowIdx);
        console.log("comCd "+comCd);

        EventBus.$emit('openExpenseAllPopup', $(this).val(), userNm, comCd);
	});


	/**
	 * SGMA 팝업.
	 */
	$("#useCardListClone tbody tr td").find("input[name=inRemValSeq]").dblclick(function(evt){
        rowIdx = parseInt( $(this).parent().parent().parent().index() );

        let userNm = $(this).parent().parent().parent().find("td[name=tdUseUser]").find("input[name=useUserNm]").val();
        let comCd = $(this).parent().parent().parent().find("td[name=tdComNm]").find("input[name=comCd]").val();
        let activityNm = $(this).parent().parent().parent().find("td[name=tdActivityNm]").find("span").text();
        console.log("userNm "+userNm);
        console.log("rowIdx "+rowIdx);
        console.log("comCd "+comCd);
        console.log("activityNm "+activityNm);

		EventBus.$emit('openExpenseSgmaPopup', activityNm, userNm, comCd);
	});

	/**
	 * 법인카드 변경 이벤트.
	 */
	$("#companyCardList").change((evt) => {

		let selVal = $(this).val();
		let divNm = selVal.split("|")[1];
		$("#cardDiv").text(divNm);

	});

	/**
	 * 카드 결제내역 조회.
	 */
	$("#btnGetUseList").click(function(){

		$.ajax({

		});
	});

	$("#yyyymm").monthpicker({
		monthNames: ['1월(JAN)', '2월(FEB)', '3월(MAR)', '4월(APR)', '5월(MAY)', '6월(JUN)',
			'7월(JUL)', '8월(AUG)', '9월(SEP)', '10월(OCT)', '11월(NOV)', '12월(DEC)'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
//				showOn: "button",
//                buttonImage: "../../Images/Goods/calendar.jpg",
//                buttonImageOnly: true,
			changeYear: false,
			yearRange: 'c-2:c+2',
			dateFormat: 'yy-mm'
	});

	/**
	 * 파일추가.
	 * this를 사용할땐 가급적 Lamda식을 자제 하는게 좋다.
	 */
	$("#attFile").change(function(evt){

		updateSize(this)

	});


	$("#btnGetUseList").click(function(){
		let td = $("#useCardListClone tbody tr:eq(0)").clone(true);
		$("#useCardList tbody").append(td);
	});

	getCompanyCardList();

});

function openDeptPopup(idx){
    rowIdx = parseInt( $(this).parent().parent().parent().index() );
    let userNm = $(this).parent().parent().parent().find("td[name=tdUseUser]").find("input[name=useUserNm]").val();
    let comCd = $(this).parent().parent().parent().find("td[name=tdComNm]").find("input[name=comCd]").val();
    console.log("userNm "+userNm);
    console.log("rowIdx "+rowIdx);
    console.log("comCd "+comCd);

    EventBus.$emit('openExpenseAllPopup', $(this).val(), userNm, comCd);
}


var fileList = new Array();
function updateSize(inFile) {

	let nBytes = 0;

	let oFiles = inFile.files;
	let nFiles = oFiles.length;


	for(let i = 0; i < nFiles; i++){

		console.log("inFile : " + oFiles[i]);
		fileList.push(oFiles[i]);
	}
	console.log("fileList : " + fileList);

	console.log("oFiles.length : " + nFiles);

	calcFileSize();

}

/**
 * 파일 리스트에서 선택한 파일을 삭제 하고 리스트를 다시 그린다.
 * @param idx
 * @returns
 */
function onDeleteFile(idx){

	let fileName = fileList[idx].name;

	if(confirm(fileName+"\n파일을 삭제 하시겠습니까?")){
		fileList.splice(idx, 1);
		calcFileSize();
	}
}

/**
 * 파일 용량제한 100메가
 */
var allowFileSize = 100000000 //-- 100MB

/**
 * 파일을 추가 하거나 삭제 할때 파일 사이즈를 다시 계산하고, 파일리스트를 다시 그린다.
 * @returns
 */
function calcFileSize(){
	let nBytes = 0;
	$("#fileListBox").html("");

	console.log("file len : " + fileList.length);
	for(let i = 0; i < fileList.length; i++){
		nBytes += fileList[i].size;

		//-- 허용된 용량 초과시 파일 리스트 객체에서 마지막 추가한 파일을 삭제 하고, 해당 파일의 용량도 마이너스 한다.
		if(nBytes > allowFileSize){
			alert("전체 파일크기가 100Mb를 넘을수 없습니다.");
			nBytes -= fileList[i][0].size
			fileList.splice(i, 1);
			break;
		}

		console.log("file : " + fileList[i]);
		console.log("file : " + fileList[i].name);
		console.log("nBytes : " + nBytes);
		$("#fileListBox").append("<div class='file-info'>"+fileList[i].name+"<a href='javascript:onDeleteFile("+i+")'>&nbsp;&nbsp;[삭제]</a></div>");
	}

	if(nBytes > 0){
		let sOutput = getfileSize(nBytes);
		$("#fileSize").text(sOutput + " / 100 MB");
	}
	else{
		$("#fileSize").text("0 byte / 100 MB");
	}
};

function getfileSize(x) {
	var s = ['bytes', 'kB', 'MB', 'GB', 'TB', 'PB'];
	var e = Math.floor(Math.log(x) / Math.log(1000));
	return (x / Math.pow(1000, e)).toFixed(2) + " " + s[e];
};

async function getCompanyCardList(){

//	var data = new Object();
//	data.put("companySeq", "2");
//	data.put("empSeq", "616");

	await
	$.ajax({
	    url:"./getCompanyCardList",
	    type:"POST",
	    data: "companySeq=2&empSeq=140",
	    success: function(resultData) {

	    	console.log(resultData)
	    	if(resultData.result == 0){

	    		let cardList = resultData.data.companyCardList

	    		cardList.forEach(function(cardItem){
	    			$('#cardCd').append("<option value='"+cardItem.cardNo+"|"+cardItem.cardDivName+"'>"+cardItem.cardName+"</option>");
	    		});

	    		$("#cardDiv").text(cardList[0].cardDivName);

	    	}
	    }
	});
}

/**
 * 조직도 팝업 Callback Function
 * @param data
 * @returns
 */
function returnUserDept(data) {
    console.log(data);
    console.log("rowIdx " + rowIdx);

    let rowTR = $("#useCardList tbody tr:eq("+rowIdx+")");
    rowTR.find("td[name=tdUseUser]").find("input[name=useUserId]").val(data.userId);
    rowTR.find("td[name=tdUseUser]").find("input[name=useEmpNo]").val(data.empNo);
    rowTR.find("td[name=tdUseUser]").find("input[name=useUserNm]").val(data.userNm);
    rowTR.find("td[name=tdUseUser]").find("input[name=budgetDeptCd]").val(data.deptCd);
    rowTR.find("td[name=tdUseUser]").find("input[name=budgetDeptNm]").val(data.deptNm);
    rowTR.find("td[name=tdUseUser]").find("span[name=spUseName]").text(data.userNm);
    rowTR.find("td[name=tdUseUser]").find("span[name=spDeptNm]").text(data.deptNm);

    rowTR.find("td[name=tdComNm]").find("input[name=comCd]").val(data.comCd);
    rowTR.find("td[name=tdComNm]").find("input[name=comNm]").val(data.comNm);
    rowTR.find("td[name=tdComNm]").find("span").text(data.comNm);
}

/**
 * 비용항목 팝업 Callback Function
 * @param data
 * @returns
 */
function returnCostItemAct(data) {
    console.log(data);
    console.log("rowIdx " + rowIdx);

    let rowTR = $("#useCardList tbody tr:eq("+rowIdx+")");

    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.erpSmKindSeq']").val(data.smKindSeq);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.erpSmKindNm']").val(data.smKindName);

    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.erpCostSeq']").val(data.costSeq);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.erpCostNm']").val(data.costName);

    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.costItemCd']").val(data.costItemCd);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.costItemNm']").val(data.costItemNm);

    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.activityCd']").val(data.activityCd);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.activityNm']").val(data.activityNm);

    rowTR.find("td[name=tdSmKindNm]").find("input").val(data.smKindName);
    rowTR.find("td[name=tdErpCostNm]").find("span").text(data.costName);

    rowTR.find("td[name=tdCostItemNm]").find("input").val(data.costItemNm);
    rowTR.find("td[name=tdActivityNm]").find("span").text(data.activityNm);

    rowTR.find("td[name=tdCostItemNm]").find("input").removeAttr("disabled");


    openExpenseSgma(data);

    console.log("smKindSeq : " + data.smKindSeq);
    console.log("smKindName : " + data.smKindName);

    console.log("costName : " + data.costName);
    console.log("costSeq : " + data.costSeq);

//    console.log(rowTR.find("td[name=tdSmKindNm]").find("input").val());
}

/**
 * 비용항목 상세 다이얼로그
 * @returns
 */
function openExpenseSgma(costInfoVO) {

	if(costInfoVO.smKindSeq == "4503006"){//-- 교통비
		if(costInfoVO.costSeq == 10 || costInfoVO.costSeq == 11 || costInfoVO.costSeq == 86){
			//-- 야근 교통비, 외근 교통비, 유류대-직원
			EventBus.$emit('openDetailPopup',costInfoVO);
		}
	}
	else if(costInfoVO.smKindSeq == "4503010"){ //-- 접대비
		if(costInfoVO.costSeq == 42 || costInfoVO.costSeq == 44 || costInfoVO.costSeq == 45){
			//-- 해외 접대비, 경조사 접대비, 일반 접대비
			EventBus.$emit('openDetailPopup',costInfoVO);
		}
	}
	else if(costInfoVO.smKindSeq == "4503008"){ //-- 해외 출장.
		//-- 식대-해외출장, 교통비-해외출장, 기타-해외출장, 커뮤니케이션-해외출장, 렌터카-해외출장, 항공료-해외출장, 로밍-해외출장, 호텔-해외출장, 접대비-해외출장
		if(costInfoVO.costSeq == 24 || costInfoVO.costSeq == 26 || costInfoVO.costSeq == 31 ||
				costInfoVO.costSeq == 81 || costInfoVO.costSeq == 87 || costInfoVO.costSeq == 88 || costInfoVO.costSeq == 89 || costInfoVO.costSeq == 90 || costInfoVO.costSeq == 25){
			EventBus.$emit('openDetailPopup',costInfoVO);
		}
	}
	else if(costInfoVO.smKindSeq == "4503009"){ //-- 국내 출장.
		//-- 식대-국내출장, 교통비-국내출장, 커뮤니케이션-국내출장, 렌터카-국내출장, 항공료-국내출장, 호텔-국내출장
		if(costInfoVO.costSeq == 34 || costInfoVO.costSeq == 36 || costInfoVO.costSeq == 82 || costInfoVO.costSeq == 91 || costInfoVO.costSeq == 93 || costInfoVO.costSeq == 92){
			EventBus.$emit('openDetailPopup',costInfoVO);
		}
	}




}

/**
 * SGMA 팝업 Callback Function
 * @param data
 * @returns
 */
function returnSGMA(data) {
	console.log(data);

	let rowTR = $("#useCardList tbody tr:eq("+rowIdx+")");

    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.costItemCd']").val(data.costItemCd);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.costItemNm']").val(data.costItemNm);

    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.activityCd']").val(data.activityCd);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.activityNm']").val(data.activityNm);

    rowTR.find("td[name=tdCostItemNm]").find("input").val(data.costItemNm);
    rowTR.find("td[name=tdActivityNm]").find("span").text(data.activityNm);

}

/**
 * 비용항목 상세 Callback Function
 * @param data
 * @returns
 */
function returnCostItemDetail(data) {
    cosole.log(data);
}


function formSubmit(){

	alert("fileList.length " + fileList.length);
	let formData = new FormData($("#accountCardFrm")[0]);
	let cardDetailList = new Array();

	formData.delete("files");

    for(let i=0; i< fileList.length;i++) {                // 파일 내용 저장
    	console.log(fileList[i].name);
    	formData.append("files["+i+"]", fileList[i]);
    }

    $.ajax({
    	url: "./saveAccount",
        enctype: "multipart/form-data",
        method:"POST",
        dataType : 'json',
        data:formData,
        processData: false,
        contentType: false,
        success: function(returnData) {
            console.log("returnData : "+returnData);
            func(returnData);
        },
        error: function(x,e){
              console.log("[AF]ajax status : "+x.status);
              console.log(e);
        },
    });

    //-- ajaxForm을 사용하면 멀티파일 업로드시 선택한 여러개의 파일중에 일부 파일을 삭제를 못한다.
//    $("#accountCardFrm").ajaxForm({
//    	url: "./saveAccount",
//        enctype: "multipart/form-data",
//        data: formData,
//        dataType : 'json',
//        processData: false,
//        contentType: false,
//        beforeSubmit: function(data, form, option) {
//
//        },
//        success: function(returnData) {
//            console.log("returnData : "+returnData);
//            func(returnData);
//        },
//        error: function(x,e){
//              console.log("[AF]ajax status : "+x.status);
//              console.log(e);
//        },
//    });
//
//
//	$("#accountCardFrm").submit();
}

