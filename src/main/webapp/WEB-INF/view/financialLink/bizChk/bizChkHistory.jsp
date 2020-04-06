<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="/resources/fim/js/financialLink/bizChk/bizHist.js"></script>
<jsp:include page="/WEB-INF/view/include/financialLinkInclude.jsp"/>
<div id="container" class="container container--include-lnb container--fullview">
    <h2 class="page-title">거래처 휴/폐업 조회 이력</h2>
    <p class="page-title__dsc">
        · 거래처 휴/폐업 조회 이력은 현재월 기준으로 최근 3개월 조회된 이력만 조회할 수 있습니다.
    </p>
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-history section-biz-history">
                <div class="component-area clearfix">
                    <div class="component-group datepicker--range-type">
                        <div class="component-box">
                        <label for="date_input_exchange1" class="input-field__title ">조회기준일자</label>
                            <div class="input-field input-field--no-title ">
                                <input type="text" id='searchStdDt' readonly class="input-field__input input-field__datepicker">
                            </div>
                        </div>
                        <div class="component-box component-box--non-label">
                            <p class="component-box__txt">
                            ~
                            </p>
                        </div>   
                        <div class="component-box component-box--non-label">
                            <div class="input-field input-field--no-title ">
                                <input type="text" id='searchEndDt' readonly class="input-field__datepicker">
                            </div>
                        </div>
                    </div>
                    <div class="component-group">
                        <div class="component-box">
                            <form>
                                <fieldset>
                                    <legend>사업자등록번호 검색영역</legend>
                                    <div class="search-form">
                                        <em class="search-form__title">사업자등록번호</em>
                                        <div class="search-form__inner">
                                            <input type="search" id="bizNo" class="doSearch" maxlength="10">
                                            <div class="search-form__bx-btn">
                                                <input type="reset" class="search-form__btn-delete" >
                                                <span class="blind">reset</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">요청자</em>
                                        <div class="search-form__inner">         
                                            <input type="search" id="userNm" class="doSearch" maxlength="30">
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">요청부서</em>
                                        <div class="search-form__inner">         
                                            <input type="search" id="deptNm" class="doSearch" maxlength="50">
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="component-box">
                            <button type="button" class="btn btn--bgtype" id="searchBtn">
                              <span class="btn__txt">조회</span>
                            </button>
                        </div>
                    </div>                    
                </div>              
                <div class="component-area">
                    <div class="component-group">                   
                        <div class="table">
                            <table>
                                <caption>
                                    <span class="blind">거래처 휴/폐업 조회 내역</span>
                                </caption>
                                <colgroup>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col style="width: 25%">
                                    </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col" class="table__th">조회기준일자</th>
                                        <th scope="col" class="table__th">요청자</th>
                                        <th scope="col" class="table__th">요청부서</th>
                                        <th scope="col" class="table__th">사업자등록번호</th>
                                        <th scope="col" class="table__th">사업자 등록 상태</th>
                                    </tr>
                                </thead>
                                <tbody id="bizInfoList">
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="pagingVO">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>