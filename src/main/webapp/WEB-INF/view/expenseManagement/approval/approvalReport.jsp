<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/view/include/expenseManagementInclude.jsp"/>
    
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <h2 class="page-title">기안서(보고)</h2>
    <!-- <p class="page-title__dsc">· 보고서 형식의 기안서를 작성할 수 있는 페이지입니다.</p> -->
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
            <iframe src="http://ekp.smilegate.net/eNovator/GSWF/WebPage/ApprovalForms/ApprovalFormCtrl.aspx?formID=60" frameborder="0"></iframe>
        </div>
    </div>
</div>