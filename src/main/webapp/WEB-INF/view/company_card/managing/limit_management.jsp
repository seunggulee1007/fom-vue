<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <jsp:include page="/WEB-INF/view/include/company_card_include.jsp"/>
    <h2 class="page-title">카드한도관리</h2>
    <!-- <p class="page-title__dsc">· 카드 한도를 관리할 수 있는 페이지입니다.</p> -->
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
            <iframe src="http://bi.smilegate.net/eNovatorSGData/SMILENET/CARD_LIMIT_MANAGEMENT_MAIN.aspx" frameborder="0"></iframe>
        </div>
    </div>
</div>