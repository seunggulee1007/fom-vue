<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 정산신청 -->
<div id="companyCardRequest" class="lst-tab-cnt lst-tab-cnt--active">
	<div class="section section--border section-expense">
		<form id="accountCardFrm" method="post" >
			<input type="hidden" id="comCd" name="comCd" value="2">
			<input type="hidden" id="erpCompanySeq" name="erpCompanySeq" value="2">
			<input type="hidden" id="regDate" name="regDate" value="20200324">
			<input type="hidden" id="regErpEmpSeq" name="regErpEmpSeq" value="140">
			<input type="hidden" id="regUserId" name="regUserId" value="140">
			<input type="hidden" id="regEmpNo" name="regEmpNo" value="140">
			<input type="hidden" id="lastUserId" name="lastUserId" value="140">

			<div class="component-group">
				<div class="table table-chain">
					<table>
						<caption><span class="blind">법인카드 정산 신청</span></caption>
						<colgroup>
							<col width="9%">
							<col>
							<col width="9%">
							<col>
							<col width="9%">
							<col>
							<col width="9%">
							<col width="22%">
						</colgroup>
						<tbody>
							<tr>
								<th class="table__th">문서번호</th>
								<td class="table__td table__td--data">
									<span class="table__txt">결재 완료 시, 발번됩니다.</span>
								</td>
								<th class="table__th">기안일자</th>
								<td class="table__td table__td--data">
									<span class="table__txt">20/03/10</span>
								</td>
								<th class="table__th">기안자</th>
								<td class="table__td table__td--data">
									<span class="table__txt">홍길동A</span>
								</td>
								<th class="table__th">정산번호</th>
								<td class="table__td table__td--data">
									<span class="table__txt"></span>
								</td>
							</tr>
							<tr>
								<th class="table__th">기안부서</th>
								<td colspan="7" class="table__td table__td--data">
									<span class="table__txt">SGH>IT기술본부>기술지원담당>정보시스템실>정보개발팀</span>
								</td>
							</tr>
							<tr>
								<th class="table__th table__th--required">제목</th>
								<td colspan="7" class="table__td">
									<div class="input-field input-field-table">
										<input type="hidden" id="regDeptCd" name="regDeptCd" value="33333">
										<input type="hidden" id="regErpDeptSeq" name="regErpDeptSeq" value="33333">
										<input id="title" name="title" type="text" class="input-field__input" value="[SGH][테스트_홍길동A_2020-03-24]">
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="component-group">
				<em class="component__title">1. 카드 정보</em>
				<div class="table table-chain">
					<table>
						<caption><span class="blind">정산신청을 위한 카드 정보 입력</span></caption>
						<colgroup>
							<col width="9%">
							<col>
							<col width="9%">
							<col>
							<col width="9%">
							<col>
							<col width="9%">
							<col width="22%">
						</colgroup>
						<tbody>
							<tr>
								<th class="table__th table__th--required">사용자</th>
								<td class="table__td table__td--btn">
									<span class="table__txt">홍길동A</span>
									<button type="button" class="btn btn-change-user" id="btnCardUser" style="top: 5px; right:16px;">
										<span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
									</button>
									<span class="table__txt"></span>
								</td>
								<th class="table__th">사용자 부서</th>
								<td class="table__td">
									<span class="table__txt">정보개발팀</span>
								</td>
								<th class="table__th table__th--required">카드번호</th>
								<td class="table__td">
									<select name="cardCd" id="cardCd" v-model="selectedCard" class="dropdown-select">
										<option v-for="cardItem in companyCardList" v-bind:value="{cardNo:cardItem.cardNo, cardDivName:cardItem.cardDivName}">{{cardItem.cardName}}</option>
									</select>
								</td>
								<th class="table__th">카드구분</th>
								<td class="table__td table__td--data">
									<span id="cardDiv" class="table__txt">{{selectedCard.cardDivName}}</span>
								</td>
							</tr>
							<tr>
								<th class="table__th table__th--required">정산년월</th>
								<td class="table__td">
									<div class="input-field">
										<input type="text" readonly id="yyyymm" class="input-field__input" style="max-width: 100%">
										<span id="btnMonthPicker" class="sp icon-datepicker">
											<span class="blind">Calendar 열기</span>
										</span>
									</div>
								</td>
								<td class="table__td" colspan="6">
									<button id="btnGetUseList" type="button" class="btn btn--orange" onclick="">
										<span class="btn__txt">카드결제 내역 가져오기</span>
									</button>
									<span class="table__txt"></span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="component-group">
				<div class="clearfix">
					<div class="component-box component-box--align-left">
						<em class="component__title">2. 정산 내역</em>
					</div>
					<div class="component-box btn-box component-box--align-right align-right">
						<div class="component-box">
							<button type="button" class="btn">
								<span class="btn__txt">차감제외처리</span>
							</button>
						</div>
						<div class="component-box">
							<button type="button" class="btn">
								<span class="btn__txt">개인비용처리</span>
							</button>
						</div>
						<div class="component-box">
							<button type="button" class="btn">
								<span class="btn__txt">선택삭제</span>
							</button>
						</div>
					</div>
				</div>
				<div class="table table-chain" style="margin-top: 0">
					<table id="useCardList">
						<caption><span class="blind">카드 사용에 대한 자세한 정산 내역 작성</span></caption>
						<colgroup>
							<col width="46px">
							<col width="46px">
							<col width="88px">
							<col width="56px">
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col width="80px">
							<col>
							<col>
							<col>
							<col>
						</colgroup>
							<thead>
								<tr>
									<th class="table__th" rowspan="2">선택</th>
									<th class="table__th" rowspan="2">개인 비용 처리</th>
									<th class="table__th" rowspan="2">일자</th>
									<th class="table__th" rowspan="2">시간</th>
									<th class="table__th" rowspan="2">가맹점</th>
									<th class="table__th" rowspan="2">예산부서</th>
									<th class="table__th" rowspan="2">사용자<br>(귀속처리)</th>
									<th class="table__th align-center" colspan="2">비용항목</th>
									<th class="table__th align-center" colspan="2">SGMA</th>
									<th class="table__th table__th--required" rowspan="2">적요</th>
									<th class="table__th" rowspan="2">현지통화</th>
									<th class="table__th align-center" colspan="4">금액</th>
								</tr>
								<tr>
									<th class="table__th table__th--required">중분류</th>
									<th class="table__th table__th--required">소분류</th>
									<th class="table__th table__th--required">중분류</th>
									<th class="table__th">소분류</th>
									<th class="table__th table__txt--align-right">공급가액</th>
									<th class="table__th table__txt--align-right">봉사료</th>
									<th class="table__th table__txt--align-right">부가세</th>
									<th class="table__th table__txt--align-right">총계</th>
								</tr>
							</thead>
						<tbody>

						</tbody>
					</table>
				</div>
				<div class="table table-chain">
					<table>
						<caption><span class="blind">정산내역 합계금액</span></caption>
						<colgroup>
							<col width="60px">
							<col width="64px">
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
							<col>
							<col>
						</colgroup>
						<tbody>
							<tr class="table__row--highlight">
						        <th class="table__th" colspan="13">합계</th>
						        <td class="table__td table__td--data">
						            <span class="table__txt table__txt--align-right">10,000</span>
						        </td>
						        <td class="table__td table__td--data">
						            <span class="table__txt table__txt--align-right">0</span>
						        </td>
						        <td class="table__td table__td--data">
						            <span class="table__txt table__txt--align-right">1,000</span>
						        </td>
						        <td class="table__td table__td--data">
						            <span class="table__txt table__txt--align-right">11,000</span>
						        </td>
						    </tr>
						</tbody>
					</table>
				</div>
				<div class="table table-chain">
					<table>
						<caption>해당 지출결의서의 전표처리 여부 및 참조파일 추가 설정</caption>
						<colgroup>
							<col width="9%">
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th class="table__th" scope="row">전표처리여부</th>
								<td class="table__td" colspan="8">
									<div class="input-field input-field-table">
										<input type="text" class="input-field__input">
									</div>
								</td>
							</tr>
							<tr>
								<th class="table__th">파일 첨부</th>
								<td class="table__td" colspan="8">
									<div id="elFile" class="input-field input-field-table">
										<button type="button" id="btnFile" class="btn btn-file">
											<label for="attFile" class="btn__txt">파일선택</label>
										</button>
										<input type="file" id="attFile" v-on:change="attachFile()" ref="files" name="files" multiple="multiple" class="input-field__file blind">
										<span id="fileSize" class="input__dsc-txt" ref="fileSizeStr">0 byte / 100 MB</span>
										<div id="fileListBox" class="input-field__file-box">
											<div class='file-info' v-for="(file, idx) in fileList">{{file.name}}<a href='#' v-on:click="onDeleteFile(idx)">&nbsp;&nbsp;[삭제]</a></div>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th class="table__th">참조결재</th>
								<td class="table__td" colspan="8">
									<div class="input-field input-field-table">
										<button type="button" class="btn btn-file">
											<label for="file3" class="btn__txt">문서조회</label>
										</button>
										<input type="file" id="file3" class="input-field__file blind">
										<div class="input-field__file-box">
											<div class="file-info"></div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
            </div>
		</form>
	</div>
	<div class="component-group btn-box align-center">
		<div class="component-box">
			<button type="button" class="btn btn--large btn--bgtype">
				<span class="btn__txt">삭제</span>
			</button>
		</div>
		<div class="component-box">
			<button type="button" onclick="formSubmit()" class="btn btn--large">
				<span class="btn__txt">저장</span>
			</button>
		</div>
		<div class="component-box">
			<button type="button" class="btn btn--large btn--orange">
				<span class="btn__txt">결제상신</span>
			</button>
		</div>
	</div>

	<table id="useCardListClone" style="display:none">
		<caption><span class="blind">카드 사용에 대한 자세한 정산 내역 작성</span></caption>
		<colgroup>
			<col width="46px">
			<col width="46px">
			<col width="88px">
			<col width="56px">
			<col>
			<col>
			<col>
			<col>
			<col>
			<col>
			<col>
			<col>
			<col width="80px">
			<col>
			<col>
			<col>
			<col>
		</colgroup>
			<thead>
				<tr>
					<th class="table__th" rowspan="2">선택</th>
					<th class="table__th" rowspan="2">개인 비용 처리</th>
					<th class="table__th" rowspan="2">일자</th>
					<th class="table__th" rowspan="2">시간</th>
					<th class="table__th" rowspan="2">가맹점</th>
					<th class="table__th" rowspan="2">예산부서</th>
					<th class="table__th" rowspan="2">사용자<br>(귀속처리)</th>
					<th class="table__th align-center" colspan="2">비용항목</th>
					<th class="table__th align-center" colspan="2">SGMA</th>
					<th class="table__th table__th--required" rowspan="2">적요</th>
					<th class="table__th" rowspan="2">현지통화</th>
					<th class="table__th align-center" colspan="4">금액</th>
				</tr>
				<tr>
					<th class="table__th table__th--required">중분류</th>
					<th class="table__th table__th--required">소분류</th>
					<th class="table__th table__th--required">중분류</th>
					<th class="table__th">소분류</th>
					<th class="table__th table__txt--align-right">공급가액</th>
					<th class="table__th table__txt--align-right">봉사료</th>
					<th class="table__th table__txt--align-right">부가세</th>
					<th class="table__th table__txt--align-right">총계</th>
				</tr>
			</thead>
		<tbody>
			<tr>
				<td name="tdCheck" class="table__td"> <!-- 선택 -->
					<div class="btn_group">
						<span class="btn-checkbox">
						</span>
					</div>
				</td>
				<td class="table__td"> <!-- 개인 비용 처리 -->
					<div class="btn_group">
						<span class="btn-checkbox">
							<input type="checkbox" id="checkbox_cardExpense0" disabled>
							<label for="checkbox_cardExpense0" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label>
						</span>
					</div>
				</td>
				<td class="table__td"> <!-- 날짜 -->
					<span name="spApprDate" class="table__txt"></span>
				</td>
				<td class="table__td"> <!-- 시간 -->
					<span name="spApprTime" class="table__txt"></span>
				</td>
				<td class="table__td"> <!-- 가맹점 -->
					<div class="tooltip-box tooltip--hover tooltip--right">
						<span name="spChainNm" class="table__txt">(주)너와집 백현점</span>
						<span class="sp icon-info"></span>
						<div class="tooltip__inner">
							<p name="pChainNm" class="tooltip__txt">
								가맹점명: (주)너와집 백현점
							</p>
							<p name="pChainAddr" class="tooltip__txt">
								주소: 경기 성남시 분당구 안양판교로 1201번길 45, 지상1층 (백현동)
							</p>
							<p name="pChainId" class="tooltip__txt">
								사업자번호: 1298553548
							</p>
							<p name="pMccName" class="tooltip__txt">
								업종: 일반음식점
							</p>
							<p name="pApprNo" class="tooltip__txt">
								승인번호: 12345679
							</p>
						</div>
					</div>
				</td>
				<td name="tdComNm" class="table__td"> <!-- 예산부서 -->
					<span name="tdBudgetDeptNm" class="table__txt"></span>
				</td>
				<td name="tdUseUser" class="table__td table__td--btn"> <!-- 사용자(귀속처리) -->
					<span name="spUseName" class="table__txt"></span><br><span name="spDeptNm" class="table__txt-caption"></span>
					<button type="button" class="btn btn-change-user" name="btnAccountUser">
						<span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
					</button>
				</td>
				<td name="tdSmKindNm" class="table__td"> <!-- 비용항목 중분류 -->
					<div class="input-field input-field-table">
						<input type="text" class="input-field__input" value="">
					</div>
				</td>
				<td name="tdErpCostNm" class="table__td table__td--data"> <!-- 비용항목 소분류 -->
					<span class="table__txt" ></span>
				</td>
				<td name="tdCostItemNm" class="table__td table__td--data"> <!-- SGMS 중분류 -->
					<div class="input-field input-field-table">
						<input type="text" name="inRemValSeq" disabled class="input-field__input" value="">
					</div>
				</td>
				<td name="tdActivityNm" class="table__td table__td--data"> <!-- SGMS 소분류 -->
					<span class="table__txt" ></span>
				</td>
				<td class="table__td"><!-- 적요 -->
					<div class="input-field input-field-table">
						<input type="text" class="input-field__input">
					</div>
					<span class="table__txt table__txt-caption txt--blue"></span>
				</td>
				<td  class="table__td table__td--data"> <!-- 통화 -->
					<span name="spCurrCd" class="table__txt"></span>
	<!-- 				<input type="hidden" name="currCd" class="input-field__input" value=""> -->
				</td>
				<td class="table__td table__td--data"> <!-- 공급가 -->
					<span name="spSupplyAmt" class="table__txt table__txt--align-right"></span>
	<!-- 				<input type="hidden" name="supplyAmt" class="input-field__input" value=""> -->
				</td>
				<td class="table__td table__td--data"> <!-- 봉사료 -->
					<span name="spTipAmt" class="table__txt table__txt--align-right"></span>
	<!-- 				<input type="hidden" name="tipAmt" class="input-field__input" value=""> -->
				</td>
				<td class="table__td table__td--data"> <!-- 부가세 -->
					<span name="spApprTax" class="table__txt table__txt--align-right"></span>
	<!-- 				<input type="hidden" name="apprTax" class="input-field__input" value=""> -->
				</td>
				<td class="table__td table__td--data">
					<span name="spSumAmt" class="table__txt table__txt--align-right"></span>
	<!-- 				<input type="hidden" name="sumAmt" class="input-field__input" value=""> -->
				</td>
			</tr>
		</tbody>
	</table>
</div>

