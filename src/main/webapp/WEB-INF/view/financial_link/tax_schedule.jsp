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

<div id="container" class="container container--include-lnb container--fullview">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">      
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="tax_schedule.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">월별 세무 일정</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="exchange.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">환율 정보</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">거래처 휴/폐업 조회</span>  
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>                          
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="biz_chk/biz_num.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">거래처 휴/폐업 조회</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="biz_chk/biz_chk_history.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">휴/폐업 조회 이력</span>    
                        </a>                                
                    </li>  
                </ul>
            </li>
            <li class="lst-lnb__item">
                <a href="https://txsi.hometax.go.kr/docs/main.jsp" target="_blank" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">국세법령정보시스템</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="https://www.kebhana.com/cont/mall/mall15/mall1501/index.jsp?_menuNo=23100" target="_blank" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">하나은행 (환율)</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="http://www.smbs.biz/index.jsp" target="_blank" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">서울외국환중개</span>
                </a>
            </li>
        </ul>

        <footer class="footer footer--lnb-type">
            <div class="footer__inner">
                <!-- <ul class="footer__util">
                    <li class="footer__util-item">
                        <a href="#" class="footer__util-menu">
                            <span class="footer__util-menu-txt">스마일넷 배너등록</span>
                        </a>
                    </li>
                    <li class="footer__util-item">
                        <a href="#" class="footer__util-menu">
                            <span class="footer__util-menu-txt">개선 및 건의</span>
                        </a>
                    </li>
                </ul>
                <div class="dropdown">
                    <a href="#" class="dropdown__button">
                        <span class="dropdown__button-text">패밀리 사이트 바로가기</span>
                        <span class="sp icon-arrow">
                            <span class="blind">옵션창 열기</span>
                        </span>
                    </a>
                    <ul class="dropdown__list">
                    <li class="dropdown__item">
                        <a href="#" class="dropdown__menu">
                            <span class="dropdown__menu-txt">List 1_All</span>
                        </a>
                    </li>
                    <li class="dropdown__item">
                        <a href="#" class="dropdown__menu">
                            <span class="dropdown__menu-txt">List 2</span>
                        </a>
                    </li>
                    </ul>
                </div> -->
                <small class="footer__copyright">&copy; Smilegate. All Rights Reserved.</small>
            </div>
        </footer>
        
        <button type="button" class="btn btn-lnb">
            <span class="icon-arrow"><span class="blind">메뉴 열기</span></span>
        </button>
    </div>
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
