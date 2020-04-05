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

/**
 * date타입을 string으로 변환시키는 함수 yyyymmdd포맷이며 넘겨진 type에 따라 포맷을 변경한다.
 * @param date
 * @param type
 * @returns
 */
function getDate(date, type, days){
    if(!(date instanceof Date)) {
        return date;
    }
    if(days) {
        date.setDate(date.getDate() + days);
    }
    let year = date.getFullYear();
    let month = date.getMonth() +1;
    let day = date.getDate();
    
    if(month < 10) {
        month = "0"+month;
    }
    if(day < 10) {
        day = "0" + day;
    }
    let today;
    if(!type) {
        type = "";
    }
    
    today = year + type + month + type + day;
    
    return today;
}

function isNull(str) {
    return (str === null || str === 'null' || str === undefined || str === 'undefined');
}

function getPageList(start, end) {
    let arr = new Array();
    for(let i=start; i<end; i++) {
        arr[i] = i;
    }
    return arr;
}

function setComma(str) {
    if(typeof(str) == 'number' ){
        str = str.toString();
    }
    return str.replace(/\B(?=(\d{3})+(?!\d))/g, ",")
}
$(document).ready(function(){
    $(".input-field__datepicker").datepicker({
        dateFormat : 'yy-mm-dd'
        ,showOn : "both"
        ,buttonImage : "/resources/fim/img/calendar.jpg"
    });
})

function getPageList(start, end) {
    let arr = new Array();
    let cnt =0;
    for(let i=start; i<=end; i++) {
        arr[cnt++] = i;
    }   
    return arr;
}

function makePagingVO(fnName, target) {
    let html = '';
    $("#"+target).empty();
    html += '    <div class="pagination">                                                                                          ';
    html += '        <a class="pagination__btn';
    if(pagingVO.pageNo == 1) {
        html += ' pagination__btn--disabled'
    }
    html += '" onclick="'+fnName+'(1)">';
    html += '        <span class="sp icon-first">                                                                                      ';
    html += '            <span class="blind">맨 처음 페이지</span>                                                                               ';
    html += '        </span>                                                                                                  ';
    html += '        </a>                                                                                                  ';
    html += '        <a class="pagination__btn';
    if(pagingVO.pageNo < pagingVO.pageCnt) {
        html += ' pagination__btn--disabled';
    }
    html += '" onclick="'+fnName+'('+pagingVO.startPage-1+')">';
    html += '        <span class="sp icon-prev">                                                                                      ';
    html += '            <span class="blind">이전 페이지</span>                                                                                  ';
    html += '        </span>                                                                                                  ';
    html += '        </a>                                                                                                  ';
    html += '        <div class="pagination__inner">                                                                                  ';
    let pageList = getPageList(pagingVO.startPage, pagingVO.endPage);
    for(let i=0; i< pageList.length; i++) {
        let num = pageList[i];
        html += '        <a class="pagination__btn-txt';
        if(num == pagingVO.pageNo) {
            html += ' pagination__btn-txt--active';
        }
        html +='" onclick="'+fnName+'(\''+num+'\')">';
        html += '            <span class="pagination__page-number">'+num+'</span>                                                                      ';
        html += '            <span class="blind">페이지로 이동</span>                                                                               ';
        html += '        </a>                                                                                                  ';

    }
    html += '        </div>                                                                                                  ';
    html += '        <a class="pagination__btn';
    if(pagingVO.endPage < pagingVO.totalPage) {
        html += ' pagination__btn--disabled';
    }
    html +='" onclick="'+fnName+'(\''+pagingVO.startPage+1+'\')">                      ';
    html += '        <span class="sp icon-next">                                                                                      ';
    html += '            <span class="blind">다음 페이지</span>                                                                                  ';
    html += '        </span>                                                                                                  ';
    html += '        </a>                                                                                                  ';
    html += '        <a class="pagination__btn';
    if(pagingVO.pageNo == pagingVO.totalPage) {
        html += ' pagination__btn--disabled';
    }
    html +='" @click="'+fnName+'(pagingVO.totalPage)">                          ';
    html += '        <span class="sp icon-last">                                                                                      ';
    html += '            <span class="blind">맨 뒤 페이지</span>                                                                                  ';
    html += '        </span>                                                                                                  ';
    html += '        </a>                                                                                                  ';
    html += '    </div>                                                                                                  ';

    $("#"+target).append(html);
}

function doAjax(url, type, param, config) {
    let res = {};
    
    const ajaxConfig = {
        url : url
        ,type : type
        ,data : param 
        ,async : false
        ,success : function(data){
            res = data;
        }
    }
    for(let temp in config) {
        ajaxConfig[temp] = config[temp];
    }
    $.blockUI({ message: '<h3><img src="/resources/fim/img/icon_loading.gif" /> 처리중입니다. 잠시만 기다려 주세요.</h3>' });
    $.ajax(ajaxConfig);
    $.unblockUI();
    return res;

}

function dateFilter(value, type){
    if(!value) return '';
        if(!type) {
            type = '-';
        }
    return value.substr(0,4) + type + value.substr(4,2) + type + value.substr(6,2);
} 

function bizNoFilter(value, type) {
    if(!value) return;
    if(value.includes('-')){
        return value;
    }
    var formatNum = '';
    try{
        if (value.length == 10) {
            if (type == 0) {
                formatNum = value.replace(/(\d{3})(\d{2})(\d{5})/, '$1-$2-*****');
            } else {
                formatNum = value.replace(/(\d{3})(\d{2})(\d{5})/, '$1-$2-$3');
            }
        }
    } catch(e) {
        formatNum = value;
        console.log(e);
    }
    return formatNum;
}

function  getToday () {
    let date = new Date();
    let year = date.getFullYear();
    let month =new String(date.getMonth() +1);
    let day = new String(date.getDate());
    if(month.length == 1) {
        month = "0" + month;
    }
    if(day.length == 1) {
        day = "0" + day;
    }
    
    return year + "-" + month + "-" + day;
}

function checkBizNo (bizNo) {      // 사업자 번호 체크
              
    let checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1); 
    let i, chkSum=0, c2, remander; 
    bizNo = bizNo.replace(/-/gi,''); 
    if(bizNo.length != 10) {
        return false;
    }
    for (i=0; i<=7; i++) {
        chkSum += checkID[i] * bizNo.charAt(i); 
    }
    c2 = "0" + (checkID[8] * bizNo.charAt(8)); 
    c2 = c2.substring(c2.length - 2, c2.length); 
    chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1)); 
    remander = (10 - (chkSum % 10)) % 10 ; 

    return (Math.floor(bizNo.charAt(9)) == remander);
}