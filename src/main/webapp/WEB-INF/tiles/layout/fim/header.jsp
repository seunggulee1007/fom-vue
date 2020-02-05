<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<header id="header" class="header header__main">
    <div class="header__inner">
        <!-- Logo & Title -->
        <div class="header__group-title">
            <a href="/" class="header__title-menu">
                <h1 class="sp icon-logo"><span class="blind">Smilegate</span></h1>
                <em class="header__title-txt service_tit1">재무지원포탈</em>
                <p class="header__title-txt service_tit2">S-IFM</p>
            </a>
        </div>

        <!-- info -->
        <div class="header__group-info">
            <div class="info-box clearfix">
                <a href="/fp/info">
                    <em class="header__info-tit">공지사항</em>
                </a>
                <a href="#" class="">
                    <span class="header__info-txt">[필독] SG재무회계실 전체 공지 안내</span>
                </a>
                <a href="/fp/info" class="btn btn--link align-right">
                    <span class="header__info-txt">+</span>
                </a>
            </div>
        </div>

        <!-- Util Menu (우측) -->
        <ul class="header__util">
            <li class="header__util-item">
                <div class="lst-popup__item">
                    <button type="button" class="lst-popup__menu">
                        <div class="lst-popup__size-info">
                            <div class="header__util-menu header__util-user">
                                <span class="sp icon-user">
                                    <img src="/resources/fim/img/icon-user-dummy.jpg" alt="유저 프로필 사진">
                                </span>
                            </div>
                            <em class="lst-popup__size-title">홍길동A</em>
                            <span class="sp icon-arrow"><span class="blind">옵션창열기</span></span>
                        </div>
                    </button>
                </div>
            </li>
            <!-- <li class="header__util-item">
                <a href="#" class="header__util-menu header__util-alert">
                    <span class="sp icon-alert">
                        <span class="blind">알림</span>
                    </span>
                    <span class="icon-alert-num">2</span>
                </a>
            </li> -->
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
                <a href="/financial_system/fs_list">재무시스템 바로가기</a>
                <ul class="lst-gnb-sub">
                    <li class="gnb_depth2">
                        <a href="http://ifrs.smilegate.net" target="_blank">EFIS</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="http://sgma.smilegate.net" target="_blank">SGMA</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="https://eis2.smilegate.net/" target="_blank">EIS</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="http://sgim.smilegate.net" target="_blank">SGIM (IVM)</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="http://trip.smilegate.net" target="_blank">TRIP</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="http://ekp.smilegate.net/eNovator/Portal/MainX_Contents.aspx?menu=approval&MenuID=" target="_blank">EKP</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="http://mdi.smilegate.net/" target="_blank">MDI</a>
                    </li>
                </ul>
            </li>
            <li class="gnb_depth1">
                <a href="/company_card/cc_list">법인카드 비용 관리</a>
                <ul class="lst-gnb-sub">
                    <li class="gnb_depth2">
                        <a href="/company_card/account_info">카드 신청/정산 처리</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="#">SG DATA CENTER</a>
                    </li>                            
                </ul>
            </li>
            <li class="gnb_depth1">
                <a href="/em/em_list">비용 정산 관리</a>
                <ul class="lst-gnb-sub">
                    <li class="gnb_depth2">
                        <a href="#">일반 비용 정산</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="#">국세청 계산서 정산</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="#">커뮤니티 정산</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="/em/car/car_list">법인차 비용 정산</a>
                    </li>
                </ul>
            </li>
            <li class="gnb_depth1">
                <a href="/bm/bm_list">업무관리</a>
                <ul class="lst-gnb-sub">
                    <li class="gnb_depth2">
                        <a href="/bm/eis/select_month_report">프로젝트 손익조회</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="/bm/budget/detail_result">비용 계획/실적 조회</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="/bm/work/dept_mng">업무 투입율</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="/bm/vender_mng">거래처 등록/수정 (스마일넷)</a>
                    </li>
                </ul>
            </li>
            <li class="gnb_depth1">
                <a href="/fp/fp_list">재무포털 관리</a>
                <ul class="lst-gnb-sub">
                    <li class="gnb_depth2">
                        <a href="/fp/info">공지사항</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="/fp/work_schedule">사내 업무 일정</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="/fp/tax_schedule">월별 세무 일정</a>
                    </li>
                    <li class="gnb_depth2">
                        <a href="/fp/exchange">환율 정보</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</header>