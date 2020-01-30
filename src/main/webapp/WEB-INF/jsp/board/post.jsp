
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>글 작성/수정</title>
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

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE>
<body>
	<div class="content_wrap" id="content_wrap">
		<div class="content_inner">
			<p class="container_txt">게시판</p>
			<div class="content" style="padding: 20px;">
				<div class="content_section">
					<div class="content_area">
						<div class="inp_group">
							<em class="inp_tit">요청제목</em>
							<!-- [D] input 활성화(focus) 상태일 경우 inp_bx에 is_on 클래스 추가 / 다른 영역 선택 시 해당 클래스 제거 -->
							<div class="inp_bx request_tit_bx">
								<span class="inp_placetxt"> <!-- [D] input 선택 시 아래 placeholder 숨김 처리 -->
									<input type="text" class="inner_txt" title="요청제목 입력" value="">
								</span>
							</div>
						</div>
						<div class="inp_group">
							<em class="inp_tit">내용 <span class="em">*<span
									class="blind">필수입력</span></span></em>
							<div class="inp_placetxt">
								<!-- [D] textarea 선택 시 아래 placeholder 숨김 처리 -->
								<textarea name="request_comment" class="inp_txtarea"
									title="요청내용 입력"></textarea>
							</div>
						</div>
						<div class="btn_section">
							<a href="/boardlist" class="btn btn_reset">목록으로 돌아가기</a> <a
								href="#" class="btn btn_em">등록하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>