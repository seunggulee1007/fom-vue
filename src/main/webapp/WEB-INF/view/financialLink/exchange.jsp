<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/fim/js/financialLink/exchange.js" type="text/javascript"></script>

<jsp:include page="/WEB-INF/view/include/financialLinkInclude.jsp"/>

<div id="container" class="container container--include-lnb container--fullview">
    <h2 class="page-title">환율 정보</h2>
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>                
    </div>
    <div class="grid-layout" id="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-exchange">
                <div class="component-group">      
                    <div class="component-box ">
                        <div class="input-field">
                            <label for="date_input_exchange" class="input-field__title ">환율일자</label>
                            <input type="text" id='selectedDate' readonly class="input-field__datepicker">
                        </div>                                    
                    </div>
                    <div class="component-box component-box--align-right clearfix">
                        <div class="component-box component-box--align-left">
                            <em class="dropdown__title">통화 선택</em>
                            <select name="selectCurrency" id="currencyCode" class="dropdown-select">
                                
                            </select>
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
                                <tbody id="exchangeList">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>                 
            </div>
            
        </div>
    </div>
</div>