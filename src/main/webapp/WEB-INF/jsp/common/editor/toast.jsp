<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<head>

	<link rel="stylesheet" href="https://uicdn.toast.com/tui-editor/latest/tui-editor.css"></link>
	<link rel="stylesheet" href="https://uicdn.toast.com/tui-editor/latest/tui-editor-contents.css"></link>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.33.0/codemirror.css"></link>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/github.min.css"></link>
	<script src="https://uicdn.toast.com/tui-editor/latest/tui-editor-Editor-full.js"></script>
</head>

<div class="container">
	<!-- 문의·요청 등록 -->
	<div class="card shadow mb-2">
		<div class="card-body">
			<div id="editSection"></div>
		</div>
	</div>
</div>

<script type="text/javascript">
var editor = new tui.Editor({
    el: document.querySelector('#editSection'),
    initialEditType: 'markdown',
    previewStyle: 'vertical',
    height: '600px'
});
</script>