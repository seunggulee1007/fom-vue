/**
 *
 */
var myGridID;

$(document).ready(function(){

	var $tabList = $('.tab-area .lst-tab');

	$("#btnGetCalcList").click(function(){
		getCompanyCardMasterList();
	});

	$("#fromYm, #toYm").monthpicker({
		monthNames: ['1월(JAN)', '2월(FEB)', '3월(MAR)', '4월(APR)', '5월(MAY)', '6월(JUN)',
			'7월(JUL)', '8월(AUG)', '9월(SEP)', '10월(OCT)', '11월(NOV)', '12월(DEC)'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			changeYear: false,
			yearRange: 'c-2:c+2',
			dateFormat: 'yy-mm'
	});


	let companyCardMasterCol = [
		{
			dataField:"cardUseSeq",
			headerText:"카드정산번호",
		},
		{
			dataField:"comCd",
			headerText:"법인코드",
			visible:false
		},
		{
			dataField:"cardCd",
			headerText:"카드번호",
		},
		{
			dataField:"calcDate",
			headerText:"정산년월",
			dataType:"date",
			formatString:"yyyy-mm",
			dateInputFormat:"yyyymm",

		},
		{
			dataField:"erpCompanySeq",
			headerText:"ERP법인코드",
			visible:false
		},
		{
			dataField:"title",
			headerText:"제목",
		},
		{
			dataField:"regDate",
			headerText:"기안일자",
			dataType:"date",
			dateInputFormat:"yyyymmdd",
			formatString:"yyyy-mm-dd"
		},
		{
			dataField:"regErpEmpSeq",
			headerText:"기안자ERP사원코드",
			visible:false
		},
		{
			dataField:"regUserId",
			headerText:"기안자사원코드",
		},
		{
			dataField:"regErpDeptSeq",
			headerText:"기안자부서코드",
		},
		{
			dataField:"regEmpNo",
			headerText:"사원번호",
			visible:false
		},
		{
			dataField:"regDeptCd",
			headerText:"부서코드",
			visible:false
		},
		{
			dataField:"lastUserId",
			dataField:"최종수정자",
			visible:false
		},
		{
			dataField:"lastDateTime",
			dataField:"최종수정일시",
			visible:false
		}

	];

	var auiGridProps = {
			showRowNumColumn : false,
			showRowCheckColumn : false,
			showAutoNoDataMessage : false,
			selectionMode : "singleRow"
	};
	myGridID = AUIGrid.create("#companyCardMasterList", companyCardMasterCol, auiGridProps);

	// 셀 더블클릭 이벤트 바인딩
	AUIGrid.bind(myGridID, "cellDoubleClick", function(event) {
		console.log(event.item);
		let obj = new Object();
		obj.tabIdx = 0;
//		obj.item = event.item;

		$('.tab-area .lst-tab').find('.lst-tab__item .lst-tab__menu').trigger("click",obj);

		getCardUseData(event.item);
	});

//	getCompanyCardMasterList();

});

async function getCompanyCardMasterList(){

	let fromYm = $("#fromYm").val();
	let toYm = $("#toYm").val();
	await
	$.ajax({
	    url:"./getCompanyCardMasterList",
	    type:"POST",
	    data: "fromYm=" + fromYm + "&toYm=" + toYm,
	    success: function(resultData) {

	    	console.log(resultData)
	    	if(resultData.result == 0){

	    		AUIGrid.setGridData("#companyCardMasterList", resultData.data.cardMasterList);
//	    		myGridID.setGridData()
	    	}
	    }
	});
}






