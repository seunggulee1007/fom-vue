<%--
/**
  * @fileName       page.jsp
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
    <!-- CDN CSS -->
    <link href="http://static.smiledev.net/static/vendor/css/bootstrap-grid.min.css" rel="stylesheet">
    <!-- CUSTOM CSS -->
    <link href="/resources/common/css/smilegate_ux_common.css" rel="stylesheet">
</head>
<body>
    <!-- Page Wrapper -->
    <div class="wrap">
        <div class="container-xl">
            <div class="row">
                <div class="col-xl">
                    <tiles:insertAttribute name="body" />
                </div>
            </div>
        </div>
    </div>
    <!-- CDN JS -->
    <script type="text/javascript" src="http://static.smiledev.net/static/vendor/js/jquery-3.4.1.min.js"></script>
</body>
</html>
