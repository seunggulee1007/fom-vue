<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
    .input-field input[type="file"] {position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}
</style>
<script type="text/babel" src="/resources/fim/js/portal_management/info_write.js"></script>
<div id="container" class="container container--include-lnb container--fullview container-write">
    <div class="lnb lnb-area">
        <ul class="lst-lnb">                    
            <li class="lst-lnb__item lst-lnb__item--active">
                <a href="info.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">공지사항</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="approval_pending.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자결재 - 미결함</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="approval_pre.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자결재 - 예정함</span>
                </a>
            </li>
            <li class="lst-lnb__item">
                <a href="approval_progress.html" class="lst-lnb__menu">
                    <span class="lst-lnb__menu-txt">전자결재 - 진행함</span>
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
    <h2 class="page-title">공지사항</h2>            
    <div class="component-group align-right btn-box btn-box--absolute">                
        <div class="component-box">
            <button type="button" class="btn btn--bgtype btn-back">
                <span class="btn__txt">취소</span>
            </button>
        </div>
        <div class="component-box">
            <button type="button" class="btn btn--orange">
                <span class="btn__txt">작성완료</span>
            </button>
        </div>
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border">
                <div class="component-group">
                    <div class="table table-chain">
                        <table>
                            <caption><span class="blind">공지사항 게시글 등록</span></caption>
                            <tbody>
                                <tr>
                                    <th class="table__th table__th--required">작성자</th>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt">홍길동</span>
                                    </td>
                                    <th class="table__th table__th--required">작성일</th>
                                    <td class="table__td table__td--data">
                                        <span class="table__txt">20/02/17</span>
                                    </td>
                                    <th class="table__th table__th--required">분류</th>
                                    <td class="table__td">
                                        <select name="bbsGroup" id="bbsGroup" class="dropdown-select">
                                            <option value="notice" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">공지사항</span>
                                            </option>
                                            <option value="accounting" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">재무회계</span>
                                                
                                            </option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table__th table__th--required">제목</th>
                                    <td class="table__td" colspan="5">
                                        <div class="input-field input-field-table">
                                            <input type="text" class="input-field__input" v-model="title" ref="title">
                                        </div>
                                    </td>                                             
                                </tr>
                                <tr>
                                    <th class="table__th table__th--required">메일발송</th>
                                    <td class="table__td">
                                        <div class="dropdown">
                                            <!-- <a href="#" class="dropdown__button dropdown__button--selected">
                                                <span class="dropdown__button-text">미발송</span>
                                                <span class="sp icon-arrow"><span class="blind">옵션창 열기</span></span>
                                            </a>
                                            <ul class="dropdown__list">
                                                <li class="dropdown__item">
                                                    <a href="#" class="dropdown__menu">
                                                        <span class="dropdown__menu-txt">미발송</span>
                                                    </a>
                                                </li>
                                                <li class="dropdown__item">
                                                    <a href="#" class="dropdown__menu">
                                                    <span class="dropdown__menu-txt">발송</span>
                                                    </a>
                                                </li>	
                                            </ul> -->
                                            <select v-model="sendMailYn" class="dropdown-select">
                                                <option value="N" class="dropdown-select__menu"><span class="dropdown__menu-txt">미 발송</span></option>
                                                <option value="Y" class="dropdown-select__menu"><span class="dropdown__menu-txt">발송</span></option>
                                            </select>
                                        </div>
                                    </td>                                             
                                    <td class="table__td" colspan="4">
                                        <span class="table__txt">* 발송 선택 시 열람 대상자들에게 알림 메일이 발송됩니다.</span>
                                    </td>                                             
                                </tr>
                                <tr>
                                    <th class="table__th table__th--required">열람권한 설정</th>
                                    <td colspan="3"class="table__td">
                                        <div class="table">
                                            <table>
                                                <caption><span class="blind">열람권한 리스트</span></caption>
                                                <colgroup>
                                                    <col style="width:48px">
                                                    <col>
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <td class="table__td">
                                                            <div class="btn-group">
                                                                <span class="btn-checkbox">
                                                                    <input type="checkbox" id="table_checkbox1">
                                                                    <label for="table_checkbox1" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">국내 전체</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table__td">
                                                            <div class="btn-group">
                                                                <span class="btn-checkbox">
                                                                    <input type="checkbox" id="table_checkbox1">
                                                                    <label for="table_checkbox1" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">스마일게이트 홀딩스</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table__td">
                                                            <div class="btn-group">
                                                                <span class="btn-checkbox">
                                                                    <input type="checkbox" id="table_checkbox1">
                                                                    <label for="table_checkbox1" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">Smilegate Europe</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table__td">
                                                            <div class="btn-group">
                                                                <span class="btn-checkbox">
                                                                    <input type="checkbox" id="table_checkbox1">
                                                                    <label for="table_checkbox1" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">인사시스템팀</span>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                        </div>
                                    </td> 
                                    <td class="table__td" colspan="2">
                                        <button type="button" class="btn btn-add"><span class="btn__txt">국내 전체 일괄 추가</span></button>
                                        <button type="button" class="btn btn-add"><span class="btn__txt">해외 전체 일괄 추가</span></button>
                                        <button type="button" class="btn btn-add"><span class="btn__txt">법인 추가</span></button>
                                        <button type="button" class="btn btn-add"><span class="btn__txt">부서 추가</span></button>
                                        <button type="button" class="btn btn-add"><span class="btn__txt">멤버 추가</span></button>
                                        <button type="button" class="btn btn-delete"><span class="btn__txt">모두 삭제</span></button>
                                    </td> 
                                </tr>
                                <tr>
                                  <th class="table__th">본문 작성</th>  
                                  <td class="table__td" colspan="5">
                                      <div class="textarea">
                                          <textarea cols="30" rows="10" v-model="cont" ref="cont"></textarea>
                                        </div>
                                  </td>  
                                </tr>
                                <tr>
                                  <th class="table__th">SmileDoc 파일 첨부</th>  
                                  <td class="table__td" colspan="5">
                                    <div class="input-field input-field-table">
                                        <button type="button" class="btn btn-file"><span class="btn__txt">파일선택</span></button>
                                        <input type="text" class="input-field__input" readonly>
                                    </div>                                            
                                  </td>  
                                </tr>
                                <tr>
                                  <th class="table__th">파일 첨부</th>  
                                  <td class="table__td" colspan="5">
                                    <div class="input-field input-field-table">
                                        <button type="button" class="btn btn-file"><label for="btnFile" class="btn__txt">파일선택</label></button>
                                        <input type="file" id="btnFile" class="input-field__file blind" multiple v-on:change="handleFilesUpload()" ref="files">
                                        <span class="input__dsc-txt">{{fileSize}} Bytes / 100 MB</span>  
                                        <div class="input-field__file-box" v-show="files.length > 0">
                                            <div class="file-info" v-for="(file, key) in files">{{ file.name }} <span class="remove-file" v-on:click="removeFile( key )">Remove</span></div>
                                        </div>
                                    </div>                                            
                                  </td>  
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>                   
            </div>
            <div class="component-group btn-box align-center">
                <div class="component-box">
                    <button type="button" class="btn btn--large btn--bgtype btn-back">
                        <span class="btn__txt">취소</span>
                    </button>
                </div>
                <div class="component-box">
                    <button type="button" class="btn btn--large btn--orange" @click="doWrite();">
                        <span class="btn__txt">작성완료</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
