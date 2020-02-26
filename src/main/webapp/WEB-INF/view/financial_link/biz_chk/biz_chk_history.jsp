<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container" class="container container--include-lnb container--fullview">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">      
            <li class="lst-lnb__item">
                <a href="../tax_schedule.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">월별 세무 일정</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="../exchange.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">환율 정보</span>
                </a>
            </li>
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">거래처 휴/폐업 조회</span>  
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="biz_num.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">거래처 휴/폐업 조회</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item lst-lnb-sub__item--active">
                        <a href="biz_chk_history.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">휴/폐업 조회 이력</span>    
                        </a>                                
                    </li>  
                </ul>
            </li>
            <li class="lst-lnb__item">
                <a href="https://txsi.hometax.go.kr/docs/main.jsp" target="_blank" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">국세법령정보시스템</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="https://www.kebhana.com/cont/mall/mall15/mall1501/index.jsp?_menuNo=23100" target="_blank" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">하나은행 (환율)</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="http://www.smbs.biz/index.jsp" target="_blank" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">서울외국환중개</span>
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
            <div class="section section--border section-biz-history">
                <div class="component-area clearfix">
                    <div class="component-group">
                        <div class="datepicker--range-type">
                            <!-- 시작일 -->
                            <div class="component-box">
                                <div class="datepicker">
                                    <!-- [D] Input Field -->
                                    <div class="input-field">
                                        <label for="date_input_info1" class="input-field__title ">조회기준일자</label>
                                        <span class="input-field__inner">
                                            <input type="text" id="date_input_info1" class="input-field__input" placeholder="연도/월/일" title="검색 기준 시작일 선택">
                                            <button type="button" class="input-field__btn-datepicker">
                                                <span class="sp icon-datepicker">
                                                    <span class="blind">Calendar 열기</span>
                                                </span>
                                            </button>
                                        </span>
                                    </div>
                                    <!-- [D] Calendar Popup -->
                                    <div class="datepicker__calendar">
                                        <button type="button" class="datepicker__btn-title">
                                            <em class="datepicker__btn-title-txt">2020년 02월</em>
                                        </button>
                                        <div class="datepicker__date-box">
                                            <table>
                                            <caption>Calendar</caption>
                                            <colgroup><col><col><col><col><col><col><col></colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">일</th>
                                                    <th scope="col">월</th>
                                                    <th scope="col">화</th>
                                                    <th scope="col">수</th>
                                                    <th scope="col">목</th>
                                                    <th scope="col">금</th>
                                                    <th scope="col">토</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">26</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">27</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">28</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">29</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">30</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">31</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">1</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">2</span>
                                                    </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">3</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">4</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">5</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">6</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">7</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">8</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">9</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">10</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">11</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">12</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">13</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">14</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">15</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">16</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--today">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">17</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">18</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">19</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">20</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">21</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">22</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">23</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">24</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">25</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">26</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">27</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">28</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">29</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            </table>
                                        </div>
                                        <div class="datepicker__btn-box">
                                            <button type="button" class="datepicker__btn-prev">
                                                <span class="sp icon-prev">
                                                    <span class="blind">이전 달 보기</span>
                                                </span>
                                            </button>
                                            <button type="button" class="datepicker__btn-next">
                                                <span class="sp icon-next">
                                                    <span class="blind">다음 달 보기</span>
                                                </span>
                                            </button>
                                        </div>
                                    </div>
                                    <!-- [D] 연/월 선택창 -->
                                    <div class="datepicker__year-box">
                                        <div class="datepicker__title">
                                            <span class="datepicker__title-txt">2019년 07월</span>
                                        </div>
                                        <ul class="datepicker__lst-year">
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2014년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2015년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2016년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2017년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2018년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item datepicker__lst-item--active">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2019년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2020년</span>
                                                </button>
                                            </li>
                                        </ul>
                                        <ul class="datepicker__lst-month">
                                            <li class="datepicker__lst-item datepicker__lst-item--active">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">01월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">02월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">03월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">04월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">05월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">06월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">07월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">08월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">09월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">10월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">11월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">12월</span>
                                                </button>
                                            </li>
                                        </ul>
                                        <button type="button" class="datepicker__btn-close">
                                            <span class="sp icon-close">
                                                <span class="blind">닫기</span>
                                            </span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <span class="datepicker__txt">~</span>
                            <!-- 종료일 -->
                            <div class="component-box">
                                <div class="datepicker">
                                    <!-- [D] Input Field -->
                                    <div class="input-field">
                                        <label for="date_input" class="input-field__title blind">작성일</label>
                                        <span class="input-field__inner">
                                            <input type="text" id="date_input_info2" class="input-field__input" placeholder="연도/월/일" title="검색 기준 마지막일 선택">
                                            <button type="button" class="input-field__btn-datepicker">
                                                <span class="sp icon-datepicker">
                                                    <span class="blind">Calendar 열기</span>
                                                </span>
                                            </button>
                                        </span>
                                    </div>
                                    <!-- [D] Calendar Popup -->
                                    <div class="datepicker__calendar">
                                        <button type="button" class="datepicker__btn-title">
                                            <em class="datepicker__btn-title-txt">2020년 02월</em>
                                        </button>
                                        <div class="datepicker__date-box">
                                            <table>
                                            <caption>Calendar</caption>
                                            <colgroup><col><col><col><col><col><col><col></colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">일</th>
                                                    <th scope="col">월</th>
                                                    <th scope="col">화</th>
                                                    <th scope="col">수</th>
                                                    <th scope="col">목</th>
                                                    <th scope="col">금</th>
                                                    <th scope="col">토</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">26</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">27</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">28</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">29</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">30</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--other-month">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">31</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">1</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">2</span>
                                                    </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">3</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">4</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">5</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">6</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">7</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">8</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">9</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">10</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">11</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">12</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">13</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">14</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">15</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">16</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--today">
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">17</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">18</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">19</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">20</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">21</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">22</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">23</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">24</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">25</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date">
                                                            <span class="datepicker__btn-date-txt">26</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">27</span>
                                                        </button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">28</span>
                                                        </button>
                                                    </td>
                                                    <td class="datepicker__date--holiday">
                                                        <button type="button" class="datepicker__btn-date" disabled>
                                                            <span class="datepicker__btn-date-txt">29</span>
                                                        </button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            </table>
                                        </div>
                                        <div class="datepicker__btn-box">
                                            <button type="button" class="datepicker__btn-prev">
                                                <span class="sp icon-prev">
                                                    <span class="blind">이전 달 보기</span>
                                                </span>
                                            </button>
                                            <button type="button" class="datepicker__btn-next">
                                                <span class="sp icon-next">
                                                    <span class="blind">다음 달 보기</span>
                                                </span>
                                            </button>
                                        </div>
                                    </div>
                                    <!-- [D] 연/월 선택창 -->
                                    <div class="datepicker__year-box">
                                        <div class="datepicker__title">
                                            <span class="datepicker__title-txt">2019년 07월</span>
                                        </div>
                                        <ul class="datepicker__lst-year">
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2014년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2015년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2016년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2017년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2018년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item datepicker__lst-item--active">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2019년</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">2020년</span>
                                                </button>
                                            </li>
                                        </ul>
                                        <ul class="datepicker__lst-month">
                                            <li class="datepicker__lst-item datepicker__lst-item--active">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">01월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">02월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">03월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">04월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">05월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">06월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">07월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">08월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">09월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">10월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">11월</span>
                                                </button>
                                            </li>
                                            <li class="datepicker__lst-item">
                                                <button type="button" class="datepicker__lst-menu">
                                                    <span class="datepicker__lst-menu-txt">12월</span>
                                                </button>
                                            </li>
                                        </ul>
                                        <button type="button" class="datepicker__btn-close">
                                            <span class="sp icon-close">
                                                <span class="blind">닫기</span>
                                            </span>
                                        </button>
                                    </div>
                                </div>
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
                                            <input type="search">
                                            <div class="search-form__bx-btn">
                                                <input type="reset" class="search-form__btn-delete">
                                                <span class="blind">reset</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">요청자</em>
                                        <div class="search-form__inner">         
                                            <input type="search">
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">요청부서</em>
                                        <div class="search-form__inner">         
                                            <input type="search">
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
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
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">20/01/20</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동A</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">정보개발팀</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">123-45-67890</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">부가가치세 일반과세자</span>
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
        </div>
    </div>
</div>