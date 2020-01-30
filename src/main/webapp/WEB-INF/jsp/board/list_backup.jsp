<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>게시판 Sample</title>
	<link href="/resources/css/board.css" rel="stylesheet">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
	
	<style>
	.btn_write{
		display: inline-block; width: 94px; height: 26px; border: 1px solid #e4e4e4; font-size: 13px; font-weight: 600; color: #777; letter-spacing: -1px; line-height: 26px;b text-align: center;
	}
	</style>
</head>

<body>
	<div class="content_wrap" id="content_wrap">
		<div class="content_inner">
			<p class="container_txt">게시판</p>
			<div class="content">
				<div class="content_section">
					<div class="content_area">
						<div class="table_section">
							<!-- [D] 데이터가 없는 경우 .tbl_area_nodata 추가 -->
							<div class="tbl_area">
								<table>
									<colgroup>
										<col style="width: 150px;">
										<col style="width: 170px;">
										<col style="width: 160px;">
										<col style="width: auto;">
										<col style="width: 160px;">
									</colgroup>
									<thead>
										<tr>
											<th class="title">번호</th>
											<th class="title">제목</th>
											<th class="title">작성자</th>
											<th class="title">내용</th>
											<th class="date">날짜</th>
										</tr>
									</thead>
									<tbody id="board-contents">
									</tbody>
								</table>

								<!-- [D] 내용이 없는 경우 .is_on 추가 -->
								<div class="tbl_nodata">
									<p class="tbl_txt">필요하신 서비스를 등록해주세요.</p>
									<a href="#" class="btn_apply">서비스 문의 / 요청하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a href='/post' onClick='fn_write()' class="btn_write">글쓰기</a>

				<div class="pagination_section">
					<div class="page_area" id="paginationUI"></div>
				</div>
			</div>
		</div>
	</div>

	<script>
		var rows = 5;
		
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
			var arr = result.resultValue.list;
			var html = '';
			for (var i = 0; i < arr.length; i++) {
				html += '<tr>';
				html += '<td class="category"><span class="tag tag_step03">'
						+ arr[i].rnum + '</span></td>';
				html += '<td class="title"><a href="">' + arr[i].boardTitle
						+ '</a></td>';
				html += '<td class="category">' + arr[i].boardWriter + '</td>';
				html += '<td class="title">' + arr[i].boardContent + '</td>';
				html += '<td class="date">' + arr[i].boardCreated + '</td>';
				html += '</tr>';
			}
			console.log("html:" + html);
			return html;
		}
		function makePaginatinHtml(result) {
			console.log('makePaginatinHtml 들어옴');
			console.log('result:' + result);
			var html = '';
			var pagemarker = result.resultValue.pagemarker;
			console.log("pagemarker:" + pagemarker);
			console.log("pagemarker.prev : " + pagemarker.prev);
			for (var i = pagemarker.startPage; i <= pagemarker.endPage; i++) {
				if (pagemarker.cri.page == i) {
					html += '<strong class="page_num is_on">' + i + '</strong>';
				} else {
					html += '<a href="javascript:searchList(' + i + ')"'
							+ 'class="page_num">' + i
							+ '</a>';
				}
			}
			if (pagemarker.prev) {
				html += '<a href="javascript:searchList(' + (pagemarker.cri.page - 1) + ')"'
						+ ' class="page_btn page_prev is_off">이전</a>';
			}
			if (pagemarker.next) {
				html += '<a href="javascript:searchList(' + (pagemarker.cri.page + 1) + ')"'
						+ ' class="page_btn page_next is_on">다음</a>';
			}
			return html;
		}
	</script>
</body>
</html>