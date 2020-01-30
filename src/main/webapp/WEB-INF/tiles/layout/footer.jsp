<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>&copy;Smilegate. All Rights Reserved</span>
    </div>
  </div>
</footer>
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
