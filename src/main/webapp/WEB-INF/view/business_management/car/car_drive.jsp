<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/WEB-INF/view/include/business_management_include.jsp"/>
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <h2 class="page-title">차량 운행일지</h2>            
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
            <iframe src="http://ifrs.smilegate.net/ifrs/car/carDriveInsertForm" frameborder="0"></iframe>
        </div>
    </div>
</div>