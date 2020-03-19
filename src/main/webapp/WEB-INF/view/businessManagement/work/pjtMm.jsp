<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/WEB-INF/view/include/businessManagementInclude.jsp"/>
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <h2 class="page-title">프로젝트별 MM 추이분석</h2>            
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
            <iframe src="http://ekp.smilegate.net/eNovator/Etc/ManDayMng/ManDay_Belong_Com_MM_Total.aspx" frameborder="0"></iframe>
        </div>
    </div>
</div>