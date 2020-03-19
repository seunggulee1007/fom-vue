<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="lnb lnb-area">
    <ul class="lst-lnb">
        <li class="lst-lnb__item lst-lnb__item--active">
            <a href="#" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">카드 신청/정산 처리</span>
                <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
            </a>
            <ul class="lst-lnb-sub">
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/account/cdApplyForm" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">공용카드 신청서</span>
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/account/comCdForm" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">법인카드 신청서</span>    
                    </a>                                
                </li>                            
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/account/changeLimit" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">카드한도 증액신청</span>
                    </a>
                </li>
                <li class="lst-lnb-sub__item  lst-lnb-sub__item--active">
                    <a href="/companyCard/account/accountInfo" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">법인카드 정산</span>    
                    </a>                                
                </li>        
            </ul>
        </li>
        <li class="lst-lnb__item">
            <a href="#" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">카드 한도 관리</span>
                <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
            </a>
            <ul class="lst-lnb-sub">
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/managing/comLimit" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">법인별 월한도</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/managing/userLimit" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">사용자별 한도</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/managing/limitManagement" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">카드한도관리</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/managing/sendMail" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">카드메일발송</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/companyCard/managing/listMail" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">메일발송내역</span>    
                    </a>
                </li>                    
            </ul>
        </li>
    </ul>

    <footer class="footer footer--lnb-type">
        <div class="footer__inner">
            <small class="footer__copyright">&copy; Smilegate. All Rights Reserved.</small>
        </div>
    </footer>
    
    <button type="button" class="btn btn-lnb">
        <span class="icon-arrow"><span class="blind">메뉴 열기</span></span>
    </button>
</div>