<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <title>Smilegate 재무지원포탈 S-FIM</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="/resources/fim/css/smilegate_ux_template.css">
    <link rel="stylesheet" type="text/css" href="/resources/fim/css/style.css">

    <!-- AUIGrid.css -->
    <link href="http://static.smiledev.net/static/AUIGrid/AUIGrid_style.css " rel="stylesheet" type="text/css">

    <title><tiles:getAsString name="title" /></title>
    <!-- WEBJARS CSS -->
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.js"></script>
    <script type="text/javascript" src="/webjars/jquery-blockui/2.70/jquery.blockUI.js"></script>
    <script type="text/javascript" src="/webjars/jquery-form/4.2.2/jquery.form.min.js"></script>
    <script type="text/javascript" src="/webjars/jquery-ui/1.12.1/jquery-ui.min.js"></script>
    
    <!-- AUIGrid.js-->
    <script type="text/javascript" src="http://static.smiledev.net/static/AUIGrid/AUIGridLicense.js"></script>
    <script type="text/javascript" src="http://static.smiledev.net/static/AUIGrid/AUIGrid.js"></script>

    <!--[if lt IE 9]>
        <script type="text/javascript" src="js/html5shiv.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="/resources/fim/js/common/common.js"></script>
</head>
<body>
    <tiles:insertAttribute name="body" />
</body>
</html>
