/*!
 * 공통 스크립트
 */

Array.prototype.contains = function(obj) {
	var i = this.length;
	while (i--) {
	    if (this[i] === obj) {
	        return true;
	    }
	}
	return false;
}

/*
 * trim을 사용하기 위해 프로토타입에 trim을 추가한다.
 * 사용예)
 * var strTrimTest = " TrimTest ";
 * var strTrimResult = strTrimTest.trim();
 * @returns
 */
String.prototype.trim = function() {
    return this.replace(/(^\s*)|(\s*$)/gi, "");
}

/**
 * 문자열 중에 orgChar를 찾아서 모두 newChar로 치환 한다.
 * @param orgChar
 * @param newChar
 * 사용예) var sampleStr = "aaabbbccc";
 * sampleStr.replaceAll("bbb", "111");
 * @returns
 */
String.prototype.replaceAll = function(orgChar, newChar) {
    return this.split(orgChar).join(newChar);
}

/* Date에 Prototype을 추가 한다.
 * 날짜를 주어진 포맷으로 변환한다.
 *  //2011년 09월 11일 오후 03시 45분 42초
 *  console.log(new Date().format("yyyy년 MM월 dd일 a/p hh시 mm분 ss초"));
 *
 * //2011-09-11
 * console.log(new Date().format("yyyy-MM-dd"));
 *
 * //'11 09.11
 * console.log(new Date().format("'yy MM.dd"));
 *
 * //2011-09-11 일요일
 * console.log(new Date().format("yyyy-MM-dd E"));
 *
 * //현재년도 : 2011
 * console.log("현재년도 : " + new Date().format("yyyy"));
 * @param f
 * @returns
 */
Date.prototype.format = function(f) {
    if (!this.valueOf()) return " ";

    var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
    var d = this;

    return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
        switch ($1) {
            case "yyyy": return d.getFullYear();
            case "yy": return (d.getFullYear() % 1000).zf(2);
            case "MM": return (d.getMonth() + 1).zf(2);
            case "dd": return d.getDate().zf(2);
            case "E": return weekName[d.getDay()];
            case "HH": return d.getHours().zf(2);
            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
            case "mm": return d.getMinutes().zf(2);
            case "ss": return d.getSeconds().zf(2);
            case "a/p": return d.getHours() < 12 ? "오전" : "오후";
            default: return $1;
        }
    });
};
String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
Number.prototype.zf = function(len){return this.toString().zf(len);};


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
    return (str == null || str == undefined || str == '');
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
    }else if(typeof(str) == 'string') {
        try {
            str = Number(str).toString();
        }catch (e) {
            str = '0';
        }
    }
    return str.replace(/\B(?=(\d{3})+(?!\d))/g, ",")
}
$(document).ready(function(){
    $(".input-field__datepicker").datepicker({
        dateFormat : 'yy-mm-dd'
        ,showOn : "both"
        ,buttonImage : "/resources/fim/img/calendar.jpg"
        ,yearSuffix: '년',
        monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
        dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
        showMonthAfterYear: true,
        prevText: "전월",
        nextTexT: "차월",
        currentText: "오늘",
        closeText: "달력 닫기",
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

/**
 * 페이징 만들어 주는 함수 
 * @param {*} fnName 클릭시 조회 될 함수 명 
 * @param {*} target append될 엘리먼트
 */
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
    console.log(param);
    // 추가 될 ajax 설정이 있다면 추가 시킨다.
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