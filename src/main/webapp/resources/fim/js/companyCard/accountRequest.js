
/**
 *
 * @returns
 */

//$(function(){
//
//	  $('#attFile').MultiFile({
//		    // your options go here
//		    max: 2,
//		  });
//});

$(document).ready(function(){

	/**
	 * 조직도 팝업.
	 */
	$("#btnCardUser, #btnAccountUser").click((evt) => {
		EventBus.$emit('openDeptPopup');
	});



	/**
	 * 비용항목 팝업.
	 */
	$("#inSmKindNm").dblclick((evt) => {
        console.log($(this).val())
        EventBus.$emit('openExpenseAllPopup', $(this).val(), '이덕호', 2);
	});

	/**
	 * SGMA 팝업.
	 */
	$("#inRemValSeq").dblclick((evt) => {
		console.log($(this).val())
		EventBus.$emit('openExpenseSgmaPopup', $(this).val(), '이덕호', 2);
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
	 * 파일추가.
	 * this를 사용할땐 가급적 Lamda식을 자제 하는게 좋다.
	 */
	$("#attFile").change(function(evt){

		updateSize(this)

	});

	getCompanyCardList();

});

var fileList = new Array();
function updateSize(inFile) {

	let nBytes = 0;

	let oFiles = inFile.files;
	fileList.push(inFile.files);
	console.log("fileList : " + fileList);

	let nFiles = oFiles.length;
	console.log("oFiles.length : " + nFiles);

	calcFileSize();

}

/**
 * 파일 리스트에서 선택한 파일을 삭제 하고 리스트를 다시 그린다.
 * @param idx
 * @returns
 */
function onDeleteFile(idx){

	let fileName = fileList[idx][0].name

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
	for(let i = 0; i < fileList.length; i++){
		nBytes += fileList[i][0].size;

		//-- 허용된 용량 초과시 파일 리스트 객체에서 마지막 추가한 파일을 삭제 하고, 해당 파일의 용량도 마이너스 한다.
		if(nBytes > allowFileSize){
			alert("전체 파일크기가 100Mb를 넘을수 없습니다.");
			nBytes -= fileList[i][0].size
			fileList.splice(i, 1);
			break;
		}

		console.log("file : " + fileList[i][0].name);
		console.log("nBytes : " + nBytes);
		$("#fileListBox").append("<div class='file-info'>"+fileList[i][0].name+"<a href='javascript:onDeleteFile("+i+")'>&nbsp;&nbsp;[삭제]</a></div>");
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
}

/**
 * 비용항목 팝업 Callback Function
 * @param data
 * @returns
 */
function returnCostItemAct(data) {
	console.log(data);
}

/**
 * SGMA 팝업 Callback Function
 * @param data
 * @returns
 */
function returnSGMA(data) {
	console.log(data);
}

function formSubmit(){

	alert("fileList.length " + fileList.length);
	let formData = new FormData($("#accountCardFrm")[0]);
	let cardDetailList = new Array();

    for(let i=0; i< fileList.length;i++) {                // 파일 내용 저장
    	console.log(fileList[i][0].name);
    	formData.append("files["+i+"]", fileList[i][0]);
    }

//    $.ajax({
//    	url: "./saveAccount",
//        enctype: "multipart/form-data",
//        method:"POST",
//        dataType : 'json',
//        data:formData,
//        processData: false,
//        contentType: false,
//        success: function(returnData) {
//            console.log("returnData : "+returnData);
//            func(returnData);
//        },
//        error: function(x,e){
//              console.log("[AF]ajax status : "+x.status);
//              console.log(e);
//        },
//    });

    $("#accountCardFrm").ajaxForm({
    	url: "./saveAccount",
        enctype: "multipart/form-data",
        dataType : 'json',
        processData: false,
        contentType: false,
        beforeSubmit: function(data, form, option) {

        },
        success: function(returnData) {
            console.log("returnData : "+returnData);
            func(returnData);
        },
        error: function(x,e){
              console.log("[AF]ajax status : "+x.status);
              console.log(e);
        },
    });


	$("#accountCardFrm").submit();
}

