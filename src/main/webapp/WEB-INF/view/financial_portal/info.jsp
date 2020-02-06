<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container" class="container container--include-lnb container--fullview">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">                    
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="info.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">공지사항</span>
                    <!-- <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span> -->
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">사내 업무 일정</span>
                    <!-- <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span> -->
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">월별 세무 일정</span>
                    <!-- <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span> -->
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">환율 정보</span>
                    <!-- <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span> -->
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
    <p class="page-title__dsc">· 재무회계 공지사항 게시판입니다.</p>
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>
        <div class="component-box">
            <button type="button" class="btn btn--orange">
                <span class="btn__txt">+ 신규작성</span>
            </button>
        </div>
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-info">
                <div class="component-area clearfix">
                    <div class="component-group component-group--align-left">
                        <div class="component-box">
                            <em class="lst__txt">총 342 <span class="lst__txt--gray">(1/24 page)</span></em>
                        </div>
                    </div>                    
                   <div class="component-group component-group--align-right">
                        <div class="component-box">
                            <div class="dropdown">
                                <a href="#" class="dropdown__button">
                                    <span class="dropdown__button-text">선택</span>
                                    <span class="sp icon-arrow"><span class="blind">옵션창 열기</span></span>
                                </a>
                                <ul class="dropdown__list">
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                            <span class="dropdown__menu-txt">전체기간</span>
                                        </a>
                                    </li>
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                            <span class="dropdown__menu-txt">1일</span>
                                        </a>
                                    </li>
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                        <span class="dropdown__menu-txt">1주</span>
                                        </a>
                                    </li>
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                            <span class="dropdown__menu-txt">1개월</span>
                                        </a>
                                    </li>
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                        <span class="dropdown__menu-txt">6개월</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="component-box">
                            <div class="dropdown">
                                <a href="#" class="dropdown__button">
                                    <span class="dropdown__button-text">선택</span>
                                    <span class="sp icon-arrow"><span class="blind">옵션창 열기</span></span>
                                </a>
                                <ul class="dropdown__list">
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                            <span class="dropdown__menu-txt">제목</span>
                                        </a>
                                    </li>
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                        <span class="dropdown__menu-txt">내용</span>
                                        </a>
                                    </li>
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                            <span class="dropdown__menu-txt">제목+내용</span>
                                        </a>
                                    </li>
                                    <li class="dropdown__item">
                                        <a href="#" class="dropdown__menu">
                                        <span class="dropdown__menu-txt">작성자</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="component-box">
                            <form>
                                <fieldset>
                                    <legend>검색 영역</legend>
                                    <div class="search-form">
                                        <div class="search-form__inner">
                                            <span class="ip icon-search"><span class="blind">search</span></span>
                                            <input type="search" placeholder="검색어를 입력하세요.">
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
                            <button type="button" class="btn btn--bgtype"><span class="btn__txt">검색</span></button>
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
                                        <th scope="col" class="table__th">번호</th>
                                        <th scope="col" class="table__th">제목</th>
                                        <th scope="col" class="table__th">작성자</th>
                                        <th scope="col" class="table__th">작성일</th>
                                        <th scope="col" class="table__th table__txt--align-right">조회수</th>
                                        <th scope="col" class="table__th">첨부</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="table__row--top">
                                        <td class="table__td">
                                            <span class="sp icon-important"><span class="blind">중요 공지</span></span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">[필독] SG재무회계실 전체 공지 안내</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동B</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">2020/01/20</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">100</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="sp icon-attachment"><span class="blind">첨부파일 있음</span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">342</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동B</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/20</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">100</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="sp icon-attachment"><span class="blind">첨부파일 있음</span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">341</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/19</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">28</span>
                                        </td>
                                        <td class="table__td"></td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">340</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동B</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/18</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">10</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="sp icon-attachment"><span class="blind">첨부파일 있음</span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">339</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/17</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">5</span>
                                        </td>
                                        <td class="table__td">
                                                <span class="sp icon-attachment"><span class="blind">첨부파일 있음</span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">338</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동B</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/16</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">78</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="sp icon-attachment"><span class="blind">첨부파일 있음</span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">337</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/15</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">17</span>
                                        </td>
                                        <td class="table__td"></td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">336</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/14</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">24</span>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">335</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/13</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">31</span>
                                        </td>
                                        <td class="table__td">
                                                <span class="sp icon-attachment"><span class="blind">첨부파일 있음</span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">334</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="#" class="table__title">
                                                <span class="table__txt">제무회계 내부 공지입니다.</span>
                                            </a>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--gray">2020/01/12</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">62</span>
                                        </td>
                                        <td class="table__td"></td>
                                    </tr>
                                </tbody>
                            </table>
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
            </div>
            <div class="component-group align-right">
                <div class="component-box">
                    <button type="button" class="btn btn--orange">
                        <span class="btn__txt">+ 신규작성</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
