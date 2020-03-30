<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:include page="/WEB-INF/view/include/expenseManagementInclude.jsp"/>
    
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <h2 class="page-title">전자결재 - 진행함</h2>
    <!-- <p class="page-title__dsc">· 진행 중인 결재 문서를 확인 할 수 있는 페이지입니다.</p> -->
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
            <iframe src="http://ekp.smilegate.net/eNovator/GSWF/WebPage/ApprovalMain/newListView.aspx?BoardType=P_PROCESS" frameborder="0"></iframe>
        </div>
    </div>
</div>