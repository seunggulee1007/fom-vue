<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<footer class="footer">
    <div class="footer-item">
        <ul>
            <li>
                <a href="#"><span>스마일넷 배너등록</span></a>
            </li>
            <li>
                <a href="#"><span>개선 및 건의</span></a>
            </li>
            <li>
                <a href="#"><span>메뉴추가1</span></a>
            </li>
        </ul>
    </div>
    <div class="footer-copyright">
        <small class="copyright-txt">© Smilegate. All Rights Reserved.</small>
    </div>
</footer>
<!-- 
<div class="footer__inner">
	<ul class="footer__util">
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
	<li class="footer__util-item">
		<a href="#" class="footer__util-menu">
			<span class="footer__util-menu-txt">메뉴추가1</span>
		</a>
	</li>
	<li class="footer__util-item">
		<a href="#" class="footer__util-menu">
			<span class="footer__util-menu-txt">메뉴추가2</span>
		</a>
	</li>
	</ul>
	<div class="dropdown" style="width:212px">			
		<a href="#" class="dropdown__button">
			<span class="dropdown__button-text">패밀리 사이트 바로가기</span>
			<span class="sp icon-arrow"><span class="blind">옵션창 열기</span></span>
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
	</div>
	<small class="copyright-txt">© Smilegate. All Rights Reserved.</small>
</div> -->

<script type="text/javascript">
//UV, PV 공통체크 로직
<%-- var userId = "<%=request.getHeader("SM_USER")%>"; --%>
var userId = "${accessId}"     // 사용자 계정
var docName = "HELPDESK";      // 시스템 명칭
var clientIp = "${accessIp}";
var domain = "${accessDomain}";
// console.log(userId  ":"  docName  ":"  clientIp  ":"  domain);
// navilog(userId, docName, clientIp, domain);
</script>
