<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="popup-wrap popup-layer--medium popup-layer--expenses-detail popup-wrap--active">
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