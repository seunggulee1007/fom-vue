<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container" class="container container--include-lnb container--fullview container-view">
    <h2 class="page-title">그룹회계기준 및 가이드</h2>
    <!-- <p class="page-title__dsc">· 그룹회계기준 및 가이드 게시판입니다.</p> -->
    <div class="component-group align-right btn-box--absolute">
        <div class="component-box">
            <a href="info_write.html" class="btn btn--bgtype">
                <span class="btn__txt">수정</span>
            </a>
        </div>
        <div class="component-box">
            <a href="/financialLink/accounting/standards" class="btn">
                <span class="btn__txt">목록</span>
            </a>
        </div>             
    </div>

    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border">
                <div class="component-area">
                    <em class="section-title board__title">[필독] 그룹회계기준 및 가이드</em>
                    <div class="component-group board__info">
                        <div class="component-box">
                            <em class="component__title">작성자</em>
                            <p class="component-box__txt">홍길동A</p>
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
                            <p class="component-box__txt">2020/01/20 13:20</p>
                        </div>
                        <div class="component-box">
                            <em class="component__title">조회수</em>
                            <p class="component-box__txt">100</p>
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
                                    <a href="#" class="btn--link file-info">
                                        <p class="btn__txt">smilegate_test.xlsx</p>
                                    </a>
                                    <a href="#" class="btn--link file-info">
                                        <p class="btn__txt">smilegate_test.xlsx</p>
                                    </a>
                                    <a href="#" class="btn--link file-info">
                                        <p class="btn__txt">sg_test.xlsx</p>
                                    </a>
                                    <a href="#" class="btn--link file-info">
                                        <p class="btn__txt">smilegate_test.zip</p>
                                    </a>
                                    <a href="#" class="btn--link file-info">
                                        <p class="btn__txt">smilegate_test.pdf</p>
                                    </a>
                                    <a href="#" class="btn--link file-info">
                                        <p class="btn__txt">smilegate_test.pdf</p>
                                    </a>
                                    <a href="#" class="btn--link file-info">
                                        <p class="btn__txt">smilegate_test.pdf</p>
                                    </a>
                                </div>
                                <button type="button" class="btn btn--small btn-more-file">
                                    <span class="sp icon-arrow"><span class="blind"> 첨부파일 더보기</span></span>
                                </button>
                            </div>
                        </div>
                    </div>    
                    <div class="component-group board__contents border--top">
                        <p class="component-box__txt">
                            안녕하세요<br>
                            SG 재무회계실에서 전체 공지 드립니다.<br>
                            test<br>
                            test                                    
                        </p>
                    </div>
                                  
                </div>                    
            </div>
          
        </div>
    </div>
</div>