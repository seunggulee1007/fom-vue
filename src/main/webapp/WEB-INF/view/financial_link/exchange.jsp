<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/fim/js/fp/exchange.js" type="text/babel"></script>
<script src='https://unpkg.com/v-calendar@next'></script>
<!-- <script src="https://unpkg.com/vuejs-datepicker"></script> -->

<div id="container" class="container container--include-lnb container--fullview" v-cloak>
    <div class="lnb lnb-area">
        <ul class="lst-lnb">
            <li class="lst-lnb__item">
                <a href="tax_schedule.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">월별 세무 일정</span>
                </a>
            </li>
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="exchange.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">환율 정보</span>
                </a>
            </li>
            
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">거래처 휴/폐업 조회</span>  
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>                          
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="biz_chk/biz_num.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">거래처 휴/폐업 조회</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="biz_chk/biz_chk_history.html" class="lst-lnb-sub__menu">
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
                <small class="footer__copyright">&copy; Smilegate. All Rights Reserved.</small>
            </div>
        </footer>
        
        <button type="button" class="btn btn-lnb">
            <span class="icon-arrow"><span class="blind">메뉴 열기</span></span>
        </button>
    </div>
    <h2 class="page-title">환율 정보</h2>
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
            <div class="section section--border section-exchange">
                <div class="component-group">      
                    <div class="component-box datepicker__v-calendar">
                        <label for="date_input_exchange" class="input-field__title ">환율일자</label>
                        <v-date-picker :mode='mode' v-model='selectedDate' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks'>
                        </v-date-picker>
                        <span class="sp icon-datepicker">
                            <span class="blind">Calendar 열기</span>
                        </span>
                    </div>                                    
                    <div class="component-box component-box--align-right clearfix">
                        <div class="component-box component-box--align-left">
                            <div class="dropdown" v-bind:class="{'dropdown--active' : toggleYn}" @click="clickToggle();">
                                <em class="dropdown__title">통화 선택</em>
                                <a href="#" class="dropdown__button dropdown__button--selected">
                                    <span class="dropdown__button-text">{{selectedName}}</span>
                                    <span class="sp icon-arrow"><span class="blind">옵션창 열기</span></span>
                                </a>
                                <ul class="dropdown__list">
                                    <li class="dropdown__item" v-for="list in currencyCode" v-bind:class="{'dropdown--active' : selectedCurrency === list.code}">
                                        <a href="#" class="dropdown__menu" @click="selectCurrency(list)">
                                            <span class="dropdown__menu-txt">{{list.title}}</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="component-box component-box--align-left">
                            <button type="button" class="btn btn--bgtype" @click="getExchangeList();"><span class="btn__txt">조회</span></button>  
                        </div>      
                    </div>
                </div>
                <div class="component-group">                   
                    <div class="table table--scroll-vertical">
                        <div class="table-box">
                            <table>
                                <caption>
                                    <span class="blind">통화별 환율 리스트</span>
                                </caption>
                                <colgroup>
                                    <col width="14%">
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
                                        <th scope="col" class="table__th">통화</th>
                                        <th scope="col" class="table__th table__txt--align-right">매매기준율</th>
                                        <th scope="col" class="table__th table__txt--align-right">송금 보낼때</th>
                                        <th scope="col" class="table__th table__txt--align-right">송금 받을때</th>
                                        <th scope="col" class="table__th table__txt--align-right">현찰 살때</th>
                                        <th scope="col" class="table__th table__txt--align-right">현찰 팔때</th>
                                        <th scope="col" class="table__th table__txt--align-right">대미 환산</th>
                                        <th scope="col" class="table__th table__txt--align-right">환가료율</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="list in exchangeList">
                                        <td class="table__td">
                                            <span class="table__txt table__txt--blue-dark">{{list.KorCurrName}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.TTM}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.TTB}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.TTS}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.CASHB}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.CASHS}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.USAExrate}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt table__txt--align-right">{{list.ChangeRate}}</span>
                                        </td>
                                    </tr>
                                    <tr v-show="exchangeList.length == 0">
                                        <td class="table__td" colspan="8">
                                            <span class="table__txt align-center">조회된 내용이 없습니다.</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>                 
            </div>
            
        </div>
    </div>
</div>