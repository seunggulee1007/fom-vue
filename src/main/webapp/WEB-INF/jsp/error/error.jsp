<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container-fluid">
	<div class="text-center">
		<div class="error mx-auto" data-text="${requestScope['javax.servlet.error.status_code']}"><c:out value="${requestScope['javax.servlet.error.status_code']}"/></div>
		<div><c:out value="${requestScope['javax.servlet.error.message']}"/></div>
		<p class="lead text-gray-800 mb-5">Smile <sup>Q</sup> 로 문의 주세요!</p>
		<p class="text-gray-500 mb-0"><c:out value="${requestScope['javax.servlet.error.exception']}"/></p>
		<a href="/sample/index">&larr; Back to Dashboard</a>
	</div>
</div>
