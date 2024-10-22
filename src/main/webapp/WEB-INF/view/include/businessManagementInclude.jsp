<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="lnb lnb-area">
    <ul class="lst-lnb">
        <li class="lst-lnb__item">
            <a href="#" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">프로젝트 손익조회</span>
                <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
            </a>
            <ul class="lst-lnb-sub">
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/eis/selectMonthReport" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">당월손익</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/eis/monthlyReport" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">월별손익</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/eis/accumulation" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">누적손익</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/eis/currentPjt" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">프로젝트 현황</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/eis/currentProfit" class="lst-lnb-sub__menu">
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
                    <a href="/businessManagement/budget/detailResult" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">실적 상세내역</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/budget/planResult" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">계획대비 실적</span>    
                    </a>
                </li> 
            </ul>
        </li>
        <li class="lst-lnb__item">
            <a href="#" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">업무 투입율</span>
                <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
            </a>
            <ul class="lst-lnb-sub">
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/userSchedule" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">업무 투입 시간</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/userRatio" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">나의 투입률 관리</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/deptRatio" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">부서 투입률 관리</span>    
                    </a>
                </li> 
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/deptMng" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">부서/프로젝트 관리</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/allMng" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">전체투입률 관리</span>    
                    </a>
                </li> 
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/workHistory" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">작업내역 관리</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/belongCom" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">귀속법인별 MM 집계</span>    
                    </a>
                </li> 
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/work/pjtMm" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">프로젝트별 MM 추이분석</span>    
                    </a>
                </li>
            </ul>
        </li>
        <li class="lst-lnb__item">
            <a href="/businessManagement/cafe" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">비즈카페</span>                            
            </a>                        
        </li>
        <li class="lst-lnb__item lst-lnb__item--active">
            <a href="#" class="lst-lnb__menu">
                <span class="lst-lnb__menu-txt">차량관리</span>
                <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
            </a>
            <ul class="lst-lnb-sub">
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/car/carList" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">차량목록</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/car/carDrive" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">차량운행일지</span>    
                    </a>
                </li>         
                <li class="lst-lnb-sub__item  lst-lnb-sub__item--active">
                    <a href="/businessManagement/car/carConfirm" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">차량 비용귀속 확인</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/car/carCosting" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">차량 비용산출</span>    
                    </a>
                </li>         
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/car/carCostSystem" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">업무용 승용차 명세서 확인</span>    
                    </a>
                </li>
                <li class="lst-lnb-sub__item">
                    <a href="/businessManagement/car/carCostNoDrive" class="lst-lnb-sub__menu">
                        <span class="lst-lnb-sub__menu-txt">업무일지 미작성 차량비용</span>    
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