<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

	<!-- Company or Service Logo -->
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/sample/index">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">
			<sup>J</sup><sub>ava</sub>
            <sup>F</sup><sub>ramework</sub>
            <sup>T</sup><sub>emplate</sub>
		</div>
	</a>

	<!-- Line Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active"><a class="nav-link" href="/sample/index"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

	<!-- Line Divider-->
<!-- 	<hr class="sidebar-divider"> -->

	<!-- Heading Title -->
<!-- 	<div class="sidebar-heading">Inquery</div> -->
<%--     <li class="nav-item"><a class="nav-link" href="/inquires/create"> <i class="fas fa-fw fa-check-circle"></i> <span><s:message code='label.inquire.create' /></span></a></li> --%>
<%--     <li class="nav-item"><a class="nav-link" href="/inquires/view"> <i class="fas fa-fw fa-question"></i> <span><s:message code='label.inquire.request' /></span></a></li> --%>

	<!-- Line Divider -->
	<hr class="sidebar-divider">

		<!-- Heading Title -->
	<div class="sidebar-heading">Sample</div>

	<!-- Nav Item - Validation Check Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseValidation" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-check-circle"></i> <span>Validation</span>
	</a>
		<div id="collapseValidation" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Validation</h6>
				<a class="collapse-item" href="/inquires/Z/view">view권한 테스트</a>
				<a class="collapse-item" href="/inquires/create">Frontend 유효성 검증</a>
				<a class="collapse-item" href="/inquires/create2">Backend 유효성 검증 #1</a>
				<a class="collapse-item" href="/inquires/create3">Backend 유효성 검증 #2</a>
			</div>
		</div></li>

	<!-- Nav Item - Upload Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUpload" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>Upload</span>
	</a>
		<div id="collapseUpload" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Upload</h6>
				<a class="collapse-item" href="/common/upload/file">File Upload</a>
				<a class="collapse-item" href="/common/upload/excel">excel Upload</a>
			</div>
		</div></li>

	<!-- Nav Item - Grid Collapse Menu-->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseGrid" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-table"></i> <span>Grid</span>
	</a>
		<div id="collapseGrid" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">AUIGrid</h6>
				<a class="collapse-item" href="/mobile/orders/view">Eager Loading Sample</a>
				<a class="collapse-item" href="/mobile/orders/view2">Lazy Loading Sample</a>
			</div>
		</div></li>

	<!-- Nav Item - Editor Collapse Menu-->
    <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseEditor" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-edit"></i> <span>Editor</span>
    </a>
         <div id="collapseEditor" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">Editor Template</h6>
                 <a class="collapse-item" href="/common/editor/smart">Smart Editor</a>
                 <a class="collapse-item" href="/common/editor/daume">Daum Editor</a>
                 <a class="collapse-item" href="/common/editor/toast">Toast Editor</a>
             </div>
        </div></li>
	<!-- Nav Item - Charts -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseChart" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-edit"></i> <span>charts</span>
    </a>
        <div id="collapseChart" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                 <h6 class="collapse-header">Charts Template</h6>
                 <a class="collapse-item" href="/common/charts/column">column</a>
             </div>
        </div></li>
    

	<!-- Line Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Heading Title -->
	<div class="sidebar-heading">REST API</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRestApi" aria-expanded="true" aria-controls="collapseRestApi"> <i class="fas fa-envelope-square"></i> <span>E-mail</span>
	</a>
		<div id="collapseRestApi" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">email</h6>
				<a class="collapse-item" href="buttons.html">Buttons</a> <a class="collapse-item" href="cards.html">Cards</a>
			</div>
		</div></li>
	<!-- Line Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Heading Title -->
	<div class="sidebar-heading">Interface</div>

	<!-- Nav Item - SmileDoc Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSmileDoc" aria-expanded="true" aria-controls="collapseSmileDoc"> <i class="fas fa-fw fa-cloud-upload-alt"></i> <span>SmileDoc</span>
	</a>
		<div id="collapseSmileDoc" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">SmileDoc Integration</h6>
				<a class="collapse-item" href="/smiledoc/main">main</a>
			</div>
		</div></li>

	<!-- Nav Item - Components Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseComponents" aria-expanded="true" aria-controls="collapseComponents"> <i class="fas fa-fw fa-cog"></i> <span>Components</span>
	</a>
		<div id="collapseComponents" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Custom Components:</h6>
				<a class="collapse-item" href="buttons.html">Buttons</a> <a class="collapse-item" href="cards.html">Cards</a>
			</div>
		</div></li>

	<!-- Nav Item - Utilities Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities"> <i class="fas fa-fw fa-wrench"></i>
			<span>Utilities</span>
	</a>
		<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Custom Utilities:</h6>
				<a class="collapse-item" href="utilities-color.html">Colors</a> <a class="collapse-item" href="utilities-border.html">Borders</a> <a class="collapse-item" href="utilities-animation.html">Animations</a> <a
					class="collapse-item" href="utilities-other.html">Other</a>
			</div>
		</div></li>

	<!-- Line Divider -->
	<hr class="sidebar-divider">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>
<!-- End of Sidebar -->