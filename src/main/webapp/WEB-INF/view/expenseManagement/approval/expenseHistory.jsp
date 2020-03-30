<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src='https://unpkg.com/v-calendar@next'></script>
<script type="text/babel" src="/resources/fim/js/expenseManagement/expenseHistory.js"></script>
<jsp:include page="/WEB-INF/view/include/expenseManagementInclude.jsp"/>
    
<div id="container" class="container container--include-lnb container--fullview container-write">
    <h2 class="page-title">지출결의서 조회</h2>
    <!-- <p class="page-title__dsc">· 지출결의서를 조회할 수 있는 페이지입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>                
        <div class="component-box">
            <a href="/expenseManagement/approval/expense" class="btn btn--orange">
                <span class="btn__txt">지출결의서 작성</span>
            </a>
        </div>                
    </div>
    <div class="grid-layout" id="app" v-cloak>
        <div class="grid-column grid-column10">
            <div class="section section--border section-history section-expense-history" style="min-height:500px;">
                 <div class="component-area clearfix ">
                    <div class="component-group datepicker--range-type">
                        <div class="component-box">
                        <label for="date_input_exchange1" class="input-field__title ">조회기준일자</label>
                            <div class="input-field input-field--no-title datepicker__v-calendar">
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
                    <div class="component-group">
                        <div class="component-box">
                            <form v-on:submit.prevent>
                                <fieldset>
                                    <legend>지출결의서 조회 조건 입력 및 검색</legend>
                                    <div class="search-form clearfix">
                                        <div class="search-form__inner">
                                            <em class="search-form__title">검색조건</em>
                                            <select name="searchItem" id="searchItem2nd" class="dropdown-select" v-model="searchKind">
                                                <option class="dropdown-select__menu" value="regUserNm">
                                                    <span class="dropdown__menu-txt">기안자</span>
                                                </option>
                                                <option class="dropdown-select__menu" value="regDeptNm">
                                                    <span class="dropdown__menu-txt">기안부서</span>
                                                </option>
                                            </select>
                                        </div>
                                        <div class="search-form__inner">
                                            <em class="search-form__title">검색내용</em>
                                            <input type="search" v-model="searchKeyword" @keyup.enter="searchHistory();">
                                            <div class="search-form__bx-btn">
                                                <input type="reset" class="search-form__btn-delete">
                                                <span class="blind">reset</span>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="component-box">
                            <button type="button" class="btn btn--bgtype" @click="searchHistory();">
                              <span class="btn__txt">조회</span>
                            </button>
                        </div>
                    </div>                            
                </div>
                <div class="component-area">
                    <div class="component-group">
                        <div class="table">
                            <table>
                                <caption><span class="blind">지출결의서 결재 내역</span></caption>
                                <colgroup>
                                    <col width="8%">
                                    <col width="8%">
                                    <col width="8%">
                                    <col width="50%">
                                    <col width="10%">
                                    <col width="16%">
                                    <col width="10%">
                                    <col width="10%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="table__th align-center" scope="col">전자결재상태</th>
                                        <th class="table__th align-center" scope="col">전표처리유무</th>
                                        <th class="table__th align-center" scope="col">지출결의번호</th>
                                        <th class="table__th align-center" scope="col">제목</th>
                                        <th class="table__th align-center" scope="col">기안일자</th>
                                        <th class="table__th align-center" scope="col">기안자</th>
                                        <th class="table__th align-center" scope="col">기안부서</th>
                                        <th class="table__th align-center" scope="col">총금액 (VAT포함)</th>
                                    </tr>
                                </thead>
                                <tbody v-for="list in expenseHistoryList">
                                    <tr @click="clickDetailList(list)">
                                        <td class="table__td">
                                            <span class="table__txt">{{list.grstatus}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.grEndStatus}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.tiCostSeq}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt"><a style="text-decoration:underline; cursor:pointer;" @click="clickModifyPage(list.tiCostSeq)">{{list.title}}</a></span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.regDate}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.regUserNm}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.regDeptNm}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.totalAmt | currency}}</span>
                                        </td>                                                
                                    </tr>
                                    <tr class="table__row-sub--detail" :class="{'table__row--expanded' : list.flag}">
                                        <td class="table__td table__td--table" colspan="8">
                                            <div class="table">
                                                <table>
                                                    <caption><span class="blind">상세 내역</span></caption>
                                                    <colgroup>
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
                                                            <th class="table__th align-center" rowspan="2" scope="col">사용일자</th>
                                                            <th class="table__th align-center" rowspan="2" scope="col">예산부서</th>
                                                            <th class="table__th align-center" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                            <th class="table__th align-center" rowspan="2" scope="col">적요</th>
                                                            <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                            <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                            <th class="table__th align-center" scope="colgroup">금액</th>
                                                        </tr>
                                                        <tr>
                                                            <th class="table__th align-center" scope="col">중분류</th>
                                                            <th class="table__th align-center" scope="col">소분류</th>
                                                            <th class="table__th align-center" scope="col">비용항목</th>
                                                            <th class="table__th align-center" scope="col">Activity</th>
                                                            <th class="table__th align-center" scope="col">금액 (VAT포함)</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr v-for="history in list.tiarCostAmtList">
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.useDate | dateFilter}}</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.deptVO.budgetDeptNm}}</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.deptVO.useUserNm}}({{history.deptVO.useDeptNm}})</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.remark}}</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.costInfoVO.smKindName}}</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.costInfoVO.costName}}</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.costInfoVO.activityNm}}</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.costInfoVO.costImteNm}}</span>
                                                            </td>
                                                            <td class="table__td">
                                                                <span class="table__txt">{{history.curAmt | currency}}원</span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>                                       
                                    </tr> 
                                </tbody>
                                <tr v-if="!expenseHistoryList">
                                    <td  class="table__td align-center" colspan="8"><span class="table__txt">조회된  내용이 없습니다.</span></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="component-group" v-if="pagingVO.totalPage > 0">
                        <div class="pagination">
                            <a href="#" class="pagination__btn" @click="searchHistory(1)" :class="{'pagination__btn--disabled' : pagingVO.pageNo == 1}">
                                <span class="sp icon-first">
                                    <span class="blind">맨 처음 페이지</span>
                                </span>
                            </a>
                            <a href="#" class="pagination__btn " @click="searchHistory(pagingVO.startPage-1)" :class="{'pagination__btn--disabled' : pagingVO.pageNo < pagingVO.pageCnt}">
                                <span class="sp icon-prev">
                                    <span class="blind">이전 페이지</span>
                                </span>
                            </a>
                            <div class="pagination__inner">
                                <a href="#" class="pagination__btn-txt" v-for="num in getPageList(pagingVO.startPage, pagingVO.endPage)" @click="searchHistory(num)" :class="{'pagination__btn-txt--active' : num == pagingVO.pageNo}">
                                    <span class="pagination__page-number">{{num}}</span>
                                    <span class="blind">페이지로 이동</span>
                                </a>
                            </div>
                            <a href="#" class="pagination__btn"@click="searchHistory(pagingVO.startPage+1)">
                                <span class="sp icon-next">
                                    <span class="blind">다음 페이지</span>
                                </span>
                            </a>
                            <a href="#" class="pagination__btn" @click="searchHistory(pagingVO.totalPage)">
                                <span class="sp icon-last">
                                    <span class="blind">맨 뒤 페이지</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>