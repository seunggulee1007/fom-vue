<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="popup-wrap popup-layer--medium popup-layer--expenses popup-layer--expenses-sgma popup-wrap--active">
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
                                            <input type="search">
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <em class="search-form__title">SGMA - 비용항목</em>
                                        <div class="search-form__inner">         
                                            <input type="search">
                                        </div>
                                    </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="component-box">
                        <button type="button" class="btn btn--bgtype">
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
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_식대</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">회의비</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_경조</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_기타</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_건강검진</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">교통비_야근택시</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">일반관리비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">교통비_기타</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">일반관리비</span>
                                        </td>
                                    </tr>                                            
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">게임소액결제</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">국내출장_기타</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">접대비</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">교육_직무/소통_인재개발실</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">ER_사내이벤트</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <button type="button" class="popup__btn-close">
                <span class="sp icon-close">
                    <span class="blind">닫기</span>
                </span>
            </button>
        </div>
    </div>
</div>