<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="popup-wrap popup-dialog--simple popup-dialog--bookmark">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__inner-wrap">
                <div class="popup__header">
                    <strong class="popup__header-txt">즐겨찾는 메뉴</strong>
                    <a href="#" class="btn btn--link">
                        <span class="sp icon-modify"></span>
                    </a>
                </div>
                <div class="popup__contents">
                    <ul class="popup__lst">
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">법인카드 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">나의 투입률 관리</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">당월손익</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">전자세금계산서</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">택시비 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">환율 정보</span>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
            <div class="popup__inner-wrap">
                <div class="popup__header">
                    <strong class="popup__header-txt">최근 이용 내역</strong>
                </div>
                <div class="popup__contents">
                    <ul class="popup__lst">
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">법인카드 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">차량운행일지</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">공지사항</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">스마일락(동호회) 정산</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">부서/프로젝트 관리</span>
                            </a>
                        </li>
                        <li class="popup__lst-item">
                            <a href="#" class="popup__lst-menu">
                                <span class="popup__menu-txt">환율 정보</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <button type="button" class="popup__btn-close">
                <span class="sp icon-close"><span class="blind">닫기</span></span>
            </button>
        </div>
    </div>
</div>

<div class="popup__dimmed"></div>
<div class="popup-wrap popup-layer--xxlarge popup-layer--allmenu">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__inner-wrap clearfix">
                <div class="popup__header">
                    <strong class="popup__header-txt">사이트맵</strong>
                </div>
                <div class="popup__contents popup__contents-inner-wrap">
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">재무시스템 바로가기</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=approval" class="popup__lst-menu" target="_blank">
                                    <span class="popup__contents-txt popup__lst-item-txt">전자결재(EKP) <span class="sp icon-external"></span></span>
                                </a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://trip.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">출장(TRIP) <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://mdi.smilegate.net/" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">통합거래처(MDI) <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://ifrs.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">연결재무(EFIS) <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://sgma.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">관리회계(SGMA) <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="https://eis2.smilegate.net/" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">경영정보(EIS) <span class="sp icon-external"></span></span></a>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">법인카드</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="/companyCard/account/approvalForm" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">카드 신청/정산 처리</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/account/cdApplyForm" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">공용카드 신청서</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/account/comCdForm"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인카드 신청서</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/account/changeLimit"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드한도 증액신청</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/account/accountInfo" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인카드 정산</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/companyCard/managing/comLimit" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">카드 한도 관리</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/managing/comLimit" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인별 월한도</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/managing/userLimit"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">사용자별 한도</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/managing/limitManagement"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드한도 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/managing/sendMail"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드메일발송</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/companyCard/managing/listMail"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">메일발송내역</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">비용 정산</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="/expenseManagement/approval/approvalForm" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">전자결재</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/expenseManagement/approval/approvalForm" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">기안서</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/expenseManagement/approval/approvalReport"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">기안서(보고)</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/expenseManagement/approval/expense" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">지출결의서</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/expenseManagement/approval/budgetChange"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">예산변경신청</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/expenseManagement/bill/taxBill" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">전자세금계산서</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/expenseManagement/bill/taxBill" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전자세금계산서</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/expenseManagement/bill/bill"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전자계산서</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/expenseManagement/workshop" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">워크샵 신청/정산</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/expenseManagement/cafeteria" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">중석식 정산</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/expenseManagement/cafeteriaMobile" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">모바일식권 정산</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/expenseManagement/advancePayment" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">전도금 정산</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/expenseManagement/taxi" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">택시비 정산</span></a>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">업무 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="/businessManagement/eis/selectMonthReport" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">프로젝트 손익조회</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/eis/selectMonthReport" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">당월손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/eis/monthlyReport"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">월별손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/eis/accumulation"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">누적손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/eis/currentPjt" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">프로젝트 현황</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/eis/currentProfit" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">손익 현황</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/businessManagement/budget/detailResult" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">비용 계획/실적 조회</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/budget/detailResult" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">실적 상세내역</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/budget/planResult" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">계획대비 실적</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/businessManagement/work/userSchedule" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">업무 투입율</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/userSchedule" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">업무 투입 시간</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/userRatio" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">나의 투입률 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/deptRatio"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">부서 투입률 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/deptMng" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">부서/프로젝트 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/allMng"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전체투입률 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/workHistory" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">작업내역 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/belongCom"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">귀속법인별 MM 집계</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/work/pjtMm" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">프로젝트별 MM 추이분석</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/businessManagement/cafe" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">비즈카페</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="/businessManagement/car/carList" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">차량관리</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/car/carList" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량목록</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="/businessManagement/car/carDrive"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량운행일지</span>
                                            </a>
                                        </li>
                                        <li class="popup__lst-sub-item">
                                            <a href="/businessManagement/car/carConfirm"  class="popup__lst-sub-menu">
                                                <span class="popup__contents-txt popup__lst-sub-menu-txt">차량 비용귀속 확인</span>
                                            </a>
                                        </li>
                                        <li class="popup__lst-sub-item">
                                            <a href="/businessManagement/car/carCosting"  class="popup__lst-sub-menu">
                                                <span class="popup__contents-txt popup__lst-sub-menu-txt">차량 비용산출</span>
                                            </a>
                                        </li>
                                        <li class="popup__lst-sub-item">
                                            <a href="/businessManagement/car/carCostSystem" class="popup__lst-sub-menu">
                                                <span class="popup__contents-txt popup__lst-sub-menu-txt">업무용 승용차 명세서 확인</span>
                                            </a>
                                        </li>
                                        <li class="popup__lst-sub-item">
                                            <a href="/businessManagement/car/carCostNoDrive" class="popup__lst-sub-menu">
                                                <span class="popup__contents-txt popup__lst-sub-menu-txt">업무일지 미작성 차량비용</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>                                    
                            </ul>
                        </div>  
                        <div class="popup__contents-inner">
                            <em class="popup__contents-title">포털 관리</em>
                            <ul class="popup__lst">
                                <li class="popup__lst-item">
                                    <a href="/portalManagement/info" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">공지사항</span></a>
                                </li>                                                                        
                                <li class="popup__lst-item">
                                    <a href="/portalManagement/approvalPending" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">전자결재 - 미결함</span></a>
                                </li>                                    
                                <li class="popup__lst-item">
                                    <a href="/portalManagement/approvalPre" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">전자결재 - 예정함</span></a>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="/portalManagement/approvalProgress" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">전자결재 - 진행함</span></a>
                                </li>
                            </ul>
                        </div>  
                        <div class="popup__contents-inner">
                            <em class="popup__contents-title">경영정보</em>
                            <ul class="popup__lst">
                                <li class="popup__lst-item">
                                    <a href="/mngInfo/mngGroup" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">Group</span></a>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="/mngInfo/mngCompany" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">Company</span></a>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="/mngInfo/mngExecutives" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">Executives</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="popup__contents-inner">
                            <em class="popup__contents-title">재무 전용 사이트</em>
                            <ul class="popup__lst">
                                <li class="popup__lst-item">
                                    <a href="/financialLink/taxSchedule" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">월별 세무 일정</span></a>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="/financialLink/exchange" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">환율 정보</span></a>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="/financialLink/bizChk/bizNum" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">거래처 휴/폐업 조회</span></a>
                                    <ul class="popup__lst-sub">
                                        <li class="popup__lst-sub-item">
                                            <a href="/financialLink/bizChk/bizNum" class="popup__lst-sub-menu">
                                                <span class="popup__contents-txt popup__lst-sub-menu-txt">거래처 휴/폐업 조회</span>
                                            </a>
                                        </li>
                                        <li class="popup__lst-sub-item">
                                            <a href="/financialLink/bizChk/bizChkHistory"  class="popup__lst-sub-menu">
                                                <span class="popup__contents-txt popup__lst-sub-menu-txt">휴/폐업 조회 이력</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="https://txsi.hometax.go.kr/docs/main.jsp" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt" target="_blank">국세법령정보시스템 <span class="sp icon-external"></span></span></a>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="https://www.kebhana.com/cont/mall/mall15/mall1501/index.jsp?_menuNo=23100" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt" target="_blank">하나은행(환율) <span class="sp icon-external"></span></span></a>
                                </li>
                                <li class="popup__lst-item">
                                    <a href="http://www.smbs.biz/index.jsp" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt" target="_blank">서울외국환중개 <span class="sp icon-external"></span></span></a>
                                </li>                                    
                            </ul>
                        </div> 
                    </div>
                </div>
                <button type="button" class="popup__btn-close">
                    <span class="sp icon-close"><span class="blind">닫기</span></span>
                </button>
            </div>
        </div>
    </div>
