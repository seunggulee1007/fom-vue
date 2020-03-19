<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
    <jsp:include page="/WEB-INF/view/include/businessManagementInclude.jsp"/>
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <h2 class="page-title">비즈카페</h2>
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
            <iframe src="http://ekp.smilegate.net/eNovator/Etc/Cafe/CafeUserList.aspx?ListType=1&MenuCode=118" frameborder="0"></iframe>
        </div>
    </div>
</div>
        
