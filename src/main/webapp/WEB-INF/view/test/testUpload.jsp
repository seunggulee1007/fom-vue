<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<script type="text/javascript" src="/resources/js/AUIGrid/js-xlsx/shim.js"></script>
<script type="text/javascript" src="/resources/js/AUIGrid/js-xlsx/jszip.js"></script>
<script type="text/javascript" src="/resources/js/AUIGrid/js-xlsx/xlsx.js"></script>
<script type="text/javascript" src="/resources/js/AUIGrid/export_server_samples/FileSaver.min.js"></script>
<script type="text/babel" src="/resources/js/testUpload.js"></script>

<script type="text/javascript" src="/resources/js/AUIGrid/pdfkit/AUIGrid.pdfkit.js"></script>
<input type="file" id="fileSelector" name="files" accept=".xlsx">

<div id="grid_wrap" style="width:1200px; height:450px; margin:0 auto;"></div>

<p id="ellapse"></p>
<button type="button" onclick="expandAll()">트리 전체 열기/닫기</button>
<button type="button" onclick="saveData()">서버로 고고</button>
<button type="button" onclick="exportExcel();">엑셀다운로드</button>