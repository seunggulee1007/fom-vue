<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="/resources/fim/js/expenseManagement/expenseHistory.js"></script>
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
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-history section-expense-history" style="min-height:500px;">
                 <div class="component-area clearfix ">
                    <div class="component-group datepicker--range-type">
                        <div class="component-box">
                        <label for="date_input_exchange1" class="input-field__title ">조회기준일자</label>
                            <div class="input-field input-field--no-title datepicker__v-calendar">
                                <input type="text" id='searchStdDt' readonly class="input-field__input datePicker">
                            </div>
                        </div>
                        <div class="component-box component-box--non-label">
                            <p class="component-box__txt">
                            ~
                            </p>
                        </div>   
                        <div class="component-box component-box--non-label">
                            <div class="input-field input-field--no-title datepicker__v-calendar">
                                <input type="text" id='searchEndDt' readonly class="input-field__input datePicker">
                            </div>
                        </div>
                    </div>
                    <div class="component-group">
                        <div class="component-box">
                            <form>
                                <fieldset>
                                    <legend>지출결의서 조회 조건 입력 및 검색</legend>
                                    <div class="search-form clearfix">
                                        <div class="search-form__inner">
                                            <em class="search-form__title">검색조건</em>
                                            <select name="searchItem" class="dropdown-select" id="searchKind">
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
                                            <input type="search" id="searchKeyword" class="searckEnter">
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
                            <button type="button" class="btn btn--bgtype" onclick="searchHistory();">
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
                                <tbody id="expenseHistory">
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="component-group" id="pagingVO">
                        
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>