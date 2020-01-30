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
			<div class="page-header">
				<h1>글쓰기</h1>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<form id="register-form" class="well" method="post" action="/common/editor/save">
						<div class="form-group">
							<label>제목</label>
							<input type="text" class="form-control" name="title" id="board-title"/>
						</div>
						<div class="form-group">
							<label>작성자</label>
							<input type="text" class="form-control" name="writer" id="board-writer"/>
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea rows="10" class="form-control" name="contents" id="board-contents"></textarea>
						</div>
						<div class="text-right">
							<button type="button" class="btn btn-primary" id="btn-add-form">등록</button>
						</div>
					</form>
				</div>
			</div>
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
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
		elPlaceHolder: "board-contents",
		sSkinURI: "/resources/smarteditor2/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
});

// textArea에 이미지 첨부
function pasteHTML(filepath){
	setTimeout(function() {
    	var sHTML = '<img src="/editor/resources/images/'+filepath+'">';
    	oEditors.getById["board-contents"].exec("PASTE_HTML", [sHTML]);
	}, 5000);
}

// 등록버튼 클릭시 실행할 코드
$('#btn-add-form').click(function() {
	if ($("#board-title").val() == '') {
		alert("제목을 입력하세요");
		return false;
	}
	if ($("#board-writer").val() == '') {
		alert("작성자를 입력하세요");
		return false;
	}
	oEditors.getById["board-contents"].exec("UPDATE_CONTENTS_FIELD", [ ]);
	if ($("#board-contents").val() == '') {
		alert("내용을 입력하세요");
		return false;
	}

	$("#register-form").submit();
});























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