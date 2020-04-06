<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
    .popup-wrap {
        padding : 0px !important;
    }
</style>
<script src="/resources/fim/js/expenseManagement/expenseDetail.js"></script>
<div class="popup-wrap popup-layer--medium popup-layer--expenses-detail popup-wrap--active">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__header">
                <strong class="popup__header-txt">
                    <span>교통비</span> - <span>야근교통비</span> 정보 입력
                </strong>
            </div>
            <div class="popup__contents" id="expenseDetail">
            </div>
            <div class="popup__bottom">
                <div class="popup__btn-box">
                    <button type="button" class="btn btn--bgtype">
                        <span class="btn__txt">취소</span>
                    </button>
                    <button type="button" class="btn btn--orange">
                        <span class="btn__txt">저장</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>