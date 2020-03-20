<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <script src="/resources/fim/js/jstree.min.js"></script> -->
<!-- <script> -->
<!-- //     // Tree JS -->
<!-- //     $(function () { -->
<!-- //         // CheckBox 없는 경우 -->
<!-- //         $('#jstree').jstree({ -->
<!-- //         "conditionalselect" : function (node, event) { -->
<!-- //         return false; -->
<!-- //         }, -->
<!-- //         "plugins" : [ "conditionalselect" ] -->
<!-- //         }); -->
<!-- //     }); -->
<!-- //     $(function () { -->
<!-- //         // CheckBox 있는 경우 -->
<!-- //         $('#jstree2').jstree({ -->
<!-- //             "checkbox" : { -->
<!-- //                 "keep_selected_style" : false -->
<!-- //             }, -->
<!-- //             "types" : { -->
<!-- //                 "tree" : { -->
<!-- //                     "icon" : "jstree-themeicon-tree" -->
<!-- //                 } -->
<!-- //             }, -->
<!-- //             "plugins" : [ "wholerow", "checkbox", "types" ] -->
<!-- //         }); -->

<!-- //         $('#jstree').on("changed.jstree", function (e, data) { -->
<!-- //             console.log(data.selected); -->
<!-- //         }); -->
<!-- //     }); -->

<!-- </script> -->
<jsp:include page="/WEB-INF/view/include/companyCardInclude.jsp"/>

<!-- 조직도 다이얼로그. -->
<jsp:include page="/WEB-INF/view/include/expense/expenseUserLayer.jsp"/>
<div id="container" class="container container--include-lnb container--fullview container-write container--include-tab">
    <h2 class="page-title">법인카드 정산</h2>
    <!-- <p class="page-title__dsc">· 법인카드 정산 페이지입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>
    </div>
    <div class="grid-layout">
        <div class="grid-column10">
            <!-- <iframe src="http://ekp.smilegate.net/eNovator/GSWF/WebPage/AccountInfo/AccountInfoWrite.aspx" frameborder="0"></iframe> -->

            <div class="tab-area tab-area--top">
                <ul class="lst-tab">
                    <li class="lst-tab__item lst-tab__item--active">
                        <a href="#" class="lst-tab__menu">
                            <span class="lst-tab__menu-txt">정산신청</span>
                        </a>
                    </li>
                    <li class="lst-tab__item">
                        <a href="#" class="lst-tab__menu">
                            <span class="lst-tab__menu-txt">정산목록</span>
                        </a>
                    </li>
                    <li class="lst-tab__item">
                        <a href="#" class="lst-tab__menu">
                            <span class="lst-tab__menu-txt">월별정산내역</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="tab-cnt">
				<!-- 정산신청 -->
            	<jsp:include page="./include/accountRequest.jsp"/>

				<!-- 정산목록 -->
            	<jsp:include page="./include/accountList.jsp"/>

				<!-- 월별정산내역 -->
            	<jsp:include page="./include/monthAccountList.jsp"/>
            </div>

        </div>
    </div>
</div>


 <!-- expense item-all -->
 <div class="popup-wrap popup-layer--expenses popup-layer--expenses-all">
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
                                        <input type="search">
                                    </div>
                                </div>
                                <div class="search-form">
                                    <em class="search-form__title">비용항목 - 소분류</em>
                                    <div class="search-form__inner">
                                        <input type="search">
                                    </div>
                                </div>

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
                                    <col width="228px">
                                    <col width="228px">
                                    <col width="228px">
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
                                <tbody>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">야근식대</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_식대</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">식대(야근식대x)</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_식대</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사내커뮤니케이션비</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">회의비</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">간식대(회의비)</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">회의비</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사내커뮤니케이션</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">회의비</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">경조사-복리</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_경조</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">카페물품구매(식품)</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_기타</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">건강검진</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_건강검진</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">기타-복리</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생_기타</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">인건비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">수수료,통신,기타</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">게임관련(소액결제)</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">게임소액결제</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">총무(카드)-국내출장</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">기타수수료-총무(국내)</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">국내출장_기타</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">총무(카드)-국내출장</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">외부인사지원-총무(해외)</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">접대비</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">교육</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">직무/소통교육</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">교육_직무/소통_인재개발실</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">사업추진비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">복리후생-사내이벤트(ER팀)</span>
                                        </td>
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

<!-- expense item-SGMA -->
<div class="popup-wrap popup-layer--medium popup-layer--expenses popup-layer--expenses-sgma">
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
                                            <span class="table__txt">법인차량_보험</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">일반관리비</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="table__td">
                                            <span class="table__txt">수수료_일반</span>
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
                                            <span class="table__txt">해외출장_기타</span>
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

<!-- expenses detail -->
<div class="popup-wrap popup-layer--medium popup-layer--expenses-detail">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__header">
                <strong class="popup__header-txt">
                    <span>교통비</span> - <span>야근교통비</span> 정보 입력
                </strong>
            </div>
            <div class="popup__contents">
                <div class="table__expenses table__expenses-transportation">
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">교통비 추가 정보 기입</span></caption>
                            <colgroup>
                                <col width="35%">
                                <col width="65%">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="table__th">출발지</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">목적지</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">금액</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">업무시작 / 종료시간</th>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">거리(km)</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">인원수</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">탑승자</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">(* 편도기준)</th>
                                    <td class="table__td table__td--btn align-center">
                                        <button type="button" class="btn btn-calc">
                                            <span class="btn__txt">계산</span>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">금액(자동계산)</th>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt"></span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="table__expenses table__expenses-entertainment">
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">접대비 추가 정보 기입</span></caption>
                            <colgroup>
                                <col width="35%">
                                <col width="65%">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="table__th">업체명</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">업체담당자</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">목적</th>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="popup__contents-txt align-center">청탁금지법(김영란법)이 2016.09.28로 시행됩니다.<br>스마일넷에 공지된 청탁금지법의
                        주요 세부 내용과<br>주의해야 할 부분에 대해 사전 확인 부탁드리겠습니다.</p>
                    <p class="popup__contents-txt align-center">
                        <a href="#" class="btn btn--link" target="_blank">
                            <span class="btn__txt">청탁금지법(김영란법) 시행 및 주요 내용 안내</span>
                        </a>
                    </p>
                </div>
                <div class="table__expenses table__expenses-travel">
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">출장비 추가 정보 기입</span></caption>
                            <colgroup>
                                <col width="35%">
                                <col width="65%">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="table__th">출장정보</th>
                                    <td class="table__td">
                                        <select name="expenseBizTrip1" id="expenseBizTrip1" class="dropdown-select">
                                            <option value="search_period-draft" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">선택1</span>
                                            </option>
                                            <option value="search_period-use" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">선택2</span>
                                            </option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">출장구분</th>
                                    <td class="table__td">
                                        <select name="expenseBizTrip2" id="expenseBizTrip2" class="dropdown-select">
                                            <option value="search_period-draft" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">선택1</span>
                                            </option>
                                            <option value="search_period-use" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">선택2</span>
                                            </option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="popup__contents-txt txt--orange align-center">출장보고서가 등록되었으며 정산이 미완료된 목록입니다.</p>
                </div>
            </div>
            <div class="popup__bottom">
                <div class="popup__btn-box">
                    <button type="button" class="btn btn--bgtype">
                        <span class="btn__txt">취소</span>
                    </button>
                    <button type="button" class="btn btn--orange">
                        <span class="btn__txt">저장</span>
                    </button>
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

