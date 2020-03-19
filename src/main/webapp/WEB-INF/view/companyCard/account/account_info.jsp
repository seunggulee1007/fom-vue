<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/fim/js/jstree.min.js"></script>
<script>
    // Tree JS
    $(function () {
        // CheckBox 없는 경우
        $('#jstree').jstree({
        "conditionalselect" : function (node, event) {
        return false;
        },
        "plugins" : [ "conditionalselect" ]
        });
    });
    $(function () {
        // CheckBox 있는 경우
        $('#jstree2').jstree({
            "checkbox" : {
                "keep_selected_style" : false
            },
            "types" : {
                "tree" : {
                    "icon" : "jstree-themeicon-tree"
                }
            },
            "plugins" : [ "wholerow", "checkbox", "types" ]
        });

        $('#jstree').on("changed.jstree", function (e, data) {
            console.log(data.selected);
        });
    });

</script>
<jsp:include page="/WEB-INF/view/include/companyCardInclude.jsp"/>
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
                <div class="lst-tab-cnt lst-tab-cnt--active">
                    <div class="section section--border section-expense">
                        <div class="component-group">
                            <div class="table table-chain">
                                <table>
                                    <caption><span class="blind">법인카드 정산 신청</span></caption>
                                    <colgroup>
                                        <col width="9%">
                                        <col>
                                        <col width="9%">
                                        <col>
                                        <col width="9%">
                                        <col>
                                        <col width="9%">
                                        <col width="22%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="table__th">문서번호</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt">결재 완료 시, 발번됩니다.</span>
                                            </td>
                                            <th class="table__th">기안일자</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt">20/03/10</span>
                                            </td>
                                            <th class="table__th">기안자</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt">홍길동A</span>
                                            </td>
                                            <th class="table__th">정산번호</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table__th">기안부서</th>
                                            <td colspan="7" class="table__td table__td--data"><span class="table__txt">SGH>IT기술본부>기술지원담당>정보시스템실>정보개발팀</span></td>
                                        </tr>
                                        <tr>
                                            <th class="table__th table__th--required">제목</th>
                                            <td colspan="7" class="table__td">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input" value="[SGH][테스트_홍길동A_2020-03-10]">
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>                            
                        </div>
                        <div class="component-group">
                            <em class="component__title">1. 카드 정보</em>
                            <div class="table table-chain">
                                <table>
                                    <caption><span class="blind">정산신청을 위한 카드 정보 입력</span></caption>
                                    <colgroup>
                                        <col width="9%">
                                        <col>
                                        <col width="9%">
                                        <col>
                                        <col width="9%">
                                        <col>
                                        <col width="9%">
                                        <col width="22%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="table__th table__th--required">사용자</th>
                                            <td class="table__td table__td--btn">
                                                <span class="table__txt">홍길동A</span>
                                                <button type="button" class="btn btn-change-user" onclick="$('.popup-layer--user').addClass('popup-wrap--active');" style="top: 5px; right:16px;">
                                                    <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
                                                </button>
                                                <span class="table__txt"></span>
                                            </td>
                                            <th class="table__th">사용자 부서</th>
                                            <td class="table__td">
                                                <span class="table__txt">정보개발팀</span>
                                            </td>
                                            <th class="table__th table__th--required">카드번호</th>
                                            <td class="table__td">
                                                <select name="companyCardNum" id="companyCardNum" class="dropdown-select">
                                                    <option value="companyCard1" class="dropdown-select__menu">
                                                        <span class="dropdown__menu-txt">1234-5678-9000-1234</span>
                                                    </option>
                                                    <option value="companyCard2" class="dropdown-select__menu">
                                                        <span class="dropdown__menu-txt">1234-5678-9000-0000</span>
                                                    </option>
                                                </select>  
                                            </td>
                                            <th class="table__th">카드구분</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt">[임원] 외환카드0000 (하이패스,홍길동A)</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table__th table__th--required">정산년월</th>
                                            <td class="table__td">
                                                <div class="input-field datepicker__v-calendar">
                                                    <input type="text" v-model='searchEndDt' readonly id="date_input_exchange2" class="input-field__input" style="max-width: 100%">
                                                    <v-date-picker :mode='mode' v-model='searchEndDt' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}'>
                                                        <span class="sp icon-datepicker">
                                                            <span class="blind">Calendar 열기</span>
                                                        </span>
                                                    </v-date-picker>
                                                </div>
                                            </td>
                                            <td class="table__td" colspan="6">
                                                <button type="button" class="btn btn--orange" onclick="">
                                                    <span class="btn__txt">카드결제 내역 가져오기</span>
                                                </button>
                                                <span class="table__txt"></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>                                
                            </div>
                        </div>
                        <div class="component-group">
                            <div class="clearfix">
                                <div class="component-box component-box--align-left">
                                    <em class="component__title">2. 정산 내역</em>
                                </div>
                                <div class="component-box btn-box component-box--align-right align-right">
                                    <div class="component-box">
                                        <button type="button" class="btn">
                                            <span class="btn__txt">차감제외처리</span>
                                        </button>
                                    </div>
                                    <div class="component-box">
                                        <button type="button" class="btn">
                                            <span class="btn__txt">개인비용처리</span>
                                        </button>
                                    </div>
                                    <div class="component-box">
                                        <button type="button" class="btn">
                                            <span class="btn__txt">선택삭제</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="table table-chain" style="margin-top: 0">
                                <table>
                                    <caption><span class="blind">카드 사용에 대한 자세한 정산 내역 작성</span></caption>
                                    <colgroup>
                                        <col width="46px">
                                        <col width="46px">
                                        <col width="88px">
                                        <col width="56px">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col width="80px">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="table__th" rowspan="2">선택</th>
                                            <th class="table__th" rowspan="2">개인 비용 처리</th>
                                            <th class="table__th" rowspan="2">일자</th>
                                            <th class="table__th" rowspan="2">시간</th>
                                            <th class="table__th" rowspan="2">가맹점</th>
                                            <th class="table__th" rowspan="2">예산부서</th>
                                            <th class="table__th" rowspan="2">사용자<br>(귀속처리)</th>
                                            <th class="table__th align-center" colspan="2">비용항목</th>
                                            <th class="table__th align-center" colspan="2">SGMA</th>
                                            <th class="table__th table__th--required" rowspan="2">적요</th>
                                            <th class="table__th" rowspan="2">현지통화</th>
                                            <th class="table__th align-center" colspan="4">금액</th>
                                        </tr>
                                        <tr>
                                            <th class="table__th table__th--required">중분류</th>
                                            <th class="table__th table__th--required">소분류</th>
                                            <th class="table__th table__th--required">중분류</th>
                                            <th class="table__th">소분류</th>
                                            <th class="table__th table__txt--align-right">공급가액</th>
                                            <th class="table__th table__txt--align-right">봉사료</th>
                                            <th class="table__th table__txt--align-right">부가세</th>
                                            <th class="table__th table__txt--align-right">총계</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="table__td">
                                                <div class="btn_group">
                                                    <span class="btn-checkbox">
                                                        <input type="checkbox" id="checkbox_expenseChk1">
                                                        <label for="checkbox_expenseChk1" class="btn-checkbox__label"><span class="blind">선택</span></label>
                                                    </span>
                                                </div>
                                            </td>
                                            <td class="table__td">
                                                <div class="btn_group">
                                                    <span class="btn-checkbox">
                                                        <input type="checkbox" id="checkbox_cardExpense1" disabled>
                                                        <label for="checkbox_cardExpense1" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label>
                                                    </span>
                                                </div>
                                            </td> 
                                            <td class="table__td">
                                                <span class="table__txt">20/03/02</span>
                                            </td>
                                            <td class="table__td">
                                                <span class="table__txt">13:20</span>
                                            </td>
                                            <td class="table__td">
                                                <div class="tooltip-box tooltip--hover tooltip--right">
                                                    <span class="table__txt">(주)너와집 백현점</span>
                                                    <span class="sp icon-info"></span>
                                                    <div class="tooltip__inner">
                                                        <p class="tooltip__txt">
                                                            가맹점명: (주)너와집 백현점
                                                        </p>
                                                        <p class="tooltip__txt">
                                                            주소: 경기 성남시 분당구 안양판교로 1201번길 45, 지상1층 (백현동)
                                                        </p>
                                                        <p class="tooltip__txt">
                                                            사업자번호: 1298553542
                                                        </p>
                                                        <p class="tooltip__txt">
                                                            업종: 일반음식점
                                                        </p>
                                                        <p class="tooltip__txt">
                                                            승인번호: 12345678
                                                        </p>

                                                    </div>
                                                </div>
                                            </td>
                                            <td class="table__td">
                                                <span class="table__txt">스마일게이트홀딩스</span>
                                            </td>
                                            <td class="table__td table__td--btn">
                                                <span class="table__txt">홍길동A<br><span class="table__txt-caption">정보시스템실</span></span>
                                                <button type="button" class="btn btn-change-user" onclick="$('.popup-layer--user').addClass('popup-wrap--active');">
                                                    <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
                                                </button>
                                            </td>
                                            <td class="table__td">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input" ondblclick="$('.popup-layer--expenses-all').addClass('popup-wrap--active');">
                                                </div>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input" ondblclick="$('.popup-layer--expenses-sgma').addClass('popup-wrap--active');">
                                                </div>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                                <span class="table__txt table__txt-caption txt--blue"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt">KRW</span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">10,000</span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">0</span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">1,000</span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">11,000</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table__td">
                                                <div class="btn_group">
                                                    <span class="btn-checkbox">
                                                        <input type="checkbox" id="checkbox_expenseChk1">
                                                        <label for="checkbox_expenseChk1" class="btn-checkbox__label"><span class="blind">선택</span></label>
                                                    </span>
                                                </div>
                                            </td>
                                            <td class="table__td">
                                                <div class="btn_group">
                                                    <span class="btn-checkbox">
                                                        <input type="checkbox" id="checkbox_cardExpense1" disabled>
                                                        <label for="checkbox_cardExpense1" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label>
                                                    </span>
                                                </div>
                                            </td> 
                                            <td class="table__td">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td table__td--btn">
                                                <span class="table__txt">홍길동A<br><span class="table__txt-caption">정보시스템실</span></span>
                                                <button type="button" class="btn btn-change-user" onclick="$('.popup-layer--user').addClass('popup-wrap--active');">
                                                    <span class="sp icon-change-user"><span class="blind">사용자 선택</span></span>
                                                </button>
                                            </td>
                                            <td class="table__td">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input" ondblclick="$('.popup-layer--expenses-all').addClass('popup-wrap--active');">
                                                </div>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input" ondblclick="$('.popup-layer--expenses-sgma').addClass('popup-wrap--active');">
                                                </div>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                                <span class="table__txt table__txt-caption txt--blue"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>                                
                            </div>
                            <div class="table table-chain">
                                <table>
                                    <caption><span class="blind">정산내역 합계금액</span></caption>
                                    <colgroup>
                                        <col width="60px">
                                        <col width="64px">
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
                                    <tbody>
                                        <tr class="table__row--highlight">
                                            <th class="table__th" colspan="13">합계</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">10,000</span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">0</span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">1,000</span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right">11,000</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            <!-- 월별 법인카드 한도 및 사용금액 
                                <div class="table">
                                <table>
                                    <caption><span class="blind">월별 정산내역 합계 리스트</span></caption>
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
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="table__th" scope="col">구분</th>
                                            <th class="table__th table__txt--align-right" scope="col">1월</th>
                                            <th class="table__th table__txt--align-right" scope="col">2월</th>
                                            <th class="table__th table__txt--align-right" scope="col">3월</th>
                                            <th class="table__th table__txt--align-right" scope="col">4월</th>
                                            <th class="table__th table__txt--align-right" scope="col">5월</th>
                                            <th class="table__th table__txt--align-right" scope="col">6월</th>
                                            <th class="table__th table__txt--align-right" scope="col">7월</th>
                                            <th class="table__th table__txt--align-right" scope="col">8월</th>
                                            <th class="table__th table__txt--align-right" scope="col">9월</th>
                                            <th class="table__th table__txt--align-right" scope="col">10월</th>
                                            <th class="table__th table__txt--align-right" scope="col">11월</th>
                                            <th class="table__th table__txt--align-right" scope="col">12월</th>
                                            <th class="table__th table__txt--align-right" scope="col">TOTAL</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th class="table__th border--top" scope="row">한도금액</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table__th border--top" scope="row">사용금액</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table__th border--top" scope="row">잔여한도</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="table table-chain">
                                <table>
                                    <caption><span class="blind">기준년도 대비 연월별 법인카드 사용금액 및 잔여한도</span></caption>
                                    <colgroup>
                                        <col width="10%">
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
                                            <th class="table__th" rowspan="2">구분</th>
                                            <th class="table__th align-center" scope="colgroup" colspan="5">정산년월(YYYY-MM)</th>
                                            <th class="table__th align-center" scope="colgroup" colspan="3">기준년도(YYYY)</th>
                                        </tr>
                                        <tr>
                                            <th class="table__th" scope="col">법인카드 항목</th>
                                            <th class="table__th table__txt--align-right" scope="col">월 한도금액 ①</th>
                                            <th class="table__th table__txt--align-right" scope="col">월 누적 사용금액 ②</th>
                                            <th class="table__th table__txt--align-right" scope="col">신청금액 ③</th>
                                            <th class="table__th table__txt--align-right" scope="col">잔여한도 ① - ② - ③</th>
                                            <th class="table__th table__txt--align-right" scope="col">년 총한도 ④</th>
                                            <th class="table__th table__txt--align-right" scope="col">누적 사용금액 ⑤</th>
                                            <th class="table__th table__txt--align-right" scope="col">잔여 한도 ④ - ⑤</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th class="table__th" scope="row" rowspan="4">한도 및 사용금액<br>(한도 포함)</th>
                                            <th class="table__th border--top" scope="row">접대비</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>                                            
                                        </tr>
                                        <tr>
                                            <th class="table__th" scope="row">업무추진비</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>                                            
                                        </tr>
                                        <tr>
                                            <th class="table__th" scope="row">사내 커뮤니케이션비</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>                                            
                                        </tr>
                                        <tr class="table__row--top">
                                            <th class="table__th" scope="row">계</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>                                            
                                        </tr>
                                        <tr>
                                            <th class="table__th" scope="row" rowspan="3">한도 및 사용금액<br><span class="txt--orange">(한도 제외)</span></th>
                                            <th class="table__th" scope="row">출장비(항공,호텔,렌트)</th>                                            
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>                                            
                                        </tr>
                                        <tr>
                                            <th class="table__th" scope="row">기타</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>                                            
                                        </tr>
                                        <tr class="table__row--highlight">
                                            <th class="table__th" scope="row">계</th>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>
                                            <td class="table__td table__td--data">
                                                <span class="table__txt table__txt--align-right"></span>
                                            </td>                                            
                                        </tr>
                                    </tbody>
                                </table>
                            </div> -->

                            <div class="table table-chain">
                                <table>
                                    <caption>해당 지출결의서의 전표처리 여부 및 참조파일 추가 설정</caption>
                                    <colgroup>
                                        <col width="9%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="table__th" scope="row">전표처리여부</th>
                                            <td class="table__td" colspan="8">
                                                <div class="input-field input-field-table">
                                                    <input type="text" class="input-field__input">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table__th">파일 첨부</th>  
                                            <td class="table__td" colspan="8">
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
                                            <td class="table__td" colspan="8">
                                                <div class="input-field input-field-table">
                                                    <button type="button" class="btn btn-file">
                                                        <label for="file3" class="btn__txt">문서조회</label>
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
                <div class="lst-tab-cnt">
                    <div class="section section--border section-history">
                       <div class="component-area clearfix">
                            <div class="component-group">
                                <div class="datepicker--range-type">
                                    <div class="component-box">
                                        <div class="input-field datepicker__v-calendar">
                                         <label for="date_input_exchange1" class="input-field__title">정산년월</label>
                                            <input type="text" v-model='searchStdDt' readonly id="date_input_exchange1" class="input-field__input">
                                            <v-date-picker :mode='mode' v-model='searchStdDt' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}'>
                                                <span class="sp icon-datepicker">
                                                    <span class="blind">Calendar 열기</span>
                                                </span>
                                            </v-date-picker>
                                        </div>
                                    </div>
                                    <div class="component-box component-box--non-label">
                                        <p class="component-box__txt">
                                        ~
                                        </p>
                                    </div>   
                                    <div class="component-box component-box--non-label">
                                        <div class="input-field input-field--no-title datepicker__v-calendar">
                                            <input type="text" v-model='searchEndDt' readonly id="date_input_exchange2" class="input-field__input">
                                            <v-date-picker :mode='mode' v-model='searchEndDt' :popover="{ placement: 'bottom', visibility: 'click' }" :masks='masks' :input-props='{readonly : true}'>
                                                <span class="sp icon-datepicker">
                                                    <span class="blind">Calendar 열기</span>
                                                </span>
                                            </v-date-picker>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="component-group">
                                <div class="component-box input-field">
                                    <label class="input-field__title">요청자</label>
                                    <input type="text" class="input-field__input" value="홍길동A" disabled>
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
                               <div class="table">
                                   <table>
                                       <caption><span class="blind">법인카드 정산목록</span></caption>
                                       <colgroup>
                                           <col width="5%">
                                           <col width="5%">
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
                                               <th class="table__th" rowspan="2" scope="col">전자결재상태</th>
                                               <th class="table__th" rowspan="2" scope="col">전표처리유무</th>
                                               <th class="table__th" rowspan="2" scope="col">정산년월</th>
                                               <th class="table__th" rowspan="2" scope="col">카드번호</th>
                                               <th class="table__th" rowspan="2" scope="col">기안일자</th>
                                               <th class="table__th" rowspan="2" scope="col">기안자</th>
                                               <th class="table__th" rowspan="2" scope="col">기안부서</th>
                                               <th class="table__th" rowspan="2" scope="col">예산부서</th>
                                               <th class="table__th" rowspan="2" scope="col">사용자<br>(귀속부서)</th>
                                               <th class="table__th" rowspan="2" scope="col">적요</th>
                                               <th class="table__th align-center" colspan="2" scope="colgroup">비용항목</th>
                                               <th class="table__th align-center" colspan="2" scope="colgroup">SGMA</th>
                                               <th class="table__th table__txt--align-right" rowspan="2" scope="col">금액 (VAT포함)</th>
                                           </tr>
                                           <tr>
                                                <th class="table__th" scope="col">중분류</th>
                                                <th class="table__th" scope="col">소분류</th>
                                                <th class="table__th" scope="col">비용항목</th>
                                                <th class="table__th" scope="col">Acivity</th>
                                           </tr>
                                       </thead>
                                       <tbody>
                                           <tr>
                                               <td class="table__td">
                                                   <span class="table__txt">진행</span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">유</span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">2020/01/14</span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">1234-5678-9000-0000</span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">2020/01/24</span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">홍길동A</span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">IT기술본부</span>
                                               </td>                                                
                                               <td class="table__td">
                                                   <span class="table__txt">IT기술본부</span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">홍길동A<br><span class="table__txt-caption">정보개발시스템실</span></span>
                                               </td>
                                               <td class="table__td">
                                                   <span class="table__txt">[야근식대]홍길동A/2020-01-06</span>
                                               </td>
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
                                               <td class="table__td">
                                                   <span class="table__txt table__txt--align-right">KRW 9,000</span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
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
                                                   <span class="table__txt table__txt--align-right"></span>
                                               </td>                                       
                                           </tr>         
                                                 
                                       </tbody>
                                   </table>
                               </div>
                           </div>
                       </div>
                       
                   </div>
                   <div class="component-group">
                    <div class="pagination">
                        <a href="#" class="pagination__btn pagination__btn--disabled">
                            <span class="sp icon-first">
                                <span class="blind">맨 처음 페이지</span>
                            </span>
                        </a>
                        <a href="#" class="pagination__btn pagination__btn--disabled">
                            <span class="sp icon-prev">
                                <span class="blind">이전 페이지</span>
                            </span>
                        </a>
                        <div class="pagination__inner">
                            <a href="#" class="pagination__btn-txt pagination__btn-txt--active">
                                <span class="pagination__page-number">1</span>
                                <span class="blind">페이지로 이동</span>
                            </a>
                            <a href="#" class="pagination__btn-txt">
                                <span class="pagination__page-number">2</span>
                                <span class="blind">페이지로 이동</span>
                            </a>
                            <a href="#" class="pagination__btn-txt">
                                <span class="pagination__page-number">3</span>
                                <span class="blind">페이지로 이동</span>
                            </a>
                        </div>
                        <a href="#" class="pagination__btn">
                            <span class="sp icon-next">
                                <span class="blind">다음 페이지</span>
                            </span>
                        </a>
                        <a href="#" class="pagination__btn">
                            <span class="sp icon-last">
                                <span class="blind">맨 뒤 페이지</span>
                            </span>
                        </a>
                    </div>
                </div>
                </div>
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
                                        <tbody>
                                            <tr class="table__row--item table__row--selected">
                                                <th class="table__th table__th--btn table__th--btn-front table__txt--blue-dark">
                                                    <button type="button" class="btn btn-lst--open">
                                                        <span class="btn__txt">
                                                            2020년 9월
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
                                                            2020년 10월
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
                                                            2020년 11월
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
                                                            2020년 12월
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
            </div>
            
        </div>
    </div>
</div>


<!-- Change User -->
<div class="popup-wrap popup-layer--user">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__header">
                <strong class="popup__header-txt">사용자 조직도</strong>
            </div>
            <div class="popup__contents clearfix">
                <div class="popup__contents-inner">
                    <div class="component-group">
                        <!-- 
                            <div class="tree-area">
                                <ul id="treeMenu" class="lst-tree">
                                    <tree-item
                                    class="lst-tree__item"
                                    :item="treeData"
                                    @make-folder="makeFolder"
                                    @add-item="addItem"
                                    ></tree-item>
                                </ul>
                            </div>
                        -->
                                                        
                        <div class="tree-area">
                            <strong class="content-title content-title--bold">Smilegate Group</strong>
                            <div id="jstree" class="tree-area__inner">
                                <ul>
                                    <li data-jstree="{"type":"tree"}">스마일게이트 홀딩스
                                        <ul>
                                            <li data-jstree="{"type":"tree"}">CDO
                                                <ul>
                                                <li data-jstree="{"type":"tree"}">글로벌IP사업담당</li>
                                                </ul>
                                            </li>
                                            <li data-jstree="{"type":"tree"}">CFO
                                                <ul>
                                                <li data-jstree="{"type":"tree"}">투자관리실</li>
                                                <li>SGL재무회계팀</li>
                                                <li>SGR재무회계팀</li>
                                                </ul>
                                            </li>
                                            <li data-jstree="{"type":"tree"}">SG Irvine
                                                <ul>
                                                <li>Business Development</li>
                                                <li>Finance/HR</li>
                                                <li>SGP U.S</li>
                                                </ul>
                                            </li>
                                            <li data-jstree="{"type":"tree"}">CRO
                                                <ul>
                                                <li data-jstree="{"type":"tree"}">홍보/ER담당</li>
                                                <li data-jstree="{"type":"tree"}">자금실</li>
                                                <li>대외협력팀</li>
                                                </ul>
                                            </li>
                                            <li data-jstree="{"type":"tree"}">IT기술본부
                                                <ul>
                                                <li data-jstree="{"type":"tree"}">기술지원담당
                                                    <ul>
                                                        <li data-jstree="{"type":"tree"}">정보시스템실
                                                            <ul>
                                                                <li>정보개발팀</li>
                                                                <li>인사시스템팀</li>
                                                                <li>협업시스템팀</li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                </ul>
                                            </li>
                                            <li data-jstree="{"type":"tree"}">정보서비스실
                                                <ul>
                                                <li>정보서비스팀</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li data-jstree="{"type":"tree"}">QA
                                        <ul>
                                            <li data-jstree="{"type":"tree"}">사내시스템 TEST
                                                <ul>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li data-jstree="{"type":"tree"}">스마일게이트 엔터테인먼트
                                        <ul>
                                            <li data-jstree="{"type":"tree"}">사내시스템 TEST
                                                <ul>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li data-jstree="{"type":"tree"}">스마일게이트 알피지
                                        <ul>
                                            <li data-jstree="{"type":"tree"}">사내시스템 TEST
                                                <ul>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li data-jstree="{"type":"tree"}">스마일게이트 메가포트
                                        <ul>
                                            <li data-jstree="{"type":"tree"}">사내시스템 TEST
                                                <ul>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li data-jstree="{"type":"tree"}">스마일게이트 스토브
                                        <ul>
                                            <li data-jstree="{"type":"tree"}">사내시스템 TEST
                                                <ul>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                <li>TEST</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>



                    </div>    
                </div>
                <div class="popup__contents-inner popup__contents-search">
                    <em class="popup__contents-title">검색결과</em>
                    <div class="contents--draggable">
                        <div class="popup__contents-txt">
                            <span class="user_name">이덕호</span>
                            <span class="user_position txt--blue">[실장]</span>
                            <span class="user_dept txt--green">정보시스템실</span>
                            <span class="user_office txt--gray">스마일게이트홀딩스</span>
                        </div>
                        <div class="popup__contents-txt popup__contents-txt--selected">
                            <span class="user_name">박성균</span>
                            <span class="user_position txt--blue">[차장]</span>
                            <span class="user_dept txt--green">정보개발팀</span>
                            <span class="user_office txt--gray">스마일게이트홀딩스</span>
                        </div>
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
                        
                    </div>
                </div>
            </div>
            <div class="popup__bottom">
                <p class="popup__contents-txt">*검색된 결과는 <span class="txt--orange">Drag&Drop</span> 혹은 <span class="txt--orange">더블클릭</span> 하시면 선택됩니다.</p>
                <div class="popup__btn-box">
                <button type="button" class="btn btn--bgtype">
                    <span class="btn__txt">취소</span>
                </button>
                <button type="button" class="btn btn--orange">
                    <span class="btn__txt">확인</span>
                </button>
                </div>
            </div>
            <button type="button" class="popup__btn-close">
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

