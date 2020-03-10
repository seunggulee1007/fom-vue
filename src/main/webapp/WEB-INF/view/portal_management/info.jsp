<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src='https://unpkg.com/v-calendar@next'></script>
<script type="text/babel" src="/resources/fim/js/portal_management/info.js"></script>
<div id="container" class="container container--include-lnb container--fullview">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">                    
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="info.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">공지사항</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="approval_pending.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자결재 - 미결함</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="approval_pre.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자결재 - 예정함</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="approval_progress.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자결재 - 진행함</span>
                </a>
            </li>
        </ul>

        <footer class="footer footer--lnb-type">
            <div class="footer__inner">
                <!-- <ul class="footer__util">
                    <li class="footer__util-item">
                        <a href="#" class="footer__util-menu">
                            <span class="footer__util-menu-txt">스마일넷 배너등록</span>
                        </a>
                    </li>
                    <li class="footer__util-item">
                        <a href="#" class="footer__util-menu">
                            <span class="footer__util-menu-txt">개선 및 건의</span>
                        </a>
                    </li>
                </ul>
                <div class="dropdown">
                    <a href="#" class="dropdown__button">
                        <span class="dropdown__button-text">패밀리 사이트 바로가기</span>
                        <span class="sp icon-arrow">
                            <span class="blind">옵션창 열기</span>
                        </span>
                    </a>
                    <ul class="dropdown__list">
                    <li class="dropdown__item">
                        <a href="#" class="dropdown__menu">
                            <span class="dropdown__menu-txt">List 1_All</span>
                        </a>
                    </li>
                    <li class="dropdown__item">
                        <a href="#" class="dropdown__menu">
                            <span class="dropdown__menu-txt">List 2</span>
                        </a>
                    </li>
                    </ul>
                </div> -->
                <small class="footer__copyright">&copy; Smilegate. All Rights Reserved.</small>
            </div>
        </footer>
        
        <button type="button" class="btn btn-lnb">
            <span class="icon-arrow"><span class="blind">메뉴 열기</span></span>
        </button>
    </div>
    <h2 class="page-title">공지사항</h2>
    <!-- <p class="page-title__dsc">· 재무회계 공지사항 게시판입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>
        <div class="component-box">
            <a href="info_write.html" class="btn btn--orange">
                <span class="btn__txt">+ 신규작성</span>
            </a>
        </div>
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-info">
                <div class="component-area clearfix">
                    <div class="component-group">
                        <div class="component-box">
                            <em class="lst__txt">총 등록건수<br>342건 <span class="lst__txt--gray">(1/24 page)</span></em>
                        </div>
                        <div class="component-box">
                            <em class="component__title">신규 게시물 알림</em>
                            <button type="button" class="btn btn-alert"><span class="btn__txt">ON</span></button>
                            <button type="button" class="btn btn-alert btn-alert--active"><span class="btn__txt">OFF</span></button>
                        </div>
                    </div>                    
                    <div class="component-group">
                        <div class="datepicker--range-type">
                            <div class="component-box">
                                <div class="input-field datepicker__v-calendar">
                                 <label for="date_input_exchange1" class="input-field__title">작성일</label>
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
                        
                        <div class="component-box">
                            <em class="component__title">검색 조건</em>
                            <select name="searchItem" id="searchItem" class="dropdown-select" v-model="searchKind">
                                <option  class="dropdown-select__menu" value="title">
                                    <span class="dropdown__menu-txt">제목</span>
                                </option>
                                <option class="dropdown-select__menu" value="cont">
                                    <span class="dropdown__menu-txt">내용</span>
                                </option>
                                <option class="dropdown-select__menu" value="titleAndCont">
                                    <span class="dropdown__menu-txt">제목+내용</span>
                                </option>
                                <option class="dropdown-select__menu" value="userNm">
                                    <span class="dropdown__menu-txt">작성자</span>
                                </option>
                            </select>
                        </div>
                        <div class="component-box">
                            <form>
                                <fieldset>
                                    <legend>검색 영역</legend>
                                    <div class="search-form">
                                        <em class="search-form__title">검색어로 찾기</em>
                                        <div class="search-form__inner">
                                            <span class="ip icon-search"><span class="blind">search</span></span>
                                            <input type="search" placeholder="검색어를 입력하세요." maxlength="100" v-model="search">
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
                            <button type="button" class="btn btn--bgtype" @click="getInfoList();"><span class="btn__txt">검색</span></button>  
                        </div>
                    </div>
                </div>
                <div class="component-area"> 
                    <div class="component-group">                   
                        <div class="table">
                            <table>
                                <caption>
                                    <span class="blind">공지사항 게시판</span>
                                </caption>
                                <colgroup>
                                        <col style="width:9.5%">
                                        <col>
                                        <col style="width: 9%">
                                        <col style="width: 10%">
                                        <col style="width: 7.2%">
                                        <col style="width: 5.4%">
                                    </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col" class="table__th">분류</th>
                                        <th scope="col" class="table__th">제목</th>
                                        <th scope="col" class="table__th">작성자</th>
                                        <th scope="col" class="table__th">작성일</th>
                                        <th scope="col" class="table__th table__txt--align-right">조회수</th>
                                        <th scope="col" class="table__th">첨부</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(list,idx) in infoList" v-bind:class="{'table__row--top' : idx==0}">
                                        <td class="table__td">
                                            <span class="sp icon-important"><span class="blind">중요 공지</span></span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">{{list.title}}</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.userNm}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.crtDate}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.hit}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="sp icon-attachment" v-show="list.fileVO.length > 0"><span class="blind">첨부파일 있음</span></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="component-group" v-show="infoList.length > 0">
                        <div class="pagination">
                            <a href="#" class="pagination__btn" v-bind:class="{'pagination__btn--disabled' : paging.first}"  @click="goPageGroup('first');">
                                <span class="sp icon-first">
                                    <span class="blind">맨 처음 페이지</span>
                                </span>
                            </a>
                            <a href="#" class="pagination__btn" v-bind:class="{'pagination__btn--disabled' : paging.first}"  @click="goPageGroup('prev');">
                                <span class="sp icon-prev">
                                    <span class="blind">이전 페이지</span>
                                </span>
                            </a>
                            <div class="pagination__inner">
                                <a href="#" class="pagination__btn-txt" v-bind:class="{ 'pagination__btn-txt--active' : paging.number+1 == num}" v-for="num in pagingVO.pageList">
                                    <span class="pagination__page-number" @click="goPage(num);">{{num}}</span>
                                    <span class="blind">페이지로 이동</span>
                                </a>
                            </div>
                            <a href="#" class="pagination__btn" v-bind:class="{'pagination__btn--disabled' : paging.last}" @click="goPageGroup('next');">
                                <span class="sp icon-next">
                                    <span class="blind">다음 페이지</span>
                                </span>
                            </a>
                            <a href="#" class="pagination__btn"  v-bind:class="{'pagination__btn--disabled' : paging.last}" @click="goPageGroup('last');">
                                <span class="sp icon-last">
                                    <span class="blind">맨 뒤 페이지</span>
                                </span>
                            </a>
                        </div>
                    </div>                            
                </div>                        
            </div>
            <div class="component-group align-right">
                <div class="component-box">
                    <a href="info_write.html" class="btn btn--orange">
                        <span class="btn__txt">+ 신규작성</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>