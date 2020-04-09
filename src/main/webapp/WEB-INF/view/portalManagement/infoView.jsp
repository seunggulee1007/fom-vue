<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/babel" src="/resources/fim/js/portalManagement/infoView.js"></script>
<div id="container" class="container container--include-lnb container--fullview container-view">
    <h2 class="page-title">공지사항</h2>
    <!-- <p class="page-title__dsc">· 재무회계 공지사항 게시판입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <a href="/portalManagement/infoWrite" class="btn btn--bgtype">
                <span class="btn__txt">수정</span>
            </a>
        </div>
        <div class="component-box">
            <a href="/portalManagement/info" class="btn">
                <span class="btn__txt">목록</span>
            </a>
        </div>             
    </div>

    <div class="grid-layout" id="app">
        <input type="hidden" value="${param.boardId }" id="boardId">
        <div class="grid-column grid-column10">
            <div class="section section--border">
                <div class="component-area">
                    <em class="section-title board__title">{{info.title}}</em>
                    <div class="component-group board__info">
                        <div class="component-box">
                            <em class="component__title">작성자</em>
                            <p class="component-box__txt">{{info.userNm}}</p>
                        </div>
                        <div class="component-box">
                            <em class="component__title">분류</em>
                            <p class="component-box__txt">공지사항</p>
                        </div>
                        <div class="component-box">
                            <em class="component__title">유효게시</em>
                            <p class="component-box__txt">2020/01/20</p>
                        </div>
                        <div class="component-box">
                            <em class="component__title">등록시간</em>
                            <p class="component-box__txt">{{info.crtDate}}</p>
                        </div>
                        <div class="component-box">
                            <em class="component__title">조회수</em>
                            <p class="component-box__txt">{{info.hit}}</p>
                        </div>
                        <div class="component-box">
                            <em class="component__title">열람대상</em>
                            <button type="button" class="btn btn--small btn-list-access" onclick="$('.popup-dialog--list-access').addClass('popup-wrap--active');">
                                <span class="btn__txt">확인</span>
                            </button>
                        </div> 
                        <div class="component-box">
                            <em class="component__title">첨부파일</em>
                            <div class="file-box component-box__txt">
                                <div class="file-box-lst">
                                    <a class="btn--link file-info" v-for="list in fileList">
                                        <p class="btn__txt" @click="downFile(list.fileNm)">{{list.originalFileNm}}</p>
                                    </a>
                                </div>
                                <button type="button" class="btn btn--small btn-more-file" v-if="!moreFlag" @click="viewMoreFileList();">
                                    <span class="sp icon-arrow"><span class="blind"> 첨부파일 더보기</span></span>
                                </button>
                            </div>
                        </div>
                    </div>    
                    <div class="component-group board__contents border--top">
                        <p class="component-box__txt" v-text="info.cont">
                        </p>
                    </div>
                                  
                </div>                    
            </div>
          
        </div>
    </div>
</div>