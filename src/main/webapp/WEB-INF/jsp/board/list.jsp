<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE>
<head>
<meta charset="UTF-8">
<title>게시판 Sample</title>
	<!-- css -->
	<style type="text/css">
		@import url("/resources/css/libs.min.css");
		@import url("/resources/css/prism.min.css");
		@import url("/resources/css/smilegate_ux_page.css");
		@import url("/resources/css/smilegate_ux_page.min.css");
		@import url("/resources/css/smilegate_ux_template.css");
		@import url("/resources/css/smilegate_ux_template.min.css");
	</style>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/resources/js/libs/prism.js"></script>
</head>

<body>
	<!-- [D] Table 
	* Table 기본 구조
	<div class="table">
		<table>
		<caption><span class="blind">caption content</span></caption>
		</table>
	</div>

	1. 텍스트 우측정렬 : .table__txt--align-right 클래스 추가
	2. 폰트 컬러 (blue_dark) : .table__txt--blue-dark 클래스 추가
	3. 폰트 컬러 (gray) : .table__txt--gray 클래스 추가 

	[참고사항]
	1. List (General Type)은 Table 태그로 이용하여 작업합니다.
	2. 아래 예시 코드에 대한 화면은 00_Template_Guide_UIO 페이지를 참고하세요.
-->

<form:form method = "post" action="/common/board/downloadExcel" modelAttribute="BoardForm"> 
	<%-- <form:form method = "post" action="/common/board/downloadExcel" commandName="boardForm">  --%>
	<div class="table">
		<table>
		<caption><span class="blind">자료 게시판</span></caption>
		<colgroup>
			<col style="width:104px">
			<col>
			<col style="width: 86px">
			<col style="width: 105px">
			<col style="width: 123px">
			<col style="width: auto;">
			<col style="width: 59px">
		</colgroup>
		<thead>
			<tr>
			<th scope="col" class="table__th">번호</th>
			<th scope="col" class="table__th">제목</th>
			<th scope="col" class="table__th">작성자</th>
			<th scope="col" class="table__th">내용</th>
			<th scope="col" class="table__th">날짜</th>				
			</tr>
		</thead>
		<tbody id = "board-contents">
		<%-- 	<form:input path="title" value="타이틀이다 임마"/>
			<form:input path="boardList[0].boardTitle" value="board 타이틀이담마"/> --%>
		</tbody>
		</table>
		
		<div class="pagination" id="paginationUI">
		</div>
	</div>
	

	<!-- <button type="button" class="btn btn--small" onclick="javascript:downloadExcel();"> -->
	<button type="submit" class="btn btn--small">
		<span class="btn__txt">Excel download</span>
	</button>
	
</form:form> 

<script>
		var rows = 5;
		var listResult ;
		
		$(document).ready(function() {
			console.log('on Ready');
			searchList(1); //1페이지부터 시작
		});//End of On Ready
		
		function searchList(pageNo) {
			$.ajax({
				url : '/boards/'+rows+'/'+pageNo,
				type : 'GET',
				success : function(data, xhr, request) {
					console.log("sucess");
					console.log("data type:" + typeof data);
					console.log(data);
					var result = makeListHtml(data);
					$("#board-contents").empty(); //선택한 요소의 자식 요소를 모두 삭제
					$("#board-contents").html(result);
					result = makePaginatinHtml(data);
					$("#paginationUI").empty();
					$("#paginationUI").append(result);
					console.log("페이징결과:"+result)
					console.log(request.getResponseHeader('Link'));
				},
				error : function(request, status, error) {
					alert("code=" + request.status + ", message="
							+ request.responseText + ", error=" + error);
				}
			});
		}
		 function makeListHtml(result) {
			console.log('makeListHtml 들어옴');
			console.log('result:' + result);
			listResult = result.resultValue.list;
			var html = '';
			for (var i = 0; i < listResult.length; i++) {
				html += '<input type="hidden" name="boardList['+ i +'].boardTitle" value='+listResult[i].boardTitle+'/>';
				html += '<input type="hidden" name="boardList['+ i +'].boardSeq" value='+listResult[i].boardSeq+'/>';
				html += '<input type="hidden" name="boardList['+ i +'].boardContent" value='+listResult[i].boardContent+'/>';
				html += '<input type="hidden" name="boardList['+ i +'].boardWriter" value='+listResult[i].boardWriter+'/>';
				html += '<input type="hidden" name="boardList['+ i +'].boardCreated" value='+listResult[i].boardCreated+'/>';
			
				html += '<tr>';
				html += '<td class="table__td">	<span class="table__txt table__txt--align-right">'
						+ listResult[i].rnum + '</span></td>';
				html += '<td class="table__td"><a href="#" class="table__title"><span class="table__txt">' + listResult[i].boardTitle
						+ '</span></a></td>';
				html += '<td class="table__td"> <span class="table__txt">' + listResult[i].boardWriter + '</span></td>';
				html += '<td class="table__td"> <span class="table__txt">' + listResult[i].boardContent + '</span></td>';
				html += '<td class="table__td"> <span class="table__txt table__txt--gray">' + listResult[i].boardCreated + '</span></td>';
				html += '</tr>';
			}
			return html;
		}
			 
		function makePaginatinHtml(result) {
			console.log('makePaginatinHtml 들어옴');
			console.log('result:' + result);
			var html = '';
			var pagemarker = result.resultValue.pagemarker;
			console.log("pagemarker:" + pagemarker);
			console.log("pagemarker.prev : " + pagemarker.prev);
			
			if (pagemarker.prev) {
				html += '<a href="javascript:searchList(' + (pagemarker.cri.page - 1) + ')"'
						+ '  class="pagination__btn pagination__btn--disabled"><span class="sp icon-prev"><span class="blind">이전 페이지</span></span></a>';
			}
			
			html += '<div class="pagination__inner">';
			for (var i = pagemarker.startPage; i <= pagemarker.endPage; i++) {
				if (pagemarker.cri.page == i) {
					html += '<a class="pagination__btn-txt pagination__btn-txt--active"><span class="pagination__page-number">' + i + 
						'</span><span class="blind">페이지로 이동</span></a>'
				} else {
					
					html += '<a href="javascript:searchList(' + i + ')"'
							+ ' class="pagination__btn-txt"><span class="pagination__page-number">'+
							i + '</span><span class="blind">페이지로 이동</span></a>'
				}
			}
			html += '</div>';
			
			if (pagemarker.next) {
				html += '<a href="javascript:searchList(' + (pagemarker.cri.page + 1) + ')"'
						+ ' class="pagination__btn"><span class="sp icon-next"><span class="blind">다음 페이지</span></span></a>';
			}
			
			return html;
		}
		
		function downloadExcel(){
			console.log("listResult:"+listResult);
			console.log(typeof listResult);

			$.ajax({
				url : '/common/board/downloadExcel',
				type : 'POST',
				data : {
					boardForm : listResult,
				},
				success : function(data, xhr, request) {
					console.log("data:"+data);
					console.log("sucess");
				},error : function(request, status, error) {
					alert("code=" + request.status + ", message="
							+ request.responseText + ", error=" + error);
				}
			});
		}	
	</script>

</body>
</html>