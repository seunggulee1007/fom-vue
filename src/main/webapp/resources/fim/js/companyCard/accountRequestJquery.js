
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
		let data = new Object();

		//-- 키값
		data.cardUseSeq = "0"; //-- 내부코드(신규 데이터일때는 반드시 0을 넣어야 된다.)
		data.companySeq = "2"; //-- ERP법인코드
		data.cancelYn = "n"; //-- 승인취소여부
		data.apprSeq = "1"; //-- 승인순번
		data.apprNo = "1"; //-- 승인번호
		data.apprDate = "20200303"; //-- 승인일
		data.cardCd = "111122223333"; //-- 카드번호

		data.apprTime = "2018"; //-- 승인시간

		//-- 예산부서 정보
		data.budgetDeptCd = ""; //-- 예산부서코드2
		data.budgetDeptNm = ""; //-- 예산부서명2
		data.budgetErpDeptSeq = ""; //-- ERP예산부서코드
		data.budgetErpDeptNm = ""; //-- ERP예산부서명

		//-- 사용자정보(귀속처리정보)
		data.comCd = ""; //-- 인사법인코드
		data.comNm = ""; //-- 인사법인명
		data.useUserId = ""; //-- 사용자코드
		data.useUserNm = ""; //-- 사용자명
		data.useErpDeptSeq = ""; //-- ERP사용자부서코드
		data.useEmpNo = ""; //-- 사용자사번

		//-- 비용항목 중분류
		data.erpSmKindNm = ""; //-- 비용항목 중분류명
		data.erpSmKindSeq = ""; //-- 비용항목 중분류코드

		//-- 비용항목 소분류
		data.erpCostSeq = ""; //-- 비용항목 소분류코드
		data.erpCostNm = ""; //-- 비용항목 소분류명

		//-- SGMA 중분류
		data.costItemCd = ""; //-- SGMA_중분류코드(액티비티)
		data.costItemNm = ""; //-- SGMA_중분류명(액티비티)

		//-- SGMA 소분류
		data.activityCd = ""; //-- SGMA_소분류코드(액티비티)
		data.activityNm = ""; //-- SGMA_소분류명(액티비티)

		//-- 접대비
		data.custName = ""; //-- 업체명
		data.userName = ""; //-- 업체 담당자
		data.purpose = ""; //-- 목적

		//-- 출장정보
		data.busiTripCode = ""; //-- 츨장정보코드
		data.busiTripType = ""; //-- 츨장구분코드

		//-- 교통비
		data.startArea = ""; //-- 출발지
		data.destArea = ""; //-- 목적지
		data.workStart = ""; //-- 업무 시작시간
		data.workEnd = ""; //-- 업무 종료시간
		data.distance = ""; //-- 거리(Km)
		data.personCnt = ""; //-- 인원수
		data.transAmt = ""; //-- 금액
		data.personName = ""; //-- 탑승자

		//-- 결제정보
		data.chainNm = "하늘아래어딘가"; //-- 가맹점명
		data.chainId = "1111111111"; //-- 가맹점 사업자번호
		data.chainAddr = "서울 남산아래 어디쯤"; //-- 가맹점 주소
		data.mccName = "유흥"; //-- 업종
		data.chainMaster = "대표자명"; //-- 대표자명
		data.supplyAmt = "1000000"; //-- 공급가
		data.apprTax = "100000"; //-- 부가세
		data.tipAmt = "10000"; //-- 봉사료
		data.apprAmt = "1110000"; //-- 승인금액
		data.currCd = "KRW"; //-- 통화
		data.curAmt = "0"; //-- 외화금액
		data.chainType = "N"; //-- 간이세액구분
		data.authHh = ""; //--
		data.isDefine = "";
		data.closeYn = "N"; //-- 마감여부
		data.lastDateTime = ""; //-- 최종수정일
		data.lastUserId = ""; //-- 최종수정자

		setDetailData(data);
	});

	getCompanyCardList();

});

