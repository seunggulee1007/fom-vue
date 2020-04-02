<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 정산목록 -->
<div class="lst-tab-cnt">
	<div class="section section--border section-history">
		<div class="component-area clearfix">
			<div class="component-group">
				<div class="datepicker--range-type">
					<div class="component-box">
						<div class="input-field datepicker__v-calendar">
							<label for="date_input_exchange1" class="input-field__title">정산년월</label>
							<input type="text" v-model='searchStdDt' readonly id="date_input_exchange1" class="input-field__input">
							<v-date-picker :mode='mode' v-model='searchStdDt' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}'>
								<span class="sp icon-datepicker">
									<span class="blind">Calendar 열기</span>
								</span>
							</v-date-picker>
						</div>
					</div>
					<div class="component-box component-box--non-label">
						<p class="component-box__txt">
						~
						</p>
					</div>
					<div class="component-box component-box--non-label">
						<div class="input-field input-field--no-title datepicker__v-calendar">
							<input type="text" v-model='searchEndDt' readonly id="date_input_exchange2" class="input-field__input">
							<v-date-picker :mode='mode' v-model='searchEndDt' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}'>
							<span class="sp icon-datepicker">
								<span class="blind">Calendar 열기</span>
							</span>
							</v-date-picker>
						</div>
					</div>
				</div>
			</div>
			<div class="component-group">
				<div class="component-box input-field">
					<label class="input-field__title">요청자</label>
					<input type="text" class="input-field__input" value="홍길동A" disabled>
				</div>
				<div class="component-box">
					<button type="button" class="btn btn--bgtype">
						<span class="btn__txt">조회</span>
					</button>
				</div>
			</div>
		</div>
		<div class="component-area">
			<div class="component-group">
				<div class="table">
					<table>
						<caption><span class="blind">법인카드 정산목록</span></caption>
						<colgroup>
							<col width="5%">
                               <col width="5%">
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
                               <col>
						</colgroup>
						<thead>
							<tr>
								<th class="table__th" rowspan="2" scope="col">전자결재상태</th>
								<th class="table__th" rowspan="2" scope="col">전표처리유무</th>
								<th class="table__th" rowspan="2" scope="col">정산년월</th>
								<th class="table__th" rowspan="2" scope="col">카드번호</th>
								<th class="table__th" rowspan="2" scope="col">기안일자</th>
								<th class="table__th" rowspan="2" scope="col">기안자</th>
								<th class="table__th" rowspan="2" scope="col">기안부서</th>
								<th class="table__th" rowspan="2" scope="col">예산부서</th>
								<th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
								<th class="table__th" rowspan="2" scope="col">적요</th>
								<th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
								<th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
								<th class="table__th table__txt--align-right" rowspan="2" scope="col">금액 (VAT포함)</th>
							</tr>
							<tr>
								<th class="table__th" scope="col">중분류</th>
								<th class="table__th" scope="col">소분류</th>
								<th class="table__th" scope="col">비용항목</th>
								<th class="table__th" scope="col">Acivity</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="table__td">
									<span class="table__txt">진행</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">유</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">2020/01/14</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">1234-5678-9000-0000</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">2020/01/24</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">홍길동A</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">IT기술본부</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">IT기술본부</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">홍길동A<br><span class="table__txt-caption">정보개발시스템실</span></span>
								</td>
								<td class="table__td">
								    <span class="table__txt">[야근식대]홍길동A/2020-01-06</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">복리후생</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">야근식대</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">복리후생_식대</span>
								</td>
								<td class="table__td">
								    <span class="table__txt">인건비</span>
								</td>
								<td class="table__td">
								    <span class="table__txt table__txt--align-right">KRW 9,000</span>
								</td>
							</tr>

							<tr>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							        <span class="table__txt"></span>
							    </td>
							    <td class="table__td">
							         <span class="table__txt"></span>
							     </td>
							    <td class="table__td">
							        <span class="table__txt table__txt--align-right"></span>
							    </td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="component-group">
		<div class="pagination">
			<a href="#" class="pagination__btn pagination__btn--disabled">
				<span class="sp icon-first">
					<span class="blind">맨 처음 페이지</span>
                </span>
			</a>
			<a href="#" class="pagination__btn pagination__btn--disabled">
				<span class="sp icon-prev">
					<span class="blind">이전 페이지</span>
				</span>
			</a>
			<div class="pagination__inner">
				<a href="#" class="pagination__btn-txt pagination__btn-txt--active">
					<span class="pagination__page-number">1</span>
			        <span class="blind">페이지로 이동</span>
			    </a>
			    <a href="#" class="pagination__btn-txt">
			        <span class="pagination__page-number">2</span>
			        <span class="blind">페이지로 이동</span>
			    </a>
			    <a href="#" class="pagination__btn-txt">
			        <span class="pagination__page-number">3</span>
			        <span class="blind">페이지로 이동</span>
			    </a>
			</div>
			<a href="#" class="pagination__btn">
			    <span class="sp icon-next">
			        <span class="blind">다음 페이지</span>
			    </span>
			</a>
			<a href="#" class="pagination__btn">
			    <span class="sp icon-last">
			        <span class="blind">맨 뒤 페이지</span>
			    </span>
			</a>
		</div>
	</div>
</div>
