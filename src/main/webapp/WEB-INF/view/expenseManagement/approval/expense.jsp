<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/fim/js/expenseManagement/expense.js"></script>
<style>
    .non_box { 
        border : 0px !important;
    }
    .input_disable {
        background-color: #f9f9f9;
    }
    . .icon-datepicker {
        top : 2.3px !important;
    }
</style>
<!-- container -->
<div id="container" class="container container--include-lnb container--fullview container-write">
    
    <h2 class="page-title">지출결의서</h2>
    <!-- <p class="page-title__dsc">· 지출결의서를 작성할 수 있는 페이지입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <button type="button" class="btn btn-bookmark">
                <span class="sp icon-bookmark"></span>
                <span class="blind">즐겨찾기 추가하기</span>
            </button>
        </div>
        <div class="component-box">
            <a href="/expenseManagement/approval/expenseHistory" class="btn btn--orange">
                <span class="btn__txt">지출결의서 조회</span>
            </a>
        </div>                
    </div>
    <div class="grid-layout">
        <input type="hidden" id="idx">
        <input type="hidden" id="userNm">
        <input type="hidden" id="smKindName">
        <input type="hidden" id="comCd">
        <input type="hidden" id="smKindSeq">
        <input type="hidden" id="costSeq">
        <input type="hidden" id="tiCostSeq" value="${param.tiCostSeq }">
        <div id="costInfoVO"></div>
        <div class="grid-column grid-column10">                    
            <div class="section section--border section-expense">
                <div class="component-group">
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">지출결의서 작성</span></caption>
                            <colgroup>
                                <col width="12%">
                                <col>
                                <col width="12%">
                                <col>
                                <col width="12%">
                                <col>
                            </colgroup>
                            <tbody id="topHtml">
                            </tbody>
                        </table>
                    </div>
                    <form action="/expenseManagement/approval/expense" method="post" id="frm">
                        <div class="table table-chain">
                            <table>
                                <caption><span class="blind">비용항목에 따른 내역 작성</span></caption>
                                <colgroup>
                                    <col width="60px">
                                    <col>
                                    <col width="10%">
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                    <col width="8.8%">
                                    <col>
                                    <col>
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th rowspan="2" scope="col" class="table__th">선택</th>
                                        <th rowspan="2" scope="col" class="table__th">예산부서</th>
                                        <th rowspan="2" scope="col" class="table__th">사용자 (귀속부서)</th>
                                        <th colspan="2" class="table__th align-center">비용항목</th>
                                        <th colspan="2" scope="col" class="table__th align-center">SGMA</th>
                                        <th rowspan="2" scope="col" class="table__th">가맹점</th>
                                        <th rowspan="2" scope="col" class="table__th">사용일자</th>
                                        <th rowspan="2" scope="col" class="table__th">적요</th>
                                        <th rowspan="2" scope="col" class="table__th table__txt--align-right">금액 (VAT포함)</th>
                                    </tr>
                                    <tr>
                                        <th class="table__th">중분류</th>
                                        <th class="table__th">소분류</th>
                                        <th class="table__th">Activity</th>
                                        <th class="table__th">비용항목</th>
                                    </tr>
                                </thead>
                                <tbody id="expenseList">
                                </tbody>
                            </table>                                
                        </div>
                        <div class="table table-chain">
                            <table>
                                <caption><span class="blind">지출결의서 합계금액</span></caption>
                                <colgroup>
                                    <col width="60px">
                                    <col>
                                    <col width="10%">
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                    <col width="8.8%">
                                    <col>
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th class="table__th" colspan="10">합계</th>
                                        <td class="table__td table__td--data">
                                            <span class="table__txt table__txt--align-right" id="totalAmtDisplay">
                                                <input type="hidden" id="totalAmt" name="totalAmt">
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="component-box btn-box align-right">
                            <div class="component-box">
                                <button type="button" class="btn btn--small btn--bgtype" id="removeExpense">
                                    <span class="btn__txt">삭제</span>
                                </button>
                            </div>
                            <div class="component-box">
                                <button type="button" class="btn btn--small btn--orange" id="addExpense">
                                    <span class="btn__txt">+ 추가</span>
                                </button>
                            </div>
                        </div>
                        <div class="table table-chain">
                            <table>
                                <caption><span class="blind">기타 의견입력 및 관련 파일 첨부</span></caption>
                                <colgroup>
                                    <col width="12%">
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                    <col>
                                </colgroup>
                                <tbody id="bottomHtml">
                                    <tr>
                                        <th class="table__th">의견입력</th>
                                        <td class="table__td" colspan="5">
                                            <div class="textarea">
                                                <textarea id="memo" name="memo" cols="30" rows="10" style="height:80px"></textarea>
                                            </div>
                                        </td>                                            
                                    </tr>
                                    <tr>
                                        <th class="table__th">전표처리여부</th>
                                        <td class="table__td" colspan="5">
                                            <div class="input-field input-field-table">
                                                <input type="text" class="input-field__input">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="table__th">파일 첨부</th>  
                                        <td class="table__td" colspan="5">
                                            <div class="input-field input-field-table">
                                                <button type="button" class="btn btn-file">
                                                    <label for="file2" class="btn__txt">파일선택</label>
                                                </button>
                                                <input type="file" id="file2" class="input-field__file blind" multiple>
                                                <span class="input__dsc-txt"><span id="fileSize">0</span> <span id="fileFormat">Bytes</span> / 100 MB</span>  
                                                <div class="input-field__file-box" id="uploadFile">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>                        
            </div>
            <div class="component-group btn-box align-center" id="buttonHtml">
            </div>
        </div>
    </div>
</div>