function setDetailData(companyCardDetailvo){

	let tr = $("#useCardListClone tbody tr:eq(0)");
	let cTr = tr.clone(true);

	let rowListCnt = $("#useCardList tbody tr").length;
	let htmlStr = "";
	let checkboxStr = "";
	checkboxStr += "<input type='checkbox' id='checkbox_expenseChk"+rowListCnt+"' name='cardDetailList["+rowListCnt+"].useCheck'>";
	checkboxStr += "<label for='checkbox_expenseChk"+rowListCnt+"' class='btn-checkbox__label'><span class='blind'>선택</span></label>";
	cTr.find("td[name=tdCheck]").find("span").html(checkboxStr);


	cTr.find("span[name=spApprDate]").text(companyCardDetailvo.apprDate);
	cTr.find("span[name=spApprTime]").text(companyCardDetailvo.apprTime);

	cTr.find("span[name=spChainNm]").text(companyCardDetailvo.chainNm);
	cTr.find("p[name=pChainNm]").text("가맹점: " + companyCardDetailvo.chainNm);
	cTr.find("p[name=pChainAddr]").text("주소: " + companyCardDetailvo.chainAddr);
	cTr.find("p[name=pChainId]").text("사업자번호: " + companyCardDetailvo.chainId);
	cTr.find("p[name=pMccName]").text("업종: " + companyCardDetailvo.mccName);
	cTr.find("p[name=pApprNo]").text("승인번호: " + companyCardDetailvo.apprNo);

	cTr.find("span[name=tdBudgetDeptNm]").text(companyCardDetailvo.budgetDeptNm);
	cTr.find("span[name=spUseName]").text(companyCardDetailvo.useUserNm);
	cTr.find("span[name=spDeptNm]").text(companyCardDetailvo.useUserNm); //-- 사용자 귀속 부서는???


	cTr.find("td[name=tdSmKindNm]").find("input").val(companyCardDetailvo.erpSmKindNm); //-- 비용항목 중분류
	cTr.find("td[name=tdErpCostNm]").find("input").val(companyCardDetailvo.erpCostNm); //-- 비용항목 소분류

	cTr.find("td[name=tdCostItemNm]").find("input").val(companyCardDetailvo.costItemNm); //-- SGMA 중분류
	cTr.find("td[name=tdActivityNm]").find("span").text(companyCardDetailvo.costItemNm); //-- SGMA 소분류

	cTr.find("span[name=spCurrCd]").text(companyCardDetailvo.currCd); //-- 통화
	cTr.find("span[name=spSupplyAmt]").text(companyCardDetailvo.supplyAmt); //-- 공급가
	cTr.find("span[name=spTipAmt]").text(companyCardDetailvo.tipAmt); //-- 봉사료
	cTr.find("span[name=spApprTax]").text(companyCardDetailvo.apprTax); //-- 부가세

	let sumAmt = parseInt(companyCardDetailvo.supplyAmt) + parseInt(companyCardDetailvo.tipAmt) + parseInt(companyCardDetailvo.apprTax);
	cTr.find("span[name=spSumAmt]").text(sumAmt); //-- 총계

	//-- 키값
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].cardUseSeq' value='"+companyCardDetailvo.cardUseSeq+"'>"; //-- 내부코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].companySeq' value='"+companyCardDetailvo.companySeq+"'>"; //-- ERP법인코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].cancelYn' value='"+companyCardDetailvo.cancelYn+"'>"; //-- 승인취소여부
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].apprSeq' value='"+companyCardDetailvo.apprSeq+"'>"; //-- 승인순번
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].apprNo' value='"+companyCardDetailvo.apprNo+"'>"; //-- 승인번호
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].apprDate' value='"+companyCardDetailvo.apprDate+"'>"; //-- 승인일
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].cardCd' value='"+companyCardDetailvo.cardCd+"'>"; //-- 카드번호

	//-- 예산부서 정보
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].budgetDeptCd' value='"+companyCardDetailvo.budgetDeptCd+"'>"; //-- 예산부서코드2
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].budgetDeptNm' value='"+companyCardDetailvo.budgetDeptNm+"'>"; //-- 예산부서명2
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].budgetErpDeptSeq' value='"+companyCardDetailvo.budgetErpDeptSeq+"'>"; //-- ERP예산부서코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].budgetErpDeptNm' value='"+companyCardDetailvo.budgetErpDeptNm+"'>"; //-- ERP예산부서명

	//-- 사용자정보(귀속처리정보)
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].comCd' value='"+companyCardDetailvo.comCd+"'>"; //-- 인사법인코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].comNm' value='"+companyCardDetailvo.comNm+"'>"; //-- 인사법인명
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].useUserId' value='"+companyCardDetailvo.useUserId+"'>"; //-- 사용자코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].useUserNm' value='"+companyCardDetailvo.useUserNm+"'>"; //-- 사용자명
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].useErpDeptSeq' value='"+companyCardDetailvo.useErpDeptSeq+"'>"; //-- ERP사용자부서코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].useEmpNo' value='"+companyCardDetailvo.useEmpNo+"'>"; //-- 사용자사번

	//-- 비용항목 중분류
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.erpSmKindNm' value='"+companyCardDetailvo.erpSmKindNm+"'>"; //-- 비용항목 중분류명
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.erpSmKindSeq' value='"+companyCardDetailvo.erpSmKindSeq+"'>"; //-- 비용항목 중분류코드

	//-- 비용항목 소분류
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.erpCostSeq' value='"+companyCardDetailvo.erpCostSeq+"'>"; //-- 비용항목 소분류코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.erpCostNm' value='"+companyCardDetailvo.erpCostNm+"'>"; //-- 비용항목 소분류명

	//-- SGMA 중분류
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.costItemCd' value='"+companyCardDetailvo.costItemCd+"'>"; //-- SGMA_중분류코드(액티비티)
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.costItemNm' value='"+companyCardDetailvo.costItemNm+"'>"; //-- SGMA_중분류코드명(액티비티)

	//-- SGMA 소분류
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.activityCd' value='"+companyCardDetailvo.activityCd+"'>"; //-- SGMA_소분류코드(액티비티)
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.activityNm' value='"+companyCardDetailvo.activityNm+"'>"; //-- SGMA_소분류명(액티비티)

	//-- 접대비
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.custName' value='"+companyCardDetailvo.custName+"'>"; //-- 업체명
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.userName' value='"+companyCardDetailvo.userName+"'>"; //-- 업체 담당자
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.purpose' value='"+companyCardDetailvo.purpose+"'>"; //-- 목적

	//-- 출장정보
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.busiTripCode' value='"+companyCardDetailvo.busiTripCode+"'>"; //-- 츨장정보코드
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.busiTripType' value='"+companyCardDetailvo.busiTripType+"'>"; //-- 츨장구분코드

	//-- 교통비
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.startArea' value='"+companyCardDetailvo.startArea+"'>"; //-- 출발지
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.destArea' value='"+companyCardDetailvo.destArea+"'>"; //-- 목적지
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.workStart' value='"+companyCardDetailvo.workStart+"'>"; //-- 업무 시작시간
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.workEnd' value='"+companyCardDetailvo.workEnd+"'>"; //-- 업무 종료시간
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.distance' value='"+companyCardDetailvo.distance+"'>"; //-- 거리(Km)
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.personCnt' value='"+companyCardDetailvo.personCnt+"'>"; //-- 인원수
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.transAmt' value='"+companyCardDetailvo.transAmt+"'>"; //-- 금액
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].costInfoVO.personName' value='"+companyCardDetailvo.personName+"'>"; //-- 탑승자

	//-- 결제정보
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].chainNm' value='"+companyCardDetailvo.chainNm+"'>"; //-- 가맹점명 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].chainId' value='"+companyCardDetailvo.chainId+"'>"; //-- 가맹점 사업자번호 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].chainAddr' value='"+companyCardDetailvo.chainAddr+"'>"; //-- 가맹점 주소 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].mccName' value='"+companyCardDetailvo.mccName+"'>"; //-- 업종 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].chainMaster' value='"+companyCardDetailvo.chainMaster+"'>"; //-- 대표자명 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].supplyAmt' value='"+companyCardDetailvo.supplyAmt+"'>"; //-- 공급가 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].apprTax' value='"+companyCardDetailvo.apprTax+"'>"; //-- 부가세 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].tipAmt' value='"+companyCardDetailvo.tipAmt+"'>"; //-- 봉사료 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].apprAmt' value='"+companyCardDetailvo.apprAmt+"'>"; //-- 승인금액 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].currCd' value='"+companyCardDetailvo.currCd+"'>"; //-- 통화 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].curAmt' value='"+companyCardDetailvo.curAmt+"'>"; //-- 외화금액 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].chainType' value='"+companyCardDetailvo.chainType+"'>"; //-- 간이세액구분 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].authHh' value='"+companyCardDetailvo.authHh+"'>"; //--  -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].isDefine' value='"+companyCardDetailvo.isDefine+"'>"; //--  -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].closeYn' value='"+companyCardDetailvo.closeYn+"'>"; //-- 마감여부 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].lastDateTime' value='"+companyCardDetailvo.lastDateTime+"'>"; //-- 최종수정일 -->
	htmlStr += "<input type='hidden' name='cardDetailList["+rowListCnt+"].lastUserId' value='"+companyCardDetailvo.lastUserId+"'>"; //-- 최종수정자 -->

	cTr.append(htmlStr);


	$("#useCardList tbody").append(cTr);
}

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
    rowTR.find("input[name='cardDetailList["+rowIdx+"].useUserId']").val(data.userId);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].useEmpNo']").val(data.empNo);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].useUserNm']").val(data.userNm);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].budgetDeptCd']").val(data.deptCd);
    rowTR.find("input[name='cardDetailList["+rowIdx+"].budgetDeptNm']").val(data.deptNm);
    rowTR.find("span[name=spUseName]").text(data.userNm);
    rowTR.find("span[name=spDeptNm]").text(data.deptNm);

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
	console.log("비용항목 팝업 Callback");
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

	console.log("openExpenseSgma " + costInfoVO.smKindSeq);
	console.log("costInfoVO.costSeq " + costInfoVO.costSeq);
	if(costInfoVO.smKindSeq == "4503006"){//-- 교통비
		if(costInfoVO.costSeq == 10 || costInfoVO.costSeq == 11 || costInfoVO.costSeq == 86){
			//-- 야근 교통비, 외근 교통비, 유류대-직원
			console.log("costInfoVO.costSeq sdfsadfasdf");
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
	console.log("SGMA 팝업 상세 Callback");
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
	console.log("비용항목 상세 Callback");
	console.log(data);

	let rowTR = $("#useCardList tbody tr:eq("+rowIdx+")");

	resetCostItemDetail();


	console.log("data.distance : " + data.distance);

	//-- 접대비
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.custName']").val(data.custName); // 업체명
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.userName']").val(data.userName); // 업체 담당자
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.purpose']").val(data.purpose); // 목적

	//-- 출장정보
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.busiTripCode']").val(data.busiTripCode); // 츨장정보코드
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.busiTripType']").val(data.busiTripType); // 츨장구분코드

	//-- 교통비
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.startArea']").val(data.startArea); //-- 출발지
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.destArea']").val(data.destArea); //-- 목적지
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.workStart']").val(data.workStart); //-- 업무 시작시간
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.workEnd']").val(data.workEnd); //-- 업무 종료시간
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.distance']").val(data.distance == null?"0":data.distance); //-- 거리(Km)
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.personCnt']").val(data.personCnt == null?"0":data.personCnt); //-- 인원수
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.transAmt']").val(data.transAmt == null?"0":data.transAmt); //-- 금액
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.personName']").val(data.personName); //-- 탑승자

}

/**
 * 비용항목 상세내용을 모두 지운다.
 * @returns
 */
function resetCostItemDetail(){
	let rowTR = $("#useCardList tbody tr:eq("+rowIdx+")");

	//-- 접대비
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.custName']").val(""); // 업체명
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.userName']").val(""); // 업체 담당자
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.purpose']").val(""); // 목적

	//-- 출장정보
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.busiTripCode']").val(""); // 츨장정보코드
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.busiTripType']").val(""); // 츨장구분코드

	//-- 교통비
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.startArea']").val(""); //-- 출발지
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.destArea']").val(""); //-- 목적지
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.workStart']").val(""); //-- 업무 시작시간
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.workEnd']").val(""); //-- 업무 종료시간
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.distance']").val(""); //-- 거리(Km)
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.personCnt']").val(""); //-- 인원수
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.transAmt']").val(""); //-- 금액
	rowTR.find("input[name='cardDetailList["+rowIdx+"].costInfoVO.personName']").val(""); //-- 탑승자

}

function validationCheck(){

}

function formSubmit(){

	alert("fileList.length " + fileList.length);
	let formData = new FormData($("#accountCardFrm")[0]);
	let cardDetailList = new Array();

	formData.delete("cardCd");
	formData.delete("files");

	let cardCd = $("#cardCd").val().split("|")[0].replace(/-/gi, "");

	for (var key of formData.keys()) {
		   console.log(key);
		}
//	for (var value of formData.values()) {
//	   console.log(value);
//	}

	formData.append("cardCd", cardCd);
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
//        dataType : 'json',
//        processData: false,
//        contentType: false,
//        beforeSubmit: function(data, form, option) {
//
//        	console.log("option : " + option);
//        	console.log("form : " + form);
//        	console.log(data);
//        	return true;
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


