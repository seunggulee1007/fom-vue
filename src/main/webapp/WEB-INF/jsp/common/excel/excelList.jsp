<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Excel List Example</title>
	
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

<div class="table">
	<form>
		<table>
		<caption><span class="blind">자료 게시판</span></caption>
		<colgroup>
			<col style="width:104px">
			<col>
			<col style="width: 86px">
			<col style="width: 105px">
			<col style="width: 123px">
			<col style="width: 68px">
			<col style="width: 59px">
		</colgroup>
		<thead>
			<tr>
			<th scope="col" class="table__th">분류</th>
			<th scope="col" class="table__th">제목</th>
			<th scope="col" class="table__th">작성자</th>
			<th scope="col" class="table__th">작성일</th>
			<th scope="col" class="table__th">수정일</th>				
			<th scope="col" class="table__th table__txt--align-right">조회</th>
			<th scope="col" class="table__th">첨부</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td class="table__td">
				<span class="table__txt table__txt--blue-dark">온라인리뷰</span>
			</td>
			<td class="table__td">
				<a href="#" class="table__title">
					<span class="table__txt">Mary Meeker 인터넷 트렌드 보고서 2017</span>
				</a>
			</td>
			<td class="table__td">
				<span class="table__txt">이동훈E</span>
			</td>
			<td class="table__td">
				<span class="table__txt table__txt--gray">2019/08/10</span>
			</td>
			<td class="table__td">
				<span class="table__txt">2019/09/18</span>
			</td>
			<td class="table__td">
				<span class="table__txt table__txt--align-right">614</span>
			</td>
			<td class="table__td">
				<span class="sp icon-attachment">
					<span class="blind">첨부파일 있음</span>
				</span>
			</td>
			</tr>
			<tr>
			<td class="table__td">
				<span class="table__txt table__txt--blue-dark">개발산출물</span>
			</td>
			<td class="table__td">
				<a href="#" class="table__title">
					<span class="table__txt">갈망의 아궁이 - 데브캣 스튜디오 김동건 본부장</span>
				</a>
			</td>
			<td class="table__td">
				<span class="table__txt">이명준</span>
			</td>
			<td class="table__td">
				<span class="table__txt table__txt--gray">2019/08/10</span>
			</td>
			<td class="table__td">
				<span class="table__txt">2019/09/18</span>
			</td>
			<td class="table__td">
				<span class="table__txt table__txt--align-right">64758</span>
			</td>
			<td class="table__td"></td>
			</tr>
			<tr>
			<td class="table__td">
				<span class="table__txt table__txt--blue-dark">개발산출물</span>
			</td>
			<td class="table__td">
				<a href="#" class="table__title">
					<span class="table__txt">게임 디렉터가 뭐하는 건가요?</span>
				</a>
			</td>
			<td class="table__td">
				<span class="table__txt">김재훈 B</span>
			</td>
			<td class="table__td">
				<span class="table__txt table__txt--gray">2019/08/10</span>
			</td>
			<td class="table__td">
				<span class="table__txt">2019/09/18</span>
			</td>
			<td class="table__td">
				<span class="table__txt table__txt--align-right">11</span>
			</td>
			<td class="table__td"></td>
			</tr>
		</tbody>
	</table>
</form>
	
	<button type="submit" class="btn" >
		<span class="btn__txt">Download Excel</span>
	</button>
</div>

</body>
</html>