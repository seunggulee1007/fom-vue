<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="lnb lnb-area">
    <ul class="lst-lnb">
        <li class="lst-lnb__item lst-lnb__item--active">
            <a href="#" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">전자결재</span>
                <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
            </a>
            <ul class="lst-lnb-sub">
                <li class="lst-lnb-sub__item lst-lnb-sub__item--active">
                    <a href="/expenseManagement/approval/approvalForm" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">기안서</span>
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/expenseManagement/approval/approvalReport" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">기안서(보고)</span>    
                    </a>                                
                </li>  
                <li class="lst-lnb-sub__item">
                    <a href="/expenseManagement/approval/expense" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">지출결의서</span>
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/expenseManagement/approval/budgetChange" class="lst-lnb-sub__menu">
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
                    <a href="/expenseManagement/bill/taxBill" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">전자세금계산서</span>
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/expenseManagement/bill/bill" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">전자계산서</span>    
                    </a>                                
                </li>  
            </ul>
        </li>
        <li class="lst-lnb__item">
            <a href="/expenseManagement/workshop" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">워크샵 정산</span>
            </a>
        </li>
        <li class="lst-lnb__item">
            <a href="/expenseManagement/cafeteria" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">중석식 정산</span>
            </a>
        </li>
        <li class="lst-lnb__item">
            <a href="/expenseManagement/cafeteriaMobile" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">모바일식권 정산</span>
            </a>
        </li>
        <li class="lst-lnb__item">
            <a href="/expenseManagement/advancePayment" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">전도금 정산</span>
            </a>
        </li>
        <li class="lst-lnb__item">
            <a href="/expenseManagement/taxi" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">택시비 정산</span>
            </a>
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