<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
	<!-- Single 파일 업로드 -->
	<div class="card shadow mb-2">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">
				<s:message code="label.upload.file" arguments="단일"/>
			</h6>
		</div>
		<div class="card-body">
			<form:form id="singleUploadForm" enctype="multipart/form-data" action="/common/upload/file" method="post">
				<input id="file" name="file" type="file" class="file" data-show-preview="false">
			</form:form>
		</div>
	</div>

	<!-- Single 파일 업로드 프리뷰 -->
	<div class="card shadow mb-2">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">
				<s:message code="label.upload.file" arguments="단일"/>
			</h6>
		</div>
		<div class="card-body">
			<form:form id="singleUploadForm2" enctype="multipart/form-data" action="/common/upload/file">
				<input id="file" name="file" type="file" class="file" data-browse-on-zone-click="true">
			</form:form>
		</div>
	</div>

	<!-- Multiple 파일 업로드 프리뷰-->
	<div class="card shadow mb-2">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">
				<s:message code="label.upload.file" arguments="복수"/>
			</h6>
		</div>
		<div class="card-body">
			<form:form id="multipleUploadForm" enctype="multipart/form-data" action="/common/upload/file">
			    <input id="file" name="file[]" multiple type="file" class="file" data-allowed-file-extensions='["xls", "xlsx", "ppt", "pptx", "doc", "docx", "csv", "txt"]'>
			</form:form>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(function() {
// 		$("#singleUploadForm2").on("submit", function() {
// 		});

// 		 $.ajax({
// 		        type: "POST",
// 		        enctype: 'multipart/form-data',
// 		        url: "<s:url value='/uploadFile'/>",
// 		        data: formData,
// 		        processData: false,
// 		        contentType: false,
// 		        success: function (response) {
// 		            console.log(response);
// 		            // process response
// 		        },
// 		        error: function (error) {
// 		            console.log(error);
// 		            // process error
// 		        }
// 		    });


// 		$("#input-folder-1").fileinput({
// 			browseLabel : "파일 선택",
// 			previewFileIcon: "<i class='fas fa-file'></i>",
// 			allowedPreviewTypes: true,
// 			previewFileIconSettings: {"xls": "<i class='fas fa-file-excel text-success'></i>"},
// 			previewFileExtSettings: {"xls": function(ext) {
//                 return ext.match(/(xls|xlsx)$/i);
//             }}
// 		});

	});
</script>
