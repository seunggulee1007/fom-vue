<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <script type="text/javascript" src="/resources/fim/js/jstree.min.js"></script>   -->
<script type="text/babel" src="/resources/fim/js/expense_management/expense.js"></script>
<!-- CDNJS :: Sortable (https://cdnjs.com/) -->
<script src="//cdn.jsdelivr.net/npm/sortablejs@1.8.4/Sortable.min.js"></script>
<!-- CDNJS :: Vue.Draggable (https://cdnjs.com/) -->
<script src="//cdnjs.cloudflare.com/ajax/libs/Vue.Draggable/2.20.0/vuedraggable.umd.min.js"></script>
<script src='https://unpkg.com/v-calendar@next'></script>
<div id="container" class="container container--include-lnb container--fullview container-write">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자결재</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="approval_form.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">기안서</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="approval_report.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">기안서(보고)</span>    
                        </a>                                
                    </li>  
                    <li class="lst-lnb-sub__item lst-lnb-sub__item--active">
                        <a href="expense.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">지출결의서</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="budget_change.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">예산변경신청</span>    
                        </a>                                
                    </li>  
                </ul>
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자세금계산서</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="../bill/tax_bill.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">전자세금계산서</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="../bill/bill.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">전자계산서</span>    
                        </a>                                
                    </li>  
                </ul>
            </li>
            <li class="lst-lnb__item">
                <a href="../workshop.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">워크샵 정산</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="../cafeteria.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">중석식 정산</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="../cafeteria_mobile.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">모바일식권 정산</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="../advance_payment.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전도금 정산</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="../taxi.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">택시비 정산</span>
                </a>
            </li>
        </ul>

        <footer class="footer footer--lnb-type">
            <div class="footer__inner">
                <!-- <ul class="footer__util">
                    <li class="footer__util-item">
                        <a href="#" class="footer__util-menu">
                            <span class="footer__util-menu-txt">스마일넷 배너등록</span>
                        </a>
                    </li>
                    <li class="footer__util-item">
                        <a href="#" class="footer__util-menu">
                            <span class="footer__util-menu-txt">개선 및 건의</span>
                        </a>
                    </li>
                </ul>
                <div class="dropdown">
                    <a href="#" class="dropdown__button">
                        <span class="dropdown__button-text">패밀리 사이트 바로가기</span>
                        <span class="sp icon-arrow">
                            <span class="blind">옵션창 열기</span>
                        </span>
                    </a>
                    <ul class="dropdown__list">
                    <li class="dropdown__item">
                        <a href="#" class="dropdown__menu">
                            <span class="dropdown__menu-txt">List 1_All</span>
                        </a>
                    </li>
                    <li class="dropdown__item">
                        <a href="#" class="dropdown__menu">
                            <span class="dropdown__menu-txt">List 2</span>
                        </a>
                    </li>
                    </ul>
                </div> -->
                <small class="footer__copyright">&copy; Smilegate. All Rights Reserved.</small>
            </div>
        </footer>
        
        <button type="button" class="btn btn-lnb">
            <span class="icon-arrow"><span class="blind">메뉴 열기</span></span>
        </button>
    </div>
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
            <a href="expense_history.html" class="btn btn--orange">
                <span class="btn__txt">지출결의서 조회</span>
            </a>
        </div>                
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">                    
            <div class="section section--border">
                <div class="component-group">
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">지출결의서 작성</span></caption>
                            <tbody>
                                <tr>
                                    <th class="table__th">문서번호</th>
                                    <td class="table__td table__td--data"><span class="table__txt">결재 완료 시, 발번됩니다.</span></td>
                                    <th class="table__th">기안일자</th>
                                    <td class="table__td table__td--data"><span class="table__txt"></span></td>
                                    <th class="table__th">기안자</th>
                                    <td class="table__td table__td--data"><span class="table__txt"></span></td>
                                </tr>
                                <tr>
                                    <th class="table__th">기안부서</th>
                                    <td colspan="5" class="table__td table__td--data"><span class="table__txt">SGH>IT기술본부>기술지원담당>정보시스템실>정보개발팀</span></td>
                                </tr>
                                <tr>
                                    <th class="table__th table__th--required">제목</th>
                                    <td colspan="5" class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" value="[SGH][지출결의서(현금)_김연준_2020-02-20]">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th">계좌번호</th>
                                    <td class="table__td table__td--data"><span class="table__txt"></span></td>
                                    <th class="table__th">은행명</th>
                                    <td class="table__td table__td--data"><span class="table__txt"></span></td>
                                    <th class="table__th">예금주</th>
                                    <td class="table__td table__td--data"><span class="table__txt"></span></td>
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
                                    <th rowspan="2" scope="col" class="table__th">선택</th>
                                    <th rowspan="2" scope="col" class="table__th">예산부서</th>
                                    <th rowspan="2" scope="col" class="table__th table__th--required">사용자 (귀속부서)</th>
                                    <th colspan="2" class="table__th table__th--required align-center">비용항목</th>
                                    <th colspan="2" scope="col" class="table__th table__th--required align-center">SGMA</th>
                                    <th rowspan="2" scope="col" class="table__th table__th--required">가맹점</th>
                                    <th rowspan="2" scope="col" class="table__th table__th--required">사용일자</th>
                                    <th rowspan="2" scope="col" class="table__th table__th--required">적요</th>
                                    <th rowspan="2" scope="col" class="table__th table__th--required">금액 (VAT포함)</th>
                                </tr>
                                <tr>
                                    <th class="table__th table__th--required">중분류</th>
                                    <th class="table__th table__th--required">소분류</th>
                                    <th class="table__th table__th--required">Activity</th>
                                    <th class="table__th table__th--required">비용항목</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(expense, idx) in expenseList">
                                    <td class="table__td">
                                        <div class="btn_group">
                                            <span class="btn-checkbox">
                                                <input type="checkbox" id="checkbox_memberChk1" class="checkbox_member-leave">
                                                <label for="checkbox_memberChk1" class="btn-checkbox__label"><span class="blind">선택</span></label>
                                            </span>
                                        </div>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt">{{expense.DeptVO.budgetDeptNm}}</span>
                                    </td>
                                    <td class="table__td table__td--btn">
                                        <span class="table__txt">{{expense.DeptVO.userNm}}<br>{{expense.DeptVO.deptNm}}</span>
                                        <button type="button" class="btn btn-change-user" @click="openDeptPopup(idx)">
                                            <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
                                        </button>
                                    </td>
                                    <td class="table__td table__td--btn">
                                        <button type="button" class="btn btn-choice">
                                            <!-- <span class="btn__txt">선택</span> -->
                                        </button>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt"></span>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt"></span>
                                    </td>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt"></span>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input">
                                        </div>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field datepicker__v-calendar">
                                            <input type="text" v-model='expense.useDate' readonly id="date_input_exchange2" class="input-field__input">
                                            <v-date-picker :mode='mode' v-model='expense.useDate' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}' :is-dark='true'>
                                                <span class="sp icon-datepicker">
                                                    <span class="blind">Calendar 열기</span>
                                                </span>
                                            </v-date-picker>
                                        </div>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" v-model="expense.remark">
                                        </div>
                                    </td>
                                    <td class="table__td">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" v-model="expense.curAmt">
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
                                        <span class="table__txt"></span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="component-box btn-box align-right">
                        <div class="component-box">
                            <button type="button" class="btn btn--small btn--bgtype">
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
                                            <textarea name="" cols="30" rows="10" style="height:80px"></textarea>
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
                                                <label for="file2" class="btn__txt">파일선택</label>
                                            </button>
                                            <input type="file" id="file2" class="input-field__file blind">
                                            <span class="input__dsc-txt">0 Bytes / 100 MB</span>  
                                            <div class="input-field__file-box">
                                                <div class="file-info">smilegate_test.xlsx</div>
                                                <div class="file-info">smilegate_test.xlsx</div>
                                                <div class="file-info">smilegate_test.xlsx</div>
                                                <div class="file-info">smilegate_test.xlsx</div>
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
                    <div class="component-box">
                        <button type="button" class="btn btn--large btn--bgtype">
                            <span class="btn__txt">삭제</span>
                        </button>
                    </div>
                    <div class="component-box">
                        <button type="button" class="btn btn--large">
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
 <!-- Change User -->
<div class="popup-wrap popup-layer--user" :class="{'popup-wrap--active' : deptPopupFlag}">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__header">
                <strong class="popup__header-txt">사용자 조직도</strong>
            </div>
            <div class="popup__contents clearfix">
                <div class="popup__contents-inner">
                    <div class="component-group">
                        <div class="tree-area">
                            <ul>
                                <tree-item v-for="list in deptList" :item="list">
                                </tree-item>
                            </ul>
                        </div>
                    </div>    
                </div>
                <div class="popup__contents-inner popup__contents-search">
                    <em class="popup__contents-title">검색결과</em>
                    <div class="contents--draggable">
                        <draggable v-model="userList" group="people" @change="log">
                            <div class="popup__contents-txt" v-for="(list,idx) in userList" @dblclick="moveUser('user',idx);">
                                <span class="user_name">{{list.userNm}}</span>
                                <span class="user_position txt--blue">{{list.title2Nm}}</span>
                                <span class="user_dept txt--green">{{list.deptNm}}</span>
                                <span class="user_office txt--gray">{{list.comNm}}</span>
                            </div>
                        </draggable>
                    </div>
                </div>
                <div class="component-group">
                    <div class="btn-box">
                        <button type="button" class="btn-select">
                            <span class="sp icon-next">
                                <span class="blind">선택하기</span>
                            </span>
                        </button>
                        <button type="button" class="btn-remove">
                            <span class="sp icon-prev">
                                <span class="blind">선택에서 제외하기</span>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="popup__contents-inner popup__contents-selected">
                    <em class="popup__contents-title">선택된 사용자</em>
                        <div class="contents--droppable">
                            <draggable v-model="selectedUserList" group="people" style="min-height:200px;"  @change="log">
                                <div class="popup__contents-txt" v-for="list in selectedUserList" @dblclick="moveUser('selectedUser',idx);">
                                    <span class="user_name">{{list.userNm}}</span>
                                    <span class="user_position txt--blue">{{list.title2Nm}}</span>
                                    <span class="user_dept txt--green">{{list.deptNm}}</span>
                                    <span class="user_office txt--gray">{{list.comNm}}</span>
                                </div>
                            </draggable>
                        </div>
                </div>
                <rawDisplayer class="col-3" :value="userList" title="List 1" />
            
                <rawDisplayer class="col-3" :value="selectedUserList" title="List 2" />
            </div>
            <div class="popup__bottom">
                <p class="popup__contents-txt">*검색된 결과는 <span class="txt--orange">Drag&Drop</span> 혹은 <span class="txt--orange">더블클릭</span> 하시면 선택됩니다.</p>
                <div class="popup__btn-box">
                   <button type="button" class="btn btn--bgtype" @click="closeDeptPopup();">
                       <span class="btn__txt">취소</span>
                   </button>
                   <button type="button" class="btn btn--orange" @click="sendData();">
                       <span class="btn__txt">확인</span>
                   </button>
                </div>
            </div>
            <button type="button" class="popup__btn-close" @click="closeDeptPopup();">
                <span class="sp icon-close"><span class="blind">닫기</span></span>
            </button>
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