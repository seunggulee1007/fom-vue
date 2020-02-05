<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">프로젝트 손익조회</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="../eis/select_month_report.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">당월손익</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="../eis/monthly_report.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">월별손익</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="../eis/accumulation.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">누적손익</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="../eis/current_pjt.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">프로젝트 현황</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="../eis/current_profit.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">손익 현황</span>    
                        </a>
                    </li>                   
                </ul>
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">비용 계획/실적 조회</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="../budget/detail_result.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">실적 상세내역</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="../budget/plan_result.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">계획대비 실적</span>    
                        </a>
                    </li> 
                </ul>
            </li>
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">업무 투입율</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="dept_mng.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">부서/프로젝트 관리</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="all_mng.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">전체투입률 관리</span>    
                        </a>
                    </li> 
                    <li class="lst-lnb-sub__item">
                        <a href="work_history.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">작업내역 관리</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item lst-lnb-sub__item--active">
                        <a href="belong_com.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">귀속법인별 MM 집계</span>    
                        </a>
                    </li> 
                    <li class="lst-lnb-sub__item">
                        <a href="pjt_mm.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">프로젝트별 MM 추이분석</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="user_schedule.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">업무 투입 시간</span>    
                        </a>
                    </li> 
                    <li class="lst-lnb-sub__item">
                        <a href="user_ratio.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">나의 투입률 관리</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="dept_ratio.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">부서 투입률 관리</span>    
                        </a>
                    </li> 
                </ul>
            </li>
            <li class="lst-lnb__item">
                <a href="../vender_mng.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">거래처 등록/수정 (스마일넷)</span>
                    <!-- <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span> -->
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
    <h2 class="page-title">귀속법인별 MM 집계</h2>            
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
            <iframe src="http://ekp.smilegate.net/eNovator/Etc/ManDayMng/ManDay_Belong_Com_Month.aspx" frameborder="0"></iframe>
        </div>
    </div>
</div>

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
                                <a href="http://ifrs.smilegate.net" class="popup__lst-menu" target="_blank">
                                    <span class="popup__contents-txt popup__lst-item-txt">EFIS <span class="sp icon-external"></span></span>
                                </a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://sgma.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">SGMA <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="https://eis2.smilegate.net/" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">EIS <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://sgim.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">SGIM (IVM) <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://trip.smilegate.net" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">TRIP <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=approval&MenuID=" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">EKP <span class="sp icon-external"></span></span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://mdi.smilegate.net/" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">MDI <span class="sp icon-external"></span></span></a>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">법인카드 비용 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="http://ekp.smilegate.net/eNovator/GSWF/WebPage/FormSelection/FormSelection.aspx" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">카드 신청/정산 처리</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="http://ekp.smilegate.net/eNovator/GSWF/WebPage/FormSelection/FormSelection.aspx#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">공용카드 신청서 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인카드 신청서 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드한도 증액신청 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../../company_card/account_info.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인카드 정산</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/ANNUAL_MONTH_MANAGEMENT.aspx?sMenuCd=21" class="popup__lst-menu" target="_blank"><span class="popup__contents-txt popup__lst-item-txt">SG DATA CENTER</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/ANNUAL_MONTH_MANAGEMENT.aspx?sMenuCd=21" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">법인별 월한도 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/USER_LIMIT_SEARCH.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">사용자별 한도 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/CARD_LIMIT_MANAGEMENT_MAIN.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드한도 관리 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/SendMail_Write.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">카드메일발송 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/SendMail_List.aspx"  class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">메일발송내역 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">비용 정산 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">일반 비용 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">워크샵 신청/정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu"  target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">모바일식권 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu"  target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">중석식 정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전도금 정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu" target="_blank">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">택시비 정산 <span class="sp icon-external"></span></span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">국세청 계산서 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전자세금계산서</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전자계산서</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">커뮤니티 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="#" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">스마일락 (동호회) 정산</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="#"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">스마일學 (스터디) 정산</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="../../expense_management/car/car_list.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">법인차 비용 정산</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="../../expense_management/car/car_list.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량목록</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../../expense_management/car/car_drive.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량운행일지</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../../expense_management/car/car_confirm.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량 비용귀속 확인</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../../expense_management/car/car_costing.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">차량 비용산출</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../../expense_management/car/car_cost_system.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">업무용 승용차 명세서 확인</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../../expense_management/car/car_cost_no_drive.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">업무일지 미작성 차량비용</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">업무 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="../eis/select_month_report.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">프로젝트 손익조회</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="../eis/select_month_report.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">당월손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../eis/monthly_report.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">월별손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../eis/accumulation.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">누적손익</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../eis/current_pjt.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">프로젝트 현황</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../eis/current_profit.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">손익 현황</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="../budget/detail_result.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">비용 계획/실적 조회</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="../budget/detail_result.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">실적 상세내역</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="../budget/plan_result.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">계획대비 실적</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="dept_mng.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">업무 투입율</span></a>
                                <ul class="popup__lst-sub">
                                    <li class="popup__lst-sub-item">
                                        <a href="dept_mng.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">부서/프로젝트 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="all_mng.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">전체투입률 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="work_history.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">작업내역 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="belong_com.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">귀속법인별 MM 집계</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="pjt_mm.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">프로젝트별 MM 추이분석</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="user_schedule.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">업무 투입 시간</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="user_ratio.html" class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">나의 투입률 관리</span>
                                        </a>
                                    </li>
                                    <li class="popup__lst-sub-item">
                                        <a href="dept_ratio.html"  class="popup__lst-sub-menu">
                                            <span class="popup__contents-txt popup__lst-sub-menu-txt">부서 투입률 관리</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">거래처 등록/수정 (스마일넷)</span></a>
                                
                            </li>
                        </ul>
                    </div>  
                    <div class="popup__contents-inner">
                        <em class="popup__contents-title">재무 포털 관리</em>
                        <ul class="popup__lst">
                            <li class="popup__lst-item">
                                <a href="../../financial_portal/info.html" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">공지사항</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">사내 업무 일정</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">월별 세무 일정</span></a>
                            </li>
                            <li class="popup__lst-item">
                                <a href="#" class="popup__lst-menu"><span class="popup__contents-txt popup__lst-item-txt">환율 정보</span></a>
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