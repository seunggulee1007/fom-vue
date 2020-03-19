<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/resources/fim/css/fullCalendar/core/main.css"    rel="stylesheet"/>
<link href="/resources/fim/css/fullCalendar/daygrid/main.css" rel="stylesheet"/>
<link href="/resources/fim/css/fullCalendar/list/main.css"    rel="stylesheet"/>
<link href="/resources/fim/css/fullCalendar/fullCalendar.css" rel="stylesheet"/>

<script src="/resources/fim/js/fullCalendar/core/main.js" type="text/javascript"></script>
<script src="/resources/fim/js/fullCalendar/interaction/main.js" type="text/javascript"></script>
<script src="/resources/fim/js/fullCalendar/daygrid/main.js" type="text/javascript"></script>
<script src="/resources/fim/js/fullCalendar/list/main.js" type="text/javascript"></script>
<script src="/resources/fim/js/fullCalendar/locale/ko.js" type="text/javascript"></script>
<script src="https://unpkg.com/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
<script src="/resources/fim/js/fullCalendar/core/tooltip.min.js" type="text/javascript"></script>
<script src="/resources/fim/js/fullCalendar/fullCalendar.js" type="text/javascript"></script>

<jsp:include page="/WEB-INF/view/include/financialLinkInclude.jsp"/>


<div id="container" class="container container--include-lnb container--fullview">
    <h2 class="page-title">월별 세무 일정</h2>
    
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>                
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-exchange">
                <div id="calendar" class="calendar"></div>              
            </div>
        </div>
    </div>
</div>
