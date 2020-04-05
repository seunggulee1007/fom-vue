<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container" class="container container--include-lnb container--fullview">
    <h2 class="page-title">그룹회계기준 및 가이드</h2>
    <!-- <p class="page-title__dsc">· 그룹회계기준 및 가이드 게시판입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>
        <div class="component-box">
            <a href="/financialLink/accounting/standardsWrite" class="btn btn--orange">
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
                            <em class="lst__txt">총 등록건수<br>12건 <span class="lst__txt--gray">(1/2 page)</span></em>
                        </div>
                        <!-- <div class="component-box">
                            <em class="component__title">신규 게시물 알림</em>
                            <button type="button" class="btn btn-alert"><span class="btn__txt">ON</span></button>
                            <button type="button" class="btn btn-alert btn-alert--active"><span class="btn__txt">OFF</span></button>
                        </div> -->
                    </div>                    
                    <div class="component-group">
                        <div class="datepicker--range-type">
                            <div class="component-box">
                                <div class="input-field ">
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
                                <div class="input-field input-field--no-title ">
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
                            <select name="searchItem" id="searchItem" class="dropdown-select">
                                <option value="search_all" class="dropdown-select__menu">
                                    <span class="dropdown__menu-txt">전체</span>
                                </option>
                                <option value="search_title" class="dropdown-select__menu">
                                    <span class="dropdown__menu-txt">제목</span>
                                </option>
                                <option value="search_cnt" class="dropdown-select__menu">
                                    <span class="dropdown__menu-txt">내용</span>
                                </option>
                                <option value="search_title-cnt" class="dropdown-select__menu">
                                    <span class="dropdown__menu-txt">제목+내용</span>
                                </option>
                                <option value="search_writer" class="dropdown-select__menu">
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
                                            <input type="search" placeholder="검색어를 입력하세요." maxlength="100">
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
                                    <span class="blind">그룹회계기준 및 가이드 게시판</span>
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
                                        <th scope="col" class="table__th align-center">첨부</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="table__row--top">
                                        <td class="table__td">
                                            <span class="sp icon-important"><span class="blind">중요 공지</span></span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">[필독] 그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">12</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">[필독] 그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">11</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">10</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">9</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">8</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">7</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">6</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                                        <td class="table__td"></td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">5</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                                            <span class="table__txt">4</span>
                                        </td>
                                        <td class="table__td">
                                            <a href="accounting_standards_view.html" class="table__title">
                                                <span class="table__txt">그룹회계기준 및 가이드</span>
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
                    <a href="/financialLink/accounting/standardsWrite" class="btn btn--orange">
                        <span class="btn__txt">+ 신규작성</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>