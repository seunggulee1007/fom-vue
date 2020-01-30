<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
	<!-- Single 파일 업로드 -->
	<div class="card shadow mb-2">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">
				<s:message code="label.upload.excel" arguments="단일"/>
			</h6>
		</div>
		<div class="card-body">
			<form:form id="singleExcelUploadForm" enctype="multipart/form-data" action="/common/upload/excel" method="post">
				<div>
					<button type="button" id="dynamicTemplateDown" class="btn btn-warning btn-sm">
						<i class="fas fa-file-excel"></i> <s:message code="label.upload.excel.template.dynamic"/>
					</button>
					<button type="button" id="staticTemplateDown" class="btn btn-info btn-sm">
						<i class="fas fa-file-excel"></i> <s:message code="label.upload.excel.template.static"/>
					</button>
				</div>
				<br>
				<div>
					<input id="file" name="file" type="file" class="file" data-browse-on-zone-click="true" data-allowed-file-extensions='["xls", "xlsx", "csv"]'>
				</div>
			</form:form>
		</div>
	</div>

	<!-- 업로드 내역-->
	<div class="card shadow mb-2">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">
				<s:message code="label.upload.excel.list"/>
			</h6>
		</div>
		<div class="card-body">

		</div>
	</div>
</div>

<script type="text/javascript">
	$(function() {
		$("#dynamicTemplateDown").click(function() {
			location.href="/common/download-excel/dynamic";
		});

		$("#staticTemplateDown").click(function() {
			location.href="/common/download-excel/static";
		});
	});
</script>