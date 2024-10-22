<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/babel" src="/resources/fim/js/expenseManagement/expense.js"></script>
<jsp:include page="/WEB-INF/view/include/expenseManagementInclude.jsp"/>
<script src='/resources/fim/js/vcalendar.js'></script>
<style>
    .non_box { 
        border : 0px !important;
    }
    .input_disable {
        background-color: #f9f9f9;
    }
    .datepicker__v-calendar .icon-datepicker {
        top : 2.3px !important;
    }
</style>
<div id="container" class="container container--include-lnb container--fullview container-write">
    <input type="hidden" id="tiCostSeq" value="${param.tiCostSeq }">
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
    <div class="grid-layout" v-cloak id="app">
        <div class="grid-column grid-column10">                    
            <div class="section section--border section-expense">
                <div class="component-group">
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">지출결의서 작성</span></caption>
                            <tbody>
                                <tr>
                                    <th class="table__th">문서번호</th>
                                    <td class="table__td"><span class="table__txt">결재 완료 시, 발번됩니다.</span></td>
                                    <th class="table__th">기안일자</th>
                                    <td class="table__td table__td--data"><span class="table__txt">{{tiarCostVO.regDate}}</span></td>
                                    <th class="table__th">기안자</th>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt">{{tiarCostVO.regUserNm}}</span>
                                        <button type="button" class="btn btn-change-user" @click="openDeptPopup('asdf', '1')">
                                            <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">기안부서</th>
                                    <td colspan="5" class="table__td table__td--data"><span class="table__txt">{{tiarCostVO.regDeptNm}}</span></td>
                                </tr>
                                <tr>
                                    <th class="table__th ">제목</th>
                                    <td colspan="5" class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" v-model="tiarCostVO.title">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">계좌번호</th>
                                    <td class="table__td table__td--data"><span class="table__txt">{{tiarCostVO.acctNo}}</span></td>
                                    <th class="table__th">은행명</th>
                                    <td class="table__td table__td--data"><span class="table__txt">{{tiarCostVO.bankNm}}</span></td>
                                    <th class="table__th">예금주</th>
                                    <td class="table__td table__td--data"><span class="table__txt">{{tiarCostVO.acctOwnerNm}}</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
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
                                    <th rowspan="2" scope="col" class="table__th align-center">선택</th>
                                    <th rowspan="2" scope="col" class="table__th align-center">예산부서</th>
                                    <th rowspan="2" scope="col" class="table__th align-center">사용자 (귀속부서)</th>
                                    <th colspan="2" class="table__th align-center">비용항목</th>
                                    <th colspan="2" scope="col" class="table__th align-center">SGMA</th>
                                    <th rowspan="2" scope="col" class="table__th align-center">가맹점</th>
                                    <th rowspan="2" scope="col" class="table__th align-center">사용일자</th>
                                    <th rowspan="2" scope="col" class="table__th align-center">적요</th>
                                    <th rowspan="2" scope="col" class="table__th align-center">금액 (VAT포함)</th>
                                </tr>
                                <tr>
                                    <th class="table__th align-center">중분류</th>
                                    <th class="table__th align-center">소분류</th>
                                    <th class="table__th align-center">Activity</th>
                                    <th class="table__th align-center">비용항목</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(expense, idx) in expenseList">
                                    <td class="table__td">
                                        <div class="btn_group">
                                            <span class="btn-checkbox">
                                                <input type="checkbox" class="checkbox_member-leave" v-model="expense.checked" :id="'checkbox_memberChk'+idx">
                                                <label :for="'checkbox_memberChk'+idx" class="btn-checkbox__label"><span class="blind">선택</span></label>
                                            </span>
                                        </div>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt">{{expense.deptVO.budgetDeptNm}}</span>
                                    </td>
                                    <td class="table__td table__td--btn">
                                        <span class="table__txt">{{expense.deptVO.useUserNm}}<br>{{expense.deptVO.useDeptNm}}</span>
                                        <button type="button" class="btn btn-change-user" @click="openDeptPopup(idx)">
                                            <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
                                        </button>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input non_box" v-model="expense.costInfoVO.smKindName" @dblclick="openExpenseAll(idx)" @keyup.enter="openExpenseAll(idx, expense.costInfoVO.smKindName)" placeholder="선택해주세요." maxlength="30">
                                        </div>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input input_disable non_box" disabled v-model="expense.costInfoVO.costName">
                                        </div>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input non_box" @dblclick="openExpenseSgma(idx, expense.costInfoVO.activityNm)" @keyup.enter="openExpenseSgma(idx, expense.costInfoVO.activityNm)" v-model="expense.costInfoVO.activityNm" v-if="expense.costInfoVO.smKindSeq" placeholder="선택해주세요.">
                                            <span class="table__txt" v-else="!expense.costInfoVO.smKindName"></span>
                                        </div>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input input_disable non_box" disabled v-model="expense.costInfoVO.costItemNm">
                                        </div>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" placeholder="입력해주세요." v-model="expense.store" maxlength="100">
                                        </div>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field datepicker__v-calendar">
                                            <span class="table__txt">{{getDate(expense.useDate,'-')}}</span>
                                            <v-date-picker :mode='mode' v-model='expense.useDate' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}' :is-dark='false'>
                                                <span class="sp icon-datepicker">
                                                    <span class="blind">Calendar 열기</span>
                                                </span>
                                            </v-date-picker>
                                        </div>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" v-model="expense.remark" placeholder="입력해주세요." maxlength="250">
                                        </div>
                                        <span class="table__txt table__txt-caption txt--blue"></span>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" v-model="expense.curAmt" placeholder="입력해주세요." @change="calcTotalAmt();" v-int maxlength="14">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>                                
                    </div>
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">지출결의서 합계금액</span></caption>
                            <tbody>
                                <tr>
                                    <th class="table__th" colspan="9">합계</th>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt">{{tiarCostVO.totalAmt | currency}}</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="component-box btn-box align-right">
                        <div class="component-box">
                            <button type="button" class="btn btn--small btn--bgtype" @click="removeExpenseList();">
                                <span class="btn__txt">삭제</span>
                            </button>
                        </div>
                        <div class="component-box">
                            <button type="button" class="btn btn--small btn--orange" @click="addExpenseList();">
                                <span class="btn__txt">+ 추가</span>
                            </button>
                        </div>
                    </div>
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">기타 의견입력 및 관련 파일 첨부</span></caption>
                            <tbody>
                                <tr>
                                    <th class="table__th">의견입력</th>
                                    <td class="table__td" colspan="5">
                                        <div class="textarea">
                                            <textarea name="" cols="30" rows="10" style="height:80px" v-model="tiarCostVO.contents" maxlength="500"></textarea>
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
                                    <th class="table__th">SmileDoc 파일 첨부</th>  
                                    <td class="table__td" colspan="5">
                                        <div class="input-field input-field-table">
                                            <button type="button" class="btn btn-file">
                                                <label for="file1" class="btn__txt">파일선택</label>
                                            </button>
                                            <input type="file" id="file1" class="input-field__file blind">
                                            <div class="input-field__file-box">
                                                <div class="file-info"></div>
                                            </div>                                                
                                        </div>                                            
                                    </td>  
                                </tr>
                                <tr>
                                    <th class="table__th">파일 첨부</th>  
                                    <td class="table__td" colspan="5">
                                        <div class="input-field input-field-table">
                                            <button type="button" class="btn btn-file">
                                                <label for="btnFile" class="btn__txt">파일선택</label>
                                            </button>
                                            <input type="file" id="btnFile" class="input-field__file blind" multiple v-on:change="handleFilesUpload()" ref="files">
                                            <span class="input__dsc-txt">{{fileSize | currency}} {{fileFormat}} / 100 MB</span>  
                                            <div class="input-field__file-box" v-show="files.length > 0">
                                                <div class="file-info" v-for="(file, key) in files">{{ file.name }} <span class="remove-file" v-on:click="removeFile( key )">Remove</span></div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th class="table__th">참조결재</th>  
                                    <td class="table__td" colspan="5">
                                        <div class="input-field input-field-table">
                                            <button type="button" class="btn btn-file">
                                                <label for="file3" class="btn__txt">파일선택</label>
                                            </button>
                                            <input type="file" id="file3" class="input-field__file blind">
                                            <div class="input-field__file-box">
                                                <div class="file-info"></div>
                                            </div>                                                
                                        </div>                                            
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="component-group btn-box align-center">
                    <div class="component-box" v-if="tiarCostVO.tiCostSeq">
                        <button type="button" class="btn btn--large btn--bgtype" @click="deleteExpense();">
                            <span class="btn__txt">삭제</span>
                        </button>
                    </div>
                    <div class="component-box">
                        <button type="button" class="btn btn--large" @click="saveExpense();">
                            <span class="btn__txt">저장</span>
                        </button>
                    </div>
                    <div class="component-box">
                        <button type="button" class="btn btn--large btn--orange">
                            <span class="btn__txt">결제상신</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/view/include/expense/expenseUserLayer.jsp"/>

<jsp:include page="/WEB-INF/view/include/expense/expenseItemAll.jsp"/>

<jsp:include page="/WEB-INF/view/include/expense/expenseItemSgma.jsp"/>

<jsp:include page="/WEB-INF/view/include/expense/expenseDetail.jsp"/>

<!-- expense item-SGMA -->


<!-- expenses detail -->
