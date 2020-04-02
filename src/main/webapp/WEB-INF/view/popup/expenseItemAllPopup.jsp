<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
    .popup-wrap {
        padding : 0px !important;
        min-height : 662px;
    }
</style>
<script src="/resources/fim/js/expenseManagement/expenseItemAll.js"></script>
<div class="popup-wrap popup-layer--expenses popup-layer--expenses-all popup-wrap--active">
    <input type="hidden" id="idx">
    <input type="hidden" id="userNm">
    <input type="hidden" id="comCd">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup_header">
                <div class="popup__header-txt">비용항목 및 Activity</div>
            </div>
            <div class="popup__contents">
                <div class="popup__contents-inner popup__contents-search">
                    <div class="component-box">
                        <form>
                            <fieldset>
                                <legend>비용항목 및 Activity 검색영역</legend>
                                <div class="search-form">
                                    <em class="search-form__title">비용항목 - 중분류</em>
                                    <div class="search-form__inner">
                                        <input type="search" id="smKindName" class="expenseInput">
                                    </div>
                                </div>
                                <div class="search-form">
                                    <em class="search-form__title">비용항목 - 소분류</em>
                                    <div class="search-form__inner">         
                                        <input type="search" id="costName" class="expenseInput">
                                    </div>
                                </div>
                            
                                <div class="search-form">
                                    <em class="search-form__title">SGMA - Activity</em>
                                    <div class="search-form__inner">         
                                        <input type="search" id="activityNm" class="expenseInput">
                                    </div>
                                </div>
                                <div class="search-form">
                                    <em class="search-form__title">SGMA - 비용항목</em>
                                    <div class="search-form__inner">         
                                        <input type="search" id="costItemNm" class="expenseInput">
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="component-box">
                        <button type="button" class="btn btn--bgtype" id="getExpenseBtn">
                          <span class="btn__txt">검색</span>
                        </button>
                    </div>
                </div>
                <div class="popup__contents-inner popup__contents-table">
                    <div class="table table--scroll-vertical">
                        <div class="table-box">
                            <table>
                                <caption><span class="blind">비용항목 분류에 따른 SGMA Activity와 SGMA 비용항목 내역</span></caption>
                                <colgroup>
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="table__th align-center" colspan="2">비용항목</th>
                                        <th class="table__th align-center" colspan="2">SGMA</th>
                                    </tr>
                                    <tr>
                                        <th class="table__th" scope="col">중분류</th>
                                        <th class="table__th" scope="col">소분류</th>
                                        <th class="table__th" scope="col">Activity</th>
                                        <th class="table__th" scope="col">비용항목</th>
                                    </tr>
                                </thead>
                                <tbody id="expense">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>