<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container" class="container container--include-lnb container--fullview container--iframe">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">카드 신청/정산 처리</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="http://ekp.smilegate.net/eNovator/GSWF/WebPage/FormSelection/FormSelection.aspx#" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">공용카드 신청서</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="#" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">법인카드 신청서</span>    
                        </a>                                
                    </li>                            
                    <li class="lst-lnb-sub__item">
                        <a href="#" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">카드한도 증액신청</span>
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item  lst-lnb-sub__item--active">
                        <a href="account_info.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">법인카드 정산</span>    
                        </a>                                
                    </li>        
                </ul>
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">SG DATA CENTER</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/ANNUAL_MONTH_MANAGEMENT.aspx?sMenuCd=211" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">법인별 월한도</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/USER_LIMIT_SEARCH.aspx" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">사용자별 한도</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/CARD_LIMIT_MANAGEMENT_MAIN.aspx" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">카드한도관리</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/SendMail_Write.aspx" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">카드메일발송</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="http://bi.smilegate.net/eNovatorSGData/SMILENET/SendMail_List.aspx" class="lst-lnb-sub__menu" target="_blank">
                            <span class="lst-lnb-sub__menu-txt">메일발송내역</span>    
                        </a>
                    </li>                    
                </ul>
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
            <iframe src="http://ekp.smilegate.net/eNovator/GSWF/WebPage/AccountInfo/AccountInfoWrite.aspx" frameborder="0"></iframe>
        </div>
    </div>
</div>
