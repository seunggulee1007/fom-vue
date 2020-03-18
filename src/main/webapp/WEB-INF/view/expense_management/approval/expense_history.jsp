<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/view/include/expense_management_include.jsp"/>
    
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
            <a href="expense.html" class="btn btn--orange">
                <span class="btn__txt">지출결의서 작성</span>
            </a>
        </div>                
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <!-- <div class="section section--border">
                <div class="component-area">
                    <form>
                        <fieldset>
                            <legend>지출결의서 조회 영역</legend>
                            <div class="table table-chain">
                                <table>
                                    <caption>
                                        <span class="blind">조회 대상 정보 기입</span>
                                    </caption>
                                    <colgroup>
                                        <col width="10%">
                                        <col width="18%">
                                        <col width="10%">
                                        <col>
                                        <col width="10%">
                                        <col>
                                        <col width="10%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="table__th">기안일자</th>
                                            <td class="table__td table__td--datepicker-range">
                                                <div class="component-group">
                                                    <div class="component-box">
                                                        <div class="input-field datepicker__v-calendar">
                                                            <input type="text" v-model='searchStdDt' readonly id="date_input_exchange1" class="input-field__input">
                                                            <v-date-picker :mode='mode' v-model='searchStdDt' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}'>
                                                                <span class="sp icon-datepicker">
                                                                    <span class="blind">Calendar 열기</span>
                                                                </span>
                                                            </v-date-picker>
                                                        </div>
                                                    </div>
                                                    <div class="component-box">
                                                        <p class="component-box__txt">
                                                        ~
                                                        </p>
                                                    </div>   
                                                    <div class="component-box">
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
                                            </td>
                                            <th class="table__th">기안자</th>
                                            <td class="table__td">
                                                <div class="input-field">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                            </td>
                                            <th class="table__th">기안부서</th>
                                            <td class="table__td">
                                                <div class="input-field">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                            </td>
                                            <th class="table__th">예산부서</th>
                                            <td class="table__td">
                                                <div class="input-field">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table__th">사용일자</th>
                                            <td class="table__td table__td--datepicker-range">
                                                <div class="component-group">
                                                    <div class="component-box">
                                                        <div class="input-field datepicker__v-calendar">
                                                            <input type="text" v-model='searchStdDt' readonly id="date_input_exchange1" class="input-field__input">
                                                            <v-date-picker :mode='mode' v-model='searchStdDt' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}'>
                                                                <span class="sp icon-datepicker">
                                                                    <span class="blind">Calendar 열기</span>
                                                                </span>
                                                            </v-date-picker>
                                                        </div>
                                                    </div>
                                                    <div class="component-box">
                                                        <p class="component-box__txt">
                                                        ~
                                                        </p>
                                                    </div>   
                                                    <div class="component-box">
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
                                            </td>
                                            <th class="table__th">가맹점</th>
                                            <td class="table__td">
                                                <div class="input-field">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                            </td>
                                            <th class="table__th">적요</th>
                                            <td class="table__td" colspan="3">
                                                <div class="input-field">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                            </td>                                                    
                                        </tr>
                                        <tr>
                                          <th class="table__th">비용항목-중분류</th>
                                          <td class="table__td">
                                            <div class="dropdown">
                                                <a href="#" class="dropdown__button">
                                                    <span class="dropdown__button-text">선택</span>
                                                    <span class="sp icon-arrow"><span class="blind">중분류 선택하기</span></span>
                                                </a>
                                                <ul class="dropdown__list">
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">복리후생</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">교통비</span>
                                                        </a>
                                                    </li>	
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">접대비</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">해외출장</span>
                                                        </a>
                                                    </li>	
                                                </ul>
                                            </div>
                                          </td>
                                          <th class="table__th">비용항목-소분류</th>
                                          <td class="table__td">
                                            <div class="dropdown">
                                                <a href="#" class="dropdown__button">
                                                    <span class="dropdown__button-text">선택</span>
                                                    <span class="sp icon-arrow"><span class="blind">중분류 선택하기</span></span>
                                                </a>
                                                <ul class="dropdown__list">
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">야근식대</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">야근교통비</span>
                                                        </a>
                                                    </li>	
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">외근교통비</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">유류대-직원</span>
                                                        </a>
                                                    </li>	
                                                </ul>
                                            </div>
                                          </td>
                                          <th class="table__th">Activity</th>
                                            <td class="table__td">
                                                <div class="input-field">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                            </td>
                                            <th class="table__th">전자결재상태</th>
                                            <td class="table__td">
                                                <div class="dropdown">
                                                    <a href="#" class="dropdown__button">
                                                        <span class="dropdown__button-text">선택</span>
                                                        <span class="sp icon-arrow"><span class="blind">전자결재상태 조회</span></span>
                                                    </a>
                                                    <ul class="dropdown__list">
                                                        <li class="dropdown__item">
                                                            <a href="#" class="dropdown__menu">
                                                                <span class="dropdown__menu-txt">대기</span>
                                                            </a>
                                                        </li>
                                                        <li class="dropdown__item">
                                                            <a href="#" class="dropdown__menu">
                                                                <span class="dropdown__menu-txt">진행</span>
                                                            </a>
                                                        </li>
                                                        <li class="dropdown__item">
                                                            <a href="#" class="dropdown__menu">
                                                                <span class="dropdown__menu-txt">완료(승인)</span>
                                                            </a>
                                                        </li>	
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="component-group btn-box align-right">
                                <div class="component-box">
                                    <button type="button" class="btn btn--bgtype">
                                        <span class="btn__txt">조회</span>
                                    </button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div> -->
            <div class="section section--border section-history section-expense-history">
                 <div class="component-area clearfix ">
                    <div class="component-group">
                        <div class="component-box">
                            <select name="searchPeriodItem" id="searchPeriodItem" class="dropdown-select">
                                <option value="search_period-draft" class="dropdown-select__menu">
                                    <span class="dropdown__menu-txt">기안일자</span>
                                </option>
                                <option value="search_period-use" class="dropdown-select__menu">
                                    <span class="dropdown__menu-txt">사용일자</span>
                                </option>
                            </select>
                        </div>
                       <!--  <div class="dropdown">                                        
                            <a href="#" class="dropdown__button dropdown__button--selected">
                                <span class="dropdown__button-text">기안일자</span>
                                <span class="sp icon-arrow"><span class="blind">조회기간 선택</span></span>
                            </a>
                            <ul class="dropdown__list">
                                <li class="dropdown__item">
                                    <a href="#" class="dropdown__menu">
                                        <span class="dropdown__menu-txt">기안일자</span>
                                    </a>
                                </li>
                                <li class="dropdown__item">
                                    <a href="#" class="dropdown__menu">
                                        <span class="dropdown__menu-txt">사용일자</span>
                                    </a>
                                </li>	
                            </ul>
                        </div> -->
                        <div class="component-box">
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
                            <form>
                                <fieldset>
                                    <legend>지출결의서 조회 조건 입력 및 검색</legend>
                                    <div class="search-form clearfix">
                                        <div class="search-form__inner">
                                            <select name="searchItem" id="searchItem1st" class="dropdown-select">
                                                <option value="search_summary" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">적요</span>
                                                </option>
                                                <option value="search_draft-writer" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">기안자</span>
                                                </option>
                                                <option value="search_draft-dept" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">기안부서</span>
                                                </option>
                                                <option value="search_user" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">사용자</span>
                                                </option>
                                                <option value="search_belonging-dept" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">귀속부서</span>
                                                </option>
                                                <option value="search_budget-dept" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">예산부서</span>
                                                </option>
                                            </select>
                                            <!-- <div class="dropdown">                                        
                                                <a href="#" class="dropdown__button dropdown__button--selected">
                                                    <span class="dropdown__button-text">적요</span>
                                                    <span class="sp icon-arrow"><span class="blind">검색조건 선택</span></span>
                                                </a>
                                                <ul class="dropdown__list">
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">적요</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">기안자</span>
                                                        </a>
                                                    </li>	
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">기안부서</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">사용자</span>
                                                        </a>
                                                    </li>	
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">귀속부서</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">예산부서</span>
                                                        </a>
                                                    </li>	
                                                </ul>
                                            </div> -->
                                        </div>
                                        <div class="search-form__inner">
                                            <input type="search">
                                            <div class="search-form__bx-btn">
                                                <input type="reset" class="search-form__btn-delete">
                                                <span class="blind">reset</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="search-form clearfix">
                                        <div class="search-form__inner">
                                            <select name="searchItem" id="searchItem2nd" class="dropdown-select">
                                                <option value="search_summary" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">적요</span>
                                                </option>
                                                <option value="search_draft-writer" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">기안자</span>
                                                </option>
                                                <option value="search_draft-dept" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">기안부서</span>
                                                </option>
                                                <option value="search_user" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">사용자</span>
                                                </option>
                                                <option value="search_belonging-dept" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">귀속부서</span>
                                                </option>
                                                <option value="search_budget-dept" class="dropdown-select__menu">
                                                    <span class="dropdown__menu-txt">예산부서</span>
                                                </option>
                                            </select>
                                            <!-- <div class="dropdown">                                        
                                                <a href="#" class="dropdown__button dropdown__button--selected">
                                                    <span class="dropdown__button-text">기안자</span>
                                                    <span class="sp icon-arrow"><span class="blind">검색조건 선택</span></span>
                                                </a>
                                                <ul class="dropdown__list">
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">적요</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">기안자</span>
                                                        </a>
                                                    </li>	
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">기안부서</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">사용자</span>
                                                        </a>
                                                    </li>	
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">귀속부서</span>
                                                        </a>
                                                    </li>
                                                    <li class="dropdown__item">
                                                        <a href="#" class="dropdown__menu">
                                                            <span class="dropdown__menu-txt">예산부서</span>
                                                        </a>
                                                    </li>	
                                                </ul>
                                            </div> -->
                                        </div>
                                        <div class="search-form__inner">
                                            <input type="search">
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
                                <caption><span class="blind">지출결의서 결재 내역</span></caption>
                                <colgroup>
                                    <col width="8%">
                                    <col width="8%">
                                    <col width="8%">
                                    <col width="6%">
                                    <col width="16%">
                                    <col width="8%">
                                    <col width="6%">
                                    <col>
                                    <col>
                                    <col>
                                    <col width="15%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="table__th" scope="col">전자결재상태</th>
                                        <th class="table__th" scope="col">전표처리유무</th>
                                        <th class="table__th" scope="col">기안일자</th>
                                        <th class="table__th" scope="col">기안자</th>
                                        <th class="table__th" scope="col">기안부서</th>
                                        <th class="table__th" scope="col">사용일자</th>
                                        <th class="table__th" scope="col">사용자</th>
                                        <th class="table__th" scope="col">예산부서</th>
                                        <th class="table__th" scope="col">귀속부서</th>
                                        <th class="table__th table__txt--align-right" scope="col">금액 (VAT포함)</th>
                                        <th class="table__th" scope="col">적요</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">진행</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">유</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">2020/01/14</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동A</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">SGH>IT기술본부>기술지원담당>정보시스템실>정보개발팀</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">2020/01/06</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">홍길동A</span>
                                        </td>                                                
                                        <td class="table__td">
                                            <span class="table__txt">IT기술본부</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">IT기술본부</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">KRW 589,000</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">[야근식대]홍길동A/2020-01-06</span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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
                                            <span class="table__txt table__txt--align-right"></span>
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