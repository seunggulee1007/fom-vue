<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!-- payment history -->
        <div class="popup-wrap popup-layer--payment-history">
            <div class="popup-wrap__align-box">
                <div class="popup-wrap__inner">
                    <div class="popup__header">
                        <div class="popup__header-txt">법인카드 사용 내역</div>
                    </div>
                    <div class="popup__contents">
                        <div class="popup__contents-inner">
                            <div class="popup__contents-table">
                                <div class="table table--scroll-vertical">
                                    <div class="table-box">
                                    	<div id="companyCardPaymentList" ></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popup__bottom">
                        <div class="popup__btn-box">
                            <button type="button" class="btn btn--bgtype">
                                <span class="btn__txt">취소</span>
                            </button>
                            <button type="button" class="btn">
                                <span class="btn__txt">개인비용처리</span>
                            </button>
                            <button type="button" class="btn btn--orange">
                                <span class="btn__txt">정산처리</span>
                            </button>
                        </div>
                    </div>
                    <button type="button" id="btnXClose" class="popup__btn-close">
                        <span class="sp icon-close">
                            <span class="blind">닫기</span>
                        </span>
                    </button>
                </div>
            </div>
        </div>
