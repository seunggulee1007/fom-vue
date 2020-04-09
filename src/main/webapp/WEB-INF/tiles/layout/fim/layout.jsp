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
    <script type="text/javascript" src="/webjars/axios/0.19.0/dist/axios.js"></script>
    <script type="text/javascript" src="/webjars/jquery-blockui/2.70/jquery.blockUI.js"></script>
    <script type="text/javascript" src="/webjars/jquery-form/4.2.2/jquery.form.min.js"></script>

    <style>
        [v-cloak] {
          display: none;
        }
        a {
            cursor : pointer;
        }
    </style>
    <!-- AUIGrid.js-->
    <script type="text/javascript" src="http://static.smiledev.net/static/AUIGrid/AUIGridLicense.js"></script>
    <script type="text/javascript" src="http://static.smiledev.net/static/AUIGrid/AUIGrid.js"></script>
    <!-- WEBJARS JS -->
    <script type="text/javascript" src="/webjars/babel__polyfill/7.8.7/dist/polyfill.min.js"></script>
    <script type="text/javascript" src="/webjars/babel-standalone/6.21.1/babel.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script>
    <script type="text/javascript" src="/resources/fim/js/browser.js"></script>

    <script type="text/javascript" src="/resources/fim/js/script.js"></script>

    <!--[if lt IE 9]>
        <script type="text/javascript" src="js/html5shiv.min.js"></script>
    <![endif]-->
    <!-- vue.js -->
    <script type="text/javascript" src="/webjars/vue/2.6.11/vue.js"></script>
    <script type="text/babel" src="/resources/fim/js/common/vueCommon.js"></script>
    <script type="text/babel" src="/resources/fim/js/common.js"></script>
</head>
<body>
    <ul class="skip">
        <li><a href="#gnb" onclick="document.getElementById('gnb').tabIndex=-1;document.getElementById('gnb').focus();return false;">메뉴 바로가기</a></li>
        <li><a href="#container" onclick="document.getElementById('container').tabIndex=-1;document.getElementById('container').focus();return false">본문 바로가기</a></li>
    </ul>
    <div class="wrap">
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="leftmenu" />
        <tiles:insertAttribute name="body" />
        <tiles:insertAttribute name="footer" />
    </div>
</body>
</html>
