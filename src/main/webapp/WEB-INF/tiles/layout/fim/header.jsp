<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<header id="header" class="header header--fullview">
            <div class="header__inner">
                <!-- Logo & Title -->
                <div class="header__group-title">
                    <a href="/" class="header__title-menu">
                        <h1 class="sp icon-logo"><span class="blind">Smilegate</span></h1>
                        <em class="header__title-txt service_tit1">재무지원포탈</em>
                        <p class="header__title-txt service_tit2">S-FIM</p>
                    </a>
                </div>

                <!-- Util Menu (우측) -->
                <ul class="header__util">
                    <li class="header__util-item">
                        <div class="lst-popup__item">
                            <button type="button" class="lst-popup__menu">
                                <div class="lst-popup__size-info">
                                    <div class="header__util-menu header__util-user">
                                        <span class="sp icon-user">
                                            <img src="/resources/fim/img/icon-user-dummy.jpg" alt="">
                                        </span>
                                    </div>
                                    <em class="lst-popup__size-title">홍길동A</em>
                                    <span class="sp icon-arrow"><span class="blind">옵션창열기</span></span>
                                </div>
                            </button>
                        </div>
                    </li>                    
                    <li class="header__util-item">
                        <a href="#" class="header__util-menu header__util-allmenu">
                            <span class="sp icon-allmenu">
                                <span class="blind">전체메뉴</span>
                            </span>
                        </a>
                    </li>
                    <li class="header__util-item">
                        <a href="#" class="header__util-menu header__util-bookmark">
                            <span class="sp icon-bookmark">
                                <span class="blind">즐겨찾기 및 최근이용내역</span>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
            <nav id="gnb" class="gnb gnb-area">
                <ul class="lst-gnb clearfix">
                    <li class="gnb_depth1">
                        <a href="#">재무시스템 바로가기</a>
                        <ul class="lst-gnb-sub">
                            <li class="gnb_depth2">
                                <a href="http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=approval" target="_blank">전자결재(EKP)</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="http://trip.smilegate.net" target="_blank">출장(TRIP)</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="http://mdi.smilegate.net/" target="_blank">통합거래처(MDI)</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="http://ifrs.smilegate.net" target="_blank">연결재무(EFIS)</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="http://sgma.smilegate.net" target="_blank">관리회계(SGMA)</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="https://eis2.smilegate.net/" target="_blank">경영정보(EIS)</a>
                            </li>
                        </ul>
                    </li>
                    <li class="gnb_depth1">
                        <a href="#">법인카드</a>
                        <ul class="lst-gnb-sub">
                            <li class="gnb_depth2">
                                <a href="../company_card/account/cd_apply_form.html">카드 신청/정산 처리</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../company_card/managing/com_limit.html">카드 한도 관리</a>
                            </li>                            
                        </ul>
                    </li>
                    <li class="gnb_depth1">
                        <a href="#">비용 정산</a>
                        <ul class="lst-gnb-sub">
                            <li class="gnb_depth2">
                                <a href="../expense_management/approval/approval_form.html">전자결재</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../expense_management/bill/tax_bill.html">전자세금계산서</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../expense_management/workshop.html">워크샵 정산</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../expense_management/cafeteria.html">중석식 정산</a>
                            </li>                            
                            <li class="gnb_depth2">
                                <a href="../expense_management/cafeteria_mobile.html">모바일식권 정산</a>
                            </li>                            
                            <li class="gnb_depth2">
                                <a href="../expense_management/advance_payment.html">전도금 정산</a>
                            </li>                            
                            <li class="gnb_depth2">
                                <a href="../expense_management/taxi.html">택시비 정산</a>
                            </li>                            
                        </ul>
                    </li>
                    <li class="gnb_depth1 gnb_depth1--active">
                        <a href="#">업무관리</a>
                        <ul class="lst-gnb-sub">
                            <li class="gnb_depth2">
                                <a href="eis/select_month_report.html">프로젝트 손익조회</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="budget/detail_result.html">비용 계획/실적 조회</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="work/user_schedule.html">업무 투입율</a>
                            </li>
                            <li class="gnb_depth2 gnb_depth2--active">
                                <a href="cafe.html">비즈카페</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="car/car_list.html">차량관리</a>
                            </li>
                        </ul>
                    </li>
                    <li class="gnb_depth1">
                        <a href="#">포털 관리</a>
                        <ul class="lst-gnb-sub">
                            <li class="gnb_depth2">
                                <a href="../portal_management/info.html">공지사항</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../portal_management/approval_pending.html">전자결재 - 미결함</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../portal_management/approval_pre.html">전자결재 - 예정함</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../portal_management/approval_progress.html">전자결재 - 진행함</a>
                            </li>
                        </ul>
                    </li>
                    <li class="gnb_depth1">
                        <a href="#">경영정보</a>
                        <ul class="lst-gnb-sub">
                            <li class="gnb_depth2">
                                <a href="../mng_info/mng_group.html">Group</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../mng_info/mng_company.html">Company</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="../mng_info/mng_executives.html">Executives</a>
                            </li>
                        </ul>
                    </li>
                    <li class="gnb_depth1">
                        <a href="#">재무 전용 사이트</a>
                        <ul class="lst-gnb-sub">
                            <li class="gnb_depth2">
                                <a href="/financial_link/tax_schedule">월별 세무 일정</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="/financial_link/exchange">환율 정보</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="/financial_link/biz_chk/biz_num">거래처 휴/폐업 조회</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="https://txsi.hometax.go.kr/docs/main.jsp" target="_blank">국제법령정보시스템</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="https://www.kebhana.com/cont/mall/mall15/mall1501/index.jsp?_menuNo=23100" target="_blank">하나은행(환율)</a>
                            </li>
                            <li class="gnb_depth2">
                                <a href="http://www.smbs.biz/index.jsp" target="_blank">서울외국환중개</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <span class="header--bg-pattern header--bg-pattern-left"></span>
            <span class="header--bg-pattern header--bg-pattern-right"></span>
        </header>