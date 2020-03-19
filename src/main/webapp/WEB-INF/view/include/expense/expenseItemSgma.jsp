<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/babel" src="/resources/fim/js/expenseManagement/expenseItemSgma.js"></script>
<div class="popup-wrap popup-layer--medium popup-layer--expenses popup-layer--expenses-sgma" :class="{'popup-wrap--active' : expenseSgmaPopupFlag}">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup_header">
                <div class="popup__header-txt">SGMA Activity 및 비용항목</div>
            </div>
            <div class="popup__contents">
                <div class="popup__contents-inner popup__contents-search">
                    <div class="component-box">
                        <form>
                            <fieldset>
                                <legend>SGMA Activity와 SGMA 비용항목 검색영역</legend>
                                    <div class="search-form">
                                        <em class="search-form__title">SGMA - Activity</em>
                                        <div class="search-form__inner">         
                                            <input type="search" v-model="expenseVO.activityNm" @keyup.enter="selectExpenseList();">
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">SGMA - 비용항목</em>
                                        <div class="search-form__inner">         
                                            <input type="search" v-model="expenseVO.costItemNm" @keyup.enter="selectExpenseList();">
                                        </div>
                                    </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="component-box">
                        <button type="button" class="btn btn--bgtype" @click="selectExpenseList();">
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
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="table__th align-center" colspan="2">SGMA</th>
                                    </tr>
                                    <tr>
                                        <th class="table__th" scope="col">Activity</th>
                                        <th class="table__th" scope="col">비용항목</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="list in expenseList" @dblclick="choiceItem(list)">
                                        <td class="table__td">
                                            <span class="table__txt">{{list.activityNm}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.costItemNm}}</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <button type="button" class="popup__btn-close" @click="closePopup();">
                <span class="sp icon-close">
                    <span class="blind">닫기</span>
                </span>
            </button>
        </div>
    </div>
</div>