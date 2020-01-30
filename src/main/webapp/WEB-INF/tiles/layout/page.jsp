<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title><tiles:getAsString name="title" /></title>
	<!-- WEBJARS CSS -->
	<link href="/webjars/font-awesome/css/all.min.css" rel="stylesheet">

	<!-- CUSTOM CSS -->
	<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

	<!-- CDN CSS -->
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="http://static.smilegate.net/static/AUIGrid/AUIGrid_style.css " rel="stylesheet">


	<!-- WEBJARS JS -->
	<script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- left layer -->
		<tiles:insertAttribute name="leftmenu" />

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<div id="content">
				<!-- top layer-->
				<tiles:insertAttribute name="header" />

				<!-- middle layer -->
				<tiles:insertAttribute name="body" />
			</div>

			<!-- bottom layer -->
      		<tiles:insertAttribute name="footer" />
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery validation library -->
    <script type="text/javascript" src="/webjars/jquery-validation/jquery.validate.min.js"></script>
    <!-- jQuery validation 과 bootstrap 호환성 위해 추가 -->
    <script type="text/javascript" src="/resources/js/validator.js"></script>

	<!-- WEBJARS JS -->
	<script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="/webjars/jquery-ui/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/webjars/jquery-easing/jquery.easing.min.js"></script>

	<!-- CUSTOM JS -->
	<script type="text/javascript" src="/resources/js/sb-admin-2.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>

	<!-- CDN JS -->
	<script type="text/javascript" src="http://static.smilegate.net/static/AUIGrid/AUIGridLicense.js"></script>
	<script type="text/javascript" src="http://static.smilegate.net/static/AUIGrid/AUIGrid.js"></script>
</body>
</html>