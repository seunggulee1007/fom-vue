<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

                <div class="lst-tab-cnt">
                    <div class="section section--border section-history">
                        <div class="component-area clearfix">
                            <div class="component-group">
                                <div class="component-box">
                                    <em class="input-field__title">기준년도</em>
                                    <select name="searchYear" id="searchYear" class="dropdown-select">
                                        <option value="search_all" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">전체</span>
                                        </option>
                                        <option value="search_year1" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">2020</span>
                                        </option>
                                        <option value="search_year2" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">2019</span>
                                        </option>
                                        <option value="search_year3" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">2018</span>
                                        </option>
                                        <option value="search_year4" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">2017</span>
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="component-group">
                                <div class="component-box input-field">
                                    <label class="input-field__title">사용자</label>
                                    <input type="text" class="input-field__input" value="홍길동A" disabled>
                                </div>
                                <div class="component-box input-field">
                                    <em class="input-field__title">카드번호</em>
                                    <select name="selectCardNum" id="selectCardNum" class="dropdown-select">
                                        <option value="card_num_all" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">전체</span>
                                        </option>
                                        <option value="card_num_1" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">1234-5678-9000-0000</span>
                                        </option>
                                        <option value="card_num_2" class="dropdown-select__menu">
                                            <span class="dropdown__menu-txt">1234-5678-9000-1234</span>
                                        </option>
                                    </select>
                                </div>
                                <div class="component-box" style="margin-top: 23px">
                                    <button type="button" class="btn btn--bgtype">
                                      <span class="btn__txt">조회</span>
                                    </button>
                                </div>
                            </div>
                       </div>
                       <div class="component-area">
                        <div class="component-group">
                            <div class="table table-chain table--scroll-vertical">
                                <div class="table-box table-box-monthly-card">
                                    <table>
                                        <caption><span class="blind">법인카드 월별 정산 내역</span></caption>
                                        <colgroup>
                                            <col width="188px">
                                            <col>
                                            <col>
                                            <col>
                                            <col>
                                            <col>
                                            <col>
                                            <col>
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
                                                <th class="table__th" rowspan="2" scope="col">정산년월</th>
                                                <th class="table__th align-center" colspan="3" scope="colgroup">접대비</th>
                                                <th class="table__th align-center" colspan="3" scope="colgroup">업무 추진비</th>
                                                <th class="table__th align-center" colspan="3" scope="colgroup">사내 커뮤니케이션비</th>
                                                <th class="table__th align-center" colspan="3" scope="colgroup">TOTAL</th>
                                                <th class="table__th table__txt--align-right" rowspan="2" scope="col">항공,호텔,렌트<br>(한도차감제외)</th>
                                                <th class="table__th table__txt--align-right" rowspan="2" scope="col">기타 사용액</th>
                                            </tr>
                                            <tr>
                                                <th class="table__th table__txt--align-right" scope="col">한도금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">사용금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">잔여한도</th>
                                                <th class="table__th table__txt--align-right" scope="col">한도금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">사용금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">잔여한도</th>
                                                <th class="table__th table__txt--align-right" scope="col">한도금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">사용금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">잔여한도</th>
                                                <th class="table__th table__txt--align-right" scope="col">한도금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">사용금액</th>
                                                <th class="table__th table__txt--align-right" scope="col">잔여한도</th>
                                            </tr>
                                        </thead>
                                        <tbody class="table__row-group--top">
                                            <tr class="table__row--top">
                                                <th class="table__th table__txt--blue-dark">TOTAL</th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row--top">
                                                <th class="table__th">
                                                    카드번호 #1<br>
                                                    <span class="table__txt-caption">카드명칭</span>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row--top">
                                                <th class="table__th">
                                                    카드번호 #2<br>
                                                    <span class="table__txt-caption">카드명칭</span>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open" onclick="">
                                                        <span class="btn__txt">
                                                            2020년 1월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail table__row--expanded">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row--expanded">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 2월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button></th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail table__row--expanded">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 3월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button></th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 4월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button></th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 5월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button></th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 6월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button></th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 7월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button></th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 8월
                                                        </span>
                                                        <span class="sp icon-arrow--triangle-right">
                                                            <span class="blind">보유 카드 리스트 보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-0000
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드0000 (하이패스,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button>
                                                </th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--item table__row--expanded">
                                                <th class="table__th table__th--btn table__th--btn-front">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            1234-5678-9000-1234
                                                        </span>
                                                        <br>
                                                        <span class="btn__txt btn__txt-caption">
                                                            [임원] 외환카드1234 (법인카드,홍길동A)
                                                        </span>
                                                        <span class="sp icon-arrow">
                                                            <span class="blind">기안내역보기</span>
                                                        </span>
                                                    </button></th>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                                <td class="table__td">
                                                    <span class="table__txt table__txt--align-right"></span>
                                                </td>
                                            </tr>
                                            <tr class="table__row-sub--detail">
                                                <td class="table__td table__td--table" colspan="15">
                                                    <div class="table">
                                                        <table>
                                                            <caption><span class="blind">선택한 연월의 해당 카드 상세 내역</span></caption>
                                                            <colgroup>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
                                                                <col>
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
                                                                    <th class="table__th" rowspan="2" scope="col">승인일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안자</th>
                                                                    <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                                                    <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                                                    <th class="table__th" rowspan="2" scope="col">적요</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                                                    <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                                                    <th class="table__th align-center" colspan="4" scope="colgroup">금액</th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="table__th" scope="col">중분류</th>
                                                                    <th class="table__th" scope="col">소분류</th>
                                                                    <th class="table__th" scope="col">비용항목</th>
                                                                    <th class="table__th" scope="col">Activity</th>
                                                                    <th class="table__th" scope="col">공급가액</th>
                                                                    <th class="table__th" scope="col">봉사료</th>
                                                                    <th class="table__th" scope="col">부가세</th>
                                                                    <th class="table__th" scope="col">총계</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
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


