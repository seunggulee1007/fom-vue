<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="container">
	<!-- smiledoc main -->
	<div class="card shadow mb-2">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">SESSION-KEY 얻기</h6>
		</div>
		<div class="card-body">
			<div>
				<button type="button" id="getSessionKey" class="btn btn-warning btn-sm">
					<i class="fas fa-key"></i>
					세션키 생성
				</button>
			</div>
			<div class="result">

			</div>
			<br>
		</div>
	</div>
</div>
<script type="text/javascript">
function jsonp1572501251536(data) {
	console.log(data);
	console.log(JSON.stringify(data));
}
function test() {
	var url = "http://127.0.0.1:36482/ping?sessionKey=null&updateIP=smiledoc.smilegate.net&updatePort=8100&updateContextPath=client_one_x&RPCIP=smiledoc.smilegate.net&RPCPort=8100&RPCContextPath=xmlrpc&storageIP=smiledocwas.smilegate.net&storagePort=8100&storageContextPath=&useSSL=false&account=&tenantID=&callback=jsonp1572501251536";
	$.get(url, function(response) {
		jsonp1572501251536(response);
	});
}
$(function(){
	$("#getSessionKey").click(function() {
		/*
		$.ajax({
			url: "http://smiledoc.smilegate.net:8100/authSSO/auth.do",
			method: "GET",
			dataType: "text/html",
			success: function() {
				test();
			}
		});
		// cors 영향 받음

		$.get("http://smiledoc.smilegate.net:8100/authSSO/auth.do", function(data) {
			$(".result").html(data);
		});
		// cors 영향 없음
		*/


		$.get("http://smiledoc.smilegate.net:8100/authSSO/auth.do", function(data) {
			test();
		});
	});
});
</script>