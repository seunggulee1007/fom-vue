<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
                        <a href="eis/select_month_report.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">당월손익</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="eis/monthly_report.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">월별손익</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="eis/accumulation.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">누적손익</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="eis/current_pjt.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">프로젝트 현황</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="eis/current_profit.html" class="lst-lnb-sub__menu">
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
                        <a href="budget/detail_result.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">실적 상세내역</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="budget/plan_result.html" class="lst-lnb-sub__menu">
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
                    <li class="lst-lnb-sub__item">
                        <a href="belong_com.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">귀속법인별 MM 집계</span>    
                        </a>
                    </li> 
                    <li class="lst-lnb-sub__item">
                        <a href="pjt_mm.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">프로젝트별 MM 추이분석</span>    
                        </a>
                    </li>
                </ul>
            </li>
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="cafe.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">비즈카페</span>                            
                </a>                        
            </li>
            <li class="lst-lnb__item">
                <a href="#" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">차량관리</span>
                    <span class="sp icon-arrow--ms"><span class="blind">메뉴 열기</span></span>
                </a>
                <ul class="lst-lnb-sub">
                    <li class="lst-lnb-sub__item">
                        <a href="car/car_list.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">차량목록</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="car/car_drive.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">차량운행일지</span>    
                        </a>
                    </li>         
                    <li class="lst-lnb-sub__item">
                        <a href="car/car_confirm.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">차량 비용귀속 확인</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="car/car_costing.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">차량 비용산출</span>    
                        </a>
                    </li>         
                    <li class="lst-lnb-sub__item">
                        <a href="car_cost_system.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">업무용 승용차 명세서 확인</span>    
                        </a>
                    </li>
                    <li class="lst-lnb-sub__item">
                        <a href="car/car_cost_no_drive.html" class="lst-lnb-sub__menu">
                            <span class="lst-lnb-sub__menu-txt">업무일지 미작성 차량비용</span>    
                        </a>
                    </li>         
                </ul>
            </li>                 
            <li class="lst-lnb__item">
                <a href="biz_num.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">거래처 휴/폐업 조회</span>                            
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
    <h2 class="page-title">비즈카페</h2>
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
            <iframe src="http://ekp.smilegate.net/eNovator/Etc/Cafe/CafeUserList.aspx?ListType=1&MenuCode=118" frameborder="0"></iframe>
        </div>
    </div>
</div>
        