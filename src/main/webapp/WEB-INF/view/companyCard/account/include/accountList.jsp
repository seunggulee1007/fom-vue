<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 정산목록 -->
<div class="lst-tab-cnt">
	<div class="section section--border section-history">
		<div class="component-area clearfix">
			<div class="component-group">
				<div class="datepicker--range-type">
				   <div class="component-box">
						<div class="input-field ">
							<label for="fromYm" class="input-field__title">정산년월</label>
							<input type="text" readonly id="fromYm" class="input-field__input">
							<span class="sp icon-datepicker">
								<span class="blind">Calendar 열기</span>
							</span>
						</div>
					</div>
					<div class="component-box component-box--non-label">
						<p class="component-box__txt">
							~
						</p>
					</div>
					<div class="component-box component-box--non-label">
						<div class="input-field input-field--no-title ">
							<input type="text" readonly id="toYm" class="input-field__input">
							<span class="sp icon-datepicker">
								<span class="blind">Calendar 열기</span>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="component-group">
				<div class="component-box input-field">
					<label class="input-field__title">사용자</label>
					<input type="text" class="input-field__input" value="홍길동A" disabled>
				</div>
				<div class="component-box">
					<button id="btnGetCalcList" type="button" class="btn btn--bgtype">
						<span class="btn__txt">조회</span>
				   </button>
				</div>
			</div>
		</div>
		<div class="component-area">
			<div class="component-group">
				<div class="table">
					<div id="companyCardMasterList" ></div>
<!-- 					<table> -->
<!-- 						<caption><span class="blind">법인카드 정산목록</span></caption> -->
<!-- 						<colgroup> -->
<!-- 							<col width="7%"> -->
<!-- 							<col width="7%"> -->
<!-- 							<col> -->
<!-- 							<col> -->
<!-- 							<col> -->
<!-- 							<col width="14%"> -->
<!-- 							<col> -->
<!-- 							<col> -->
<!-- 							<col> -->
<!-- 							<col> -->
<!-- 						</colgroup> -->
<!-- 						<thead> -->
<!-- 							<tr> -->
<!-- 								<th class="table__th" scope="col">전자결재상태</th> -->
<!-- 								<th class="table__th" scope="col">전표처리유무</th> -->
<!-- 								<th class="table__th" scope="col">카드정산번호</th> -->
<!-- 								<th class="table__th" scope="col">정산년월</th> -->
<!-- 								<th class="table__th" scope="col">사용자</th> -->
<!-- 								<th class="table__th" scope="col">카드번호</th> -->
<!-- 								<th class="table__th" scope="col">기안일자</th> -->
<!-- 								<th class="table__th" scope="col">기안자</th> -->
<!-- 								<th class="table__th" scope="col">기안부서</th> -->
<!-- 								<th class="table__th table__txt--align-right" scope="col">총 금액<br>(VAT포함)</th> -->
<!-- 							</tr> -->
<!-- 						</thead> -->
<!-- 						<tbody> -->
<!-- 							<tr> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">진행</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">유</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">012345678</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">20/01/14</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">홍길동A</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">1234-5678-9000-0000</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">20/01/24</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">홍길동A</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt">IT기술본부</span> -->
<!-- 								</td> -->
<!-- 								<td class="table__td"> -->
<!-- 									<span class="table__txt table__txt--align-right">KRW 9,000</span> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 						</tbody> -->
<!-- 					</table> -->
				</div>
			</div>
		</div>
	</div>
<!-- 	<div class="component-group"> -->
<!-- 		<div class="pagination"> -->
<!-- 			<a href="#" class="pagination__btn pagination__btn--disabled"> -->
<!-- 				<span class="sp icon-first"> -->
<!-- 					<span class="blind">맨 처음 페이지</span> -->
<!-- 				</span> -->
<!-- 			</a> -->
<!-- 			<a href="#" class="pagination__btn pagination__btn--disabled"> -->
<!-- 				<span class="sp icon-prev"> -->
<!-- 					<span class="blind">이전 페이지</span> -->
<!-- 				</span> -->
<!-- 			</a> -->
<!-- 			<div class="pagination__inner"> -->
<!-- 				<a href="#" class="pagination__btn-txt pagination__btn-txt--active"> -->
<!-- 					<span class="pagination__page-number">1</span> -->
<!-- 					<span class="blind">페이지로 이동</span> -->
<!-- 				</a> -->
<!-- 				<a href="#" class="pagination__btn-txt"> -->
<!-- 					<span class="pagination__page-number">2</span> -->
<!-- 					<span class="blind">페이지로 이동</span> -->
<!-- 				</a> -->
<!-- 				<a href="#" class="pagination__btn-txt"> -->
<!-- 					<span class="pagination__page-number">3</span> -->
<!-- 					<span class="blind">페이지로 이동</span> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 			<a href="#" class="pagination__btn"> -->
<!-- 				<span class="sp icon-next"> -->
<!-- 					<span class="blind">다음 페이지</span> -->
<!-- 				</span> -->
<!-- 			</a> -->
<!-- 			<a href="#" class="pagination__btn"> -->
<!-- 				<span class="sp icon-last"> -->
<!-- 					<span class="blind">맨 뒤 페이지</span> -->
<!-- 				</span> -->
<!-- 			</a> -->
<!-- 		</div> -->
<!-- 	</div> -->
</div>