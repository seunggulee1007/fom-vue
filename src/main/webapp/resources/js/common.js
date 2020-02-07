/*!
 * 공통 스크립트
 */

// uv, pv 수집 서버로 데이터 전송
function navilog(userId, docName, clientIp, domain) {
	var timing = JSON.stringify(window.performance.timing);
    var datas = "USERID=" + userId + "&";
    datas += "DOCNAME=" + docName + "&";
    datas += "clientIp=" + clientIp + "&";
    datas += "NAVIGATION=" + timing;
 	$.ajax({
		method: "POST",
	    url: "http://mdi." + domain + "/mdi/api/NavigationTimingAPI",
	    data: datas,
	    dataType: "jsonp",
	});
}

// 그리드 resizing
function resizeGrid(gridId, w, h) {
	if(gridId)
		AUIGrid.resize(gridId, w, h);
}

// paging 네비게이터 생성
function createPagingNavigator(pageNum, totalPage) {

	var pageButtonCount = 10;
	var retStr = "";
	var prevPage = parseInt((pageNum - 1)/pageButtonCount) * pageButtonCount;
	var nextPage = ((parseInt((pageNum - 1)/pageButtonCount)) * pageButtonCount) + pageButtonCount + 1;
	prevPage = Math.max(0, prevPage);
	nextPage = Math.min(nextPage, totalPage);

	// first
	retStr += "<a href='javascript:moveToPage(1)'><span class='aui-grid-paging-number aui-grid-paging-first'>first</span></a>";
	// prev
	retStr += "<a href='javascript:moveToPage(" + Math.max(1, prevPage) + ")'><span class='aui-grid-paging-number aui-grid-paging-prev'>prev</span></a>";
	for (var i = (prevPage+1), len = (pageButtonCount+prevPage); i <= len; i++) {
		if (pageNum == i) {
			retStr += "<span class='aui-grid-paging-number aui-grid-paging-number-selected'>" + i + "</span>";
		} else {
			retStr += "<a href='javascript:moveToPage(" + i + ")'><span class='aui-grid-paging-number'>";
			retStr += i;
			retStr += "</span></a>";
		}

		if (i >= totalPage) {
			break;
		}
	}

	// next
	retStr += "<a href='javascript:moveToPage(" + nextPage + ")'><span class='aui-grid-paging-number aui-grid-paging-next'>next</span></a>";

	// last
	retStr += "<a href='javascript:moveToPage(" + totalPage + ")'><span class='aui-grid-paging-number aui-grid-paging-last'>last</span></a>";

	$("#grid_paging").html(retStr);
}
