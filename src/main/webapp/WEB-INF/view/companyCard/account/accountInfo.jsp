<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script type="text/javascript" src="/resources/fim/js/monthPicker/jquery.ui.monthpicker.js"></script>
<script type="text/javascript" src="/resources/fim/js/companyCard/accountRequestJquery.js"></script>

<jsp:include page="/WEB-INF/view/include/companyCardInclude.jsp"/>

<!-- 조직도 다이얼로그. -->
<jsp:include page="/WEB-INF/view/include/expense/expenseUserLayer.jsp"/>

<!-- 비용항목 다이얼로그. -->
<jsp:include page="/WEB-INF/view/include/expense/expenseItemAll.jsp"/>

<!-- SGMA 다이얼로그. -->
<jsp:include page="/WEB-INF/view/include/expense/expenseItemSgma.jsp"/>

<!-- 비용항목 상세 다이얼로그. -->
<jsp:include page="/WEB-INF/view/include/expense/expenseDetail.jsp"/>

<div id="container" class="container container--include-lnb container--fullview container-write container--include-tab">
    <h2 class="page-title">법인카드 정산</h2>
    <!-- <p class="page-title__dsc">· 법인카드 정산 페이지입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>
    </div>
    <div class="grid-layout">
        <div class="grid-column10">
            <!-- <iframe src="http://ekp.smilegate.net/eNovator/GSWF/WebPage/AccountInfo/AccountInfoWrite.aspx" frameborder="0"></iframe> -->

            <div class="tab-area tab-area--top">
                <ul class="lst-tab">
                    <li class="lst-tab__item lst-tab__item--active">
                        <a href="#" class="lst-tab__menu">
                            <span class="lst-tab__menu-txt">정산신청</span>
                        </a>
                    </li>
                    <li class="lst-tab__item">
                        <a href="#" class="lst-tab__menu">
                            <span class="lst-tab__menu-txt">정산목록</span>
                        </a>
                    </li>
                    <li class="lst-tab__item">
                        <a href="#" class="lst-tab__menu">
                            <span class="lst-tab__menu-txt">월별정산내역</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="tab-cnt">
				<!-- 정산신청 -->
            	<jsp:include page="./include/accountRequest.jsp"/>

				<!-- 정산목록 -->
            	<jsp:include page="./include/accountList.jsp"/>

				<!-- 월별정산내역 -->
            	<jsp:include page="./include/monthAccountList.jsp"/>
            </div>

        </div>
    </div>
</div>
