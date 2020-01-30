<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="container">
	<!-- Single 파일 업로드 -->
	<div class="card shadow mb-2">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">
				<p>Smart Editor 2.0 Sample</p>
			</h6>
		</div>
		<div class="card-body">
			<form id="editorForm" enctype="multipart/form-data" action="/common/editor/save" method="post">
				<div class="form-inline">
					<label>Title : </label>
					<input type="text" id="title" class="form-control input-sm" placeholder="title">
				</div>
				<textarea name="ir1" id="ir1" rows="10" cols="100"></textarea>
				<input type="button" id="saveBtn" class="btn btn-sm btn-primary" value="저장">
			</form>
		</div>
	</div>
</div>


<script type="text/javascript" src="/resources/smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
function submit(form) {
	 // 에디터의 내용이 textarea에 적용된다.
	 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);

	 // 에디터의 내용에 대한 값 검증은 이곳에서
	 // document.getElementById("ir1").value를 이용해서 처리한다.

	 try {
	     form.submit();
	 } catch(e) {}
}

var oEditors = [];

$(function() {
	nhn.husky.EZCreator.createInIFrame({
	  oAppRef: oEditors,
	  elPlaceHolder: "ir1",
	  sSkinURI: "/resources/smarteditor2/SmartEditor2Skin.html",
	  fCreator: "createSEditor2"
	});

	$("#editorForm #saveBtn").click(function() {
		 // 에디터의 내용이 textarea에 적용된다.
		 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		 var form = $("#editorForm")[0];
		 var data = new FormData(form);
		 return;
		 $.ajax({
	            type: "POST",
	            enctype: "multipart/form-data",
	            url: "/common/editor/save",
	            data: data,
	            processData: false,
		        contentType: false,
	            success: function(result) {

	            },
	            error: function(e) {

	            }
		 });
	});
});
</script>