<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="URI" value="${requestScope['javax.servlet.forward.request_uri'] }" />
<div class="lnb lnb-area">
    <ul class="lst-lnb">
        <li class="lst-lnb__item lst-lnb__item--active">
            <a href="/financialLink/accounting/standards" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">그룹회계기준 및 가이드</span>
            </a>
        </li>
        <li class="lst-lnb__item <c:if test="${URI eq '/financialLink/tax_schedule' }"> lst-lnb__item--active</c:if>">
            <a href="/financialLink/taxSchedule" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">월별 세무 일정</span>
            </a>
        </li>
        <li class="lst-lnb__item <c:if test="${URI eq '/financialLink/exchange' }"> lst-lnb__item--active</c:if>">
            <a href="/financialLink/exchange" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">환율 정보</span>
            </a>
        </li>
        
        <li class="lst-lnb__item">
            <a href="#" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">거래처 휴/폐업 조회</span>
                <span class="sp icon-arrow--ms"><span class="blind">메뉴닫기</span></span>                          
            </a>
            <ul class="lst-lnb-sub">
                <li class="lst-lnb-sub__item <c:if test="${URI eq '/financialLink/biz_chk/biz_num' }"> lst-lnb-sub__item--active </c:if>">
                    <a href="/financialLink/bizChk/bizNum" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">거래처 휴/폐업 조회</span>
                    </a>
                </li>
                <li class="lst-lnb-sub__item <c:if test="${URI eq '/financialLink/biz_chk/biz_chk_history' }"> lst-lnb-sub__item--active</c:if>">
                    <a href="/financialLink/bizChk/bizChkHistory" class="lst-lnb-sub__menu">
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
            <small class="footer__copyright">&copy; Smilegate. All Rights Reserved.</small>
        </div>
    </footer>
    
    <button type="button" class="btn btn-lnb">
        <span class="icon-arrow"><span class="blind">메뉴 열기</span></span>
    </button>
</div>