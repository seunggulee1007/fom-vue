<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/babel" src="/resources/fim/js/financialLink/bizChk/bizHist.js"></script>
<script src='https://unpkg.com/v-calendar@next'></script>
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
    <div class="grid-layout" id="app" v-cloak>
        <div class="grid-column grid-column10">
            <div class="section section--border section-history section-biz-history">
                <div class="component-area clearfix">
                    <div class="component-group datepicker--range-type">
                        <div class="component-box">
                            <div class="input-field datepicker__v-calendar">
                             <label for="date_input_info1" class="input-field__title ">조회기준일자</label>
                                <input type="text" v-model='searchStdDt' readonly class="input-field__input">
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
                                <input type="text" v-model='searchEndDt' readonly class="input-field__input">
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
                            <form>
                            
                                <fieldset>
                                    <legend>사업자등록번호 검색영역</legend>
                                    <div class="search-form">
                                        <em class="search-form__title">사업자등록번호</em>
                                        <div class="search-form__inner">
                                            <input type="search" v-model="bizNo" v-int maxlength="10" @keyup.enter="getBizInfoList();">
                                            <div class="search-form__bx-btn">
                                                <input type="reset" class="search-form__btn-delete" >
                                                <span class="blind">reset</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">요청자</em>
                                        <div class="search-form__inner">         
                                            <input type="search" v-model="userNm" @keyup.enter="getBizInfoList();" maxlength="30">
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">요청부서</em>
                                        <div class="search-form__inner">         
                                            <input type="search" v-model="deptNm" @keyup.enter="getBizInfoList();" maxlength="50">
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div class="component-box">
                            <button type="button" class="btn btn--bgtype" @click="getBizInfoList();">
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
                                <tbody>
                                    <tr v-for="list in bizInfoList">
                                        <td class="table__td">
                                            <span class="table__txt">{{list.crtDateStr}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.userNm}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.deptNm}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.bizNo | bizNoFilter}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.resultMsg}}</span>
                                        </td>
                                    </tr>
                                    <tr v-if="bizInfoList.length == 0">
                                        <td class="table__td align-center" colspan="5"><span class="table__txt">조회된 내용이 없습니다.</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="component-group" v-if="pagingVO.totalPage > 0">
                        <div class="pagination">
                            <a class="pagination__btn" @click="getBizInfoList(1)" :class="{'pagination__btn--disabled' : pagingVO.pageNo == 1}">
                                <span class="sp icon-first">
                                    <span class="blind">맨 처음 페이지</span>
                                </span>
                            </a>
                            <a class="pagination__btn " @click="getBizInfoList(pagingVO.startPage-1)" :class="{'pagination__btn--disabled' : pagingVO.pageNo < pagingVO.pageCnt}">
                                <span class="sp icon-prev">
                                    <span class="blind">이전 페이지</span>
                                </span>
                            </a>
                            <div class="pagination__inner">
                                <a class="pagination__btn-txt" v-for="num in getPageList(pagingVO.startPage, pagingVO.endPage)" @click="getBizInfoList(num)" :class="{'pagination__btn-txt--active' : num == pagingVO.pageNo}">
                                    <span class="pagination__page-number">{{num}}</span>
                                    <span class="blind">페이지로 이동</span>
                                </a>
                            </div>
                            <a class="pagination__btn"@click="getBizInfoList(pagingVO.startPage+1)" :class="{'pagination__btn--disabled' : pagingVO.endPage < pagingVO.totalPage}">
                                <span class="sp icon-next">
                                    <span class="blind">다음 페이지</span>
                                </span>
                            </a>
                            <a class="pagination__btn" @click="getBizInfoList(pagingVO.totalPage)" :class="{'pagination__btn--disabled' : pagingVO.pageNo == pagingVO.totalPage}">
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