<%--
/**
  * @fileName       pageHTLF.jsp
  * @description    Tiles Default Template
  * @author         SGH 정보개발팀 양세랑
  * @modification information
  * date           user    contents
  * -------        ------  --------------------------
  * 2020.01.20.    양세랑       최초 생성
  *
  */
  --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title><tiles:getAsString name="title" /></title>
    <!-- <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'> -->
    <link rel="stylesheet" type="text/css" href="/resources/css/smilegate_ux_template.css">    
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    
    <!-- AUIGrid.css -->
    <link href="http://static.smiledev.net/static/AUIGrid/AUIGrid_style.css " rel="stylesheet" type="text/css">
    
    <title><tiles:getAsString name="title" /></title>
    <!-- WEBJARS CSS -->
    <script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.js"></script>
    <script type="text/javascript" src="/webjars/axios/0.19.0/dist/axios.js"></script>
    <script type="text/javascript" src="/webjars/jquery-blockui/2.70/jquery.blockUI.js"></script>
    
    
    <style>
        [v-cloak] {
          display: none;
        }
    </style>
    <!-- AUIGrid.js-->
    <script type="text/javascript" src="http://static.smiledev.net/static/AUIGrid/AUIGridLicense.js"></script>
    <script type="text/javascript" src="http://static.smiledev.net/static/AUIGrid/AUIGrid.js"></script>
    <!-- WEBJARS JS -->
    <script type="text/javascript" src="/webjars/babel-polyfill/7.0.0-beta.3/dist/polyfill.min.js"></script>
    <script type="text/javascript" src="/webjars/babel-standalone/6.21.1/babel.min.js"></script>

    <script type="text/javascript" src="/resources/js/script.js"></script>    

    <!--[if lt IE 9]>
        <script type="text/javascript" src="js/html5shiv.min.js"></script>
    <![endif]-->    
    <!-- vue.js -->
    <script type="text/javascript" src="/webjars/vue/2.6.11/vue.js"></script>
    <script type="text/babel" src="/resources/js/common/vueCommon.js"></script>
    <script type="text/javascript" src="/resources/js/common.js"></script>
</head>
<body>
    <!-- Page Wrapper -->
    <div class="wrap">
        <div class="container-xl">
            <div class="row">
                <div class="col-xl">
                    <tiles:insertAttribute name="header" />
                </div>
            </div>
            <div class="row">
                <div class="col-xl">
                    <tiles:insertAttribute name="topMenu" />
                </div>
            </div>
            <div class="row">
                <div class="col-10 col-xl-10">
                    <tiles:insertAttribute name="body" />
                </div>
            </div>
            <div class="row">
                <div class="col-xl">
                    <tiles:insertAttribute name="footer" />
                </div>
            </div>
        </div>
    </div>
</body>
</html>
