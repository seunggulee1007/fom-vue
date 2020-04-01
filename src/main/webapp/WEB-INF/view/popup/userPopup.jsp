<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
    .popup-wrap {
        padding : 0px !important;
    }
</style>
<script type="text/javascript" src="/resources/fim/js/libs/jstree.min.js"></script>   
<script type="text/javascript" src="/resources/fim/js/common/userPopup.js"></script>
<div class="popup-wrap popup-layer--user popup-wrap--active">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__header">
                <strong class="popup__header-txt">사용자 조직도</strong>
            </div>
            <div class="popup__contents clearfix">
                <div class="popup__contents-inner">
                    <div class="component-group">
                        <div class="tree-area">
                            <strong class="content-title content-title--bold">Smilegate Group</strong>
                            <div id="jstree" class="tree-area__inner">
                                <ul id="dept">
                                </ul>
                            </div>
                        </div>

                    </div>    
                </div>
                <div class="popup__contents-inner popup__contents-search">
                    <em class="popup__contents-title">검색결과</em>
                    <div class="contents--draggable" id="userList">
                        
                    </div>
                </div>
                <div class="component-group">
                    <div class="btn-box">
                        <button type="button" class="btn-select" onclick="insertUser();">
                            <span class="sp icon-next">
                                <span class="blind">선택하기</span>
                            </span>
                        </button>
                        <button type="button" class="btn-remove" onclick="deleteChoiceUser();">
                            <span class="sp icon-prev">
                                <span class="blind">선택에서 제외하기</span>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="popup__contents-inner popup__contents-selected">
                    <em class="popup__contents-title">선택된 사용자</em>
                    <div class="contents--droppable" id="choiceUser">
                        
                    </div>
                </div>
            </div>
            <div class="popup__bottom">
                <p class="popup__contents-txt">*검색된 결과는 <span class="txt--orange">Drag&Drop</span> 혹은 <span class="txt--orange">더블클릭</span> 하시면 선택됩니다.</p>
                <div class="popup__btn-box">
                <button type="button" class="btn btn--bgtype" onclick="closePopup();">
                    <span class="btn__txt">취소</span>
                </button>
                <button type="button" class="btn btn--orange" onclick="choiceUser();">
                    <span class="btn__txt">확인</span>
                </button>
                </div>
            </div>
        </div>
    </div>
</div>