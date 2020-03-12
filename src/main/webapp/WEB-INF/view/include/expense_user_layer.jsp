<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- CDNJS :: Sortable (https://cdnjs.com/) -->
<script src="//cdn.jsdelivr.net/npm/sortablejs@1.8.4/Sortable.min.js"></script>
<!-- CDNJS :: Vue.Draggable (https://cdnjs.com/) -->
<script src="//cdnjs.cloudflare.com/ajax/libs/Vue.Draggable/2.20.0/vuedraggable.umd.min.js"></script>
<script type="text/babel" src="/resources/fim/js/common/searchUser.js"></script>
 <!-- Change User -->
<div class="popup-wrap popup-layer--user" :class="{'popup-wrap--active' : deptPopupFlag}">
    <div class="popup-wrap__align-box">
        <div class="popup-wrap__inner">
            <div class="popup__header">
                <strong class="popup__header-txt">사용자 조직도</strong>
            </div>
            <div class="popup__contents clearfix">
                <div class="popup__contents-inner">
                    <div class="component-group">
                        <div class="tree-area">
                            <ul class="lst-tree">
                                <tree-item v-for="list in deptList" :item="list" class="lst-tree__item">
                                </tree-item>
                            </ul>
                        </div>
                    </div>    
                </div>
                <div class="popup__contents-inner popup__contents-search">
                    <em class="popup__contents-title">검색결과</em>
                    <div class="contents--draggable">
                        <draggable v-model="userList" group="people" @change="log">
                            <div class="popup__contents-txt" v-for="(list, idx) in userList" @dblclick="moveUser('user',idx);">
                                <span class="user_name">{{list.userNm}}</span>
                                <span class="user_position txt--blue">{{list.title2Nm}}</span>
                                <span class="user_dept txt--green">{{list.deptNm}}</span>
                                <span class="user_office txt--gray">{{list.comNm}}</span>
                            </div>
                        </draggable>
                    </div>
                </div>
                <div class="component-group">
                    <div class="btn-box">
                        <button type="button" class="btn-select">
                            <span class="sp icon-next">
                                <span class="blind">선택하기</span>
                            </span>
                        </button>
                        <button type="button" class="btn-remove">
                            <span class="sp icon-prev">
                                <span class="blind">선택에서 제외하기</span>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="popup__contents-inner popup__contents-selected">
                    <em class="popup__contents-title">선택된 사용자</em>
                        <div class="contents--droppable">
                            <draggable v-model="selectedUserList" group="people" style="min-height:200px;"  @change="log">
                                <div class="popup__contents-txt" v-for="(list, idx) in selectedUserList" @dblclick="moveUser('selectedUser',idx);">
                                    <span class="user_name">{{list.userNm}}</span>
                                    <span class="user_position txt--blue">{{list.title2Nm}}</span>
                                    <span class="user_dept txt--green">{{list.deptNm}}</span>
                                    <span class="user_office txt--gray">{{list.comNm}}</span>
                                </div>
                            </draggable>
                        </div>
                </div>
                <rawDisplayer class="col-3" :value="userList" title="List 1" />
            
                <rawDisplayer class="col-3" :value="selectedUserList" title="List 2" />
            </div>
            <div class="popup__bottom">
                <p class="popup__contents-txt">*검색된 결과는 <span class="txt--orange">Drag&Drop</span> 혹은 <span class="txt--orange">더블클릭</span> 하시면 선택됩니다.</p>
                <div class="popup__btn-box">
                   <button type="button" class="btn btn--bgtype" @click="closeDeptPopup();">
                       <span class="btn__txt">취소</span>
                   </button>
                   <button type="button" class="btn btn--orange" @click="sendData();">
                       <span class="btn__txt">확인</span>
                   </button>
                </div>
            </div>
            <button type="button" class="popup__btn-close" @click="closeDeptPopup();">
                <span class="sp icon-close"><span class="blind">닫기</span></span>
            </button>
        </div>
    </div>
</div>