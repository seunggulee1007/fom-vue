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

<div class="popup-wrap popup-dialog--simple popup-dialog--bookmark">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__inner-wrap">
                <div class="popup__header">
                    <strong class="popup__header-txt">즐겨찾는 메뉴</strong>
                    <a href="#" class="btn btn--link">
                        <span class="sp icon-modify"></span>
                    </a>
                </div>
                <div class="popup__contents">
                    <ul class="popup__lst">
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">법인카드 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">나의 투입률 관리</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">당월손익</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">전자세금계산서</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">택시비 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">환율 정보</span>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
            <div class="popup__inner-wrap">
                <div class="popup__header">
                    <strong class="popup__header-txt">최근 이용 내역</strong>
                </div>
                <div class="popup__contents">
                    <ul class="popup__lst">
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">법인카드 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">차량운행일지</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">공지사항</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">스마일락(동호회) 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">부서/프로젝트 관리</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">환율 정보</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <button type="button" class="popup__btn-close">
                <span class="sp icon-close"><span class="blind">닫기</span></span>
            </button>
        </div>
    </div>
</div>

<div class="popup__dimmed"></div>
<div class="popup-wrap popup-layer--xxlarge popup-layer--allmenu">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__inner-wrap clearfix">
                <div class="popup__header">
                    <strong class="popup__header-txt">사이트맵</strong>
                </div>
                <div class="popup__contents popup__contents-inner-wrap">
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">재무시스템 바로가기</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="http://ifrs.smilegate.net" class="popup__lst-menu" target="_blank">
                                    <span class="popup__contents-txt popup__lst-item-txt">EFIS <span class="sp icon-external"></span></span>
                                    
                                </a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://sgma.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">SGMA <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="https://eis2.smilegate.net/" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">EIS <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://sgim.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">SGIM (IVM) <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://trip.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">TRIP <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=approval&MenuID=" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">EKP <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://mdi.smilegate.net/" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">MDI <span class="sp icon-external"></span></span></a>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">법인카드 비용 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="http://ekp.smilegate.net/eNovator/GSWF/WebPage/FormSelection/FormSelection.aspx" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">카드 신청/정산 처리</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="http://ekp.smilegate.net/eNovator/GSWF/WebPage/FormSelection/FormSelection.aspx#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">공용카드 신청서 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인카드 신청서 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드한도 증액신청 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../company_card/account_info.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인카드 정산</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/ANNUAL_MONTH_MANAGEMENT.aspx?sMenuCd=21" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">SG DATA CENTER</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/ANNUAL_MONTH_MANAGEMENT.aspx?sMenuCd=21" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인별 월한도 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/USER_LIMIT_SEARCH.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">사용자별 한도 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/CARD_LIMIT_MANAGEMENT_MAIN.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드한도 관리 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/SendMail_Write.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드메일발송 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/SendMail_List.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">메일발송내역 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">비용 정산 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">일반 비용 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">워크샵 신청/정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu"  target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">모바일식권 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu"  target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">중석식 정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전도금 정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">택시비 정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">국세청 계산서 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전자세금계산서</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전자계산서</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">커뮤니티 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">스마일락 (동호회) 정산</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">스마일學 (스터디) 정산</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="../expense_management/car/car_list.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">법인차 비용 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="../expense_management/car/car_list.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량목록</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../expense_management/car/car_drive.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량운행일지</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../expense_management/car/car_confirm.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량 비용귀속 확인</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../expense_management/car/car_costing.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량 비용산출</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../expense_management/car/car_cost_system.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">업무용 승용차 명세서 확인</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../expense_management/car/car_cost_no_drive.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">업무일지 미작성 차량비용</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">업무 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="../business_management/eis/select_month_report.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">프로젝트 손익조회</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/eis/select_month_report.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">당월손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/eis/monthly_report.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">월별손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/eis/accumulation.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">누적손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/eis/current_pjt.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">프로젝트 현황</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/eis/current_profit.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">손익 현황</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="../business_management/budget/detail_result.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">비용 계획/실적 조회</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/budget/detail_result.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">실적 상세내역</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/budget/plan_result.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">계획대비 실적</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="../business_management/work/dept_mng.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">업무 투입율</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/dept_mng.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">부서/프로젝트 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/all_mng.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전체투입률 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/work_history.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">작업내역 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/belong_com.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">귀속법인별 MM 집계</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/pjt_mm.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">프로젝트별 MM 추이분석</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/user_schedule.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">업무 투입 시간</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/user_ratio.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">나의 투입률 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../business_management/work/dept_ratio.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">부서 투입률 관리</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">거래처 등록/수정 (스마일넷)</span></a>
                                
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">재무 포털 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="info.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">공지사항</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">사내 업무 일정</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">월별 세무 일정</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">환율 정보</span></a>
                            </li>
                        </ul>
                    </div>  
                </div>
            </div>
            <button type="button" class="popup__btn-close">
                <span class="sp icon-close"><span class="blind">닫기</span></span>
            </button>
        </div>
    </div>
</div>