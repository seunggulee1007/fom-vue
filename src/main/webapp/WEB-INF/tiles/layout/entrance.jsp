<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title><tiles:getAsString name="title" /></title>
	<!-- WEBJARS CSS -->
	<link href="/webjars/font-awesome/css/all.min.css" rel="stylesheet">

	<!-- CDN CSS -->
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">
	<tiles:insertAttribute name="body" />
	<!-- WEBJARS JS -->
	<script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="/webjars/jquery-ui/jquery-ui.min.js"></script>

	<!-- CUSTOM JS -->
	<script type="text/javascript" src="/resources/js/sb-admin-2.min.js"></script>
</body>
</html>