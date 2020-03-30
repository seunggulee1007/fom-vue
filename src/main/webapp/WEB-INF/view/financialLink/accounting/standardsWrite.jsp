<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/include/financialLinkInclude.jsp"/>
<div id="container" class="container container--include-lnb container--fullview container-write">
    <h2 class="page-title">그룹회계기준 및 가이드</h2>            
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
                            <caption><span class="blind">그룹회계기준 및 가이드 게시글 등록</span></caption>
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
                                            <input type="text" class="input-field__input" placeholder="제목을 입력해주세요.">
                                        </div>
                                    </td>                                             
                                </tr>
                                <tr>
                                    <th class="table__th table__th--required">메일발송</th>
                                    <td class="table__td">
                                        <select name="emailYn" id="emailYn" class="dropdown-select">
                                            <option value="emailN" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">미발송</span>
                                            </option>
                                            <option value="emailY" class="dropdown-select__menu">
                                                <span class="dropdown__menu-txt">발송</span>
                                                
                                            </option>
                                        </select>
                                    </td>                                             
                                    <td class="table__td" colspan="4">
                                        <span class="table__txt">* 발송 선택 시 열람 대상자들에게 알림 메일이 발송됩니다.</span>
                                    </td>                                             
                                </tr>
                                <tr>
                                    <th class="table__th table__th--required">열람권한 설정</th>
                                    <td colspan="3"class="table__td">
                                        <div class="table table__border--non">
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
                                                                    <input type="checkbox" id="table_checkbox2">
                                                                    <label for="table_checkbox2" class="btn-checkbox__label"></label>
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
                                                                    <input type="checkbox" id="table_checkbox3">
                                                                    <label for="table_checkbox3" class="btn-checkbox__label"></label>
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
                                                                    <input type="checkbox" id="table_checkbox4">
                                                                    <label for="table_checkbox4" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">인사시스템팀</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table__td">
                                                            <div class="btn-group">
                                                                <span class="btn-checkbox">
                                                                    <input type="checkbox" id="table_checkbox5">
                                                                    <label for="table_checkbox5" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">인사시스템팀</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table__td">
                                                            <div class="btn-group">
                                                                <span class="btn-checkbox">
                                                                    <input type="checkbox" id="table_checkbox6">
                                                                    <label for="table_checkbox6" class="btn-checkbox__label"></label>
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
                                                                    <input type="checkbox" id="table_checkbox7">
                                                                    <label for="table_checkbox7" class="btn-checkbox__label"></label>
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
                                                                    <input type="checkbox" id="table_checkbox8">
                                                                    <label for="table_checkbox8" class="btn-checkbox__label"></label>
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
                                                                    <input type="checkbox" id="table_checkbox9">
                                                                    <label for="table_checkbox9" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">스마일게이트 메가랩</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table__td">
                                                            <div class="btn-group">
                                                                <span class="btn-checkbox">
                                                                    <input type="checkbox" id="table_checkbox10">
                                                                    <label for="table_checkbox10" class="btn-checkbox__label"></label>
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td class="table__td">
                                                            <span class="table__txt table__txt--blue-dark">스마일게이트 희망스튜디오</span>
                                                        </td>
                                                    </tr>
                                                    
                                                </tbody>

                                            </table>
                                        </div>
                                    </td> 
                                    <td class="table__td" colspan="2">
                                        <ul>
                                            <li>
                                                <button type="button" class="btn btn--small btn-add"><span class="btn__txt">국내 전체 일괄 추가</span></button>
                                            </li>
                                            <li>
                                                <button type="button" class="btn btn--small btn-add"><span class="btn__txt">해외 전체 일괄 추가</span></button>
                                            </li>
                                            <li>
                                                <button type="button" class="btn btn--small btn-add"><span class="btn__txt">법인 추가</span></button>
                                            </li>
                                            <li>
                                                <button type="button" class="btn btn--small btn-add"><span class="btn__txt">부서 추가</span></button>
                                            </li>
                                            <li>
                                                <button type="button" class="btn btn--small btn-add"><span class="btn__txt">멤버 추가</span></button>
                                            </li>
                                            <li>
                                                <button type="button" class="btn btn--small btn--bgtype btn-delete"><span class="btn__txt">선택 삭제</span></button>
                                            </li>
                                        </ul>
                                    </td> 
                                </tr>                                        
                                <tr>
                                  <th class="table__th">본문 작성</th>  
                                  <td class="table__td" colspan="5">
                                      <div class="textarea">
                                          <textarea name="" id="" cols="30" rows="10"></textarea>
                                        </div>
                                  </td>  
                                </tr>
                                <tr>
                                  <th class="table__th">SmileDoc 파일 첨부</th>  
                                  <td class="table__td" colspan="5">
                                    <div class="input-field input-field-table">
                                        <button type="button" class="btn btn-file">
                                            <label for="file1" class="btn__txt">파일선택</label>
                                        </button>
                                        <input type="file" id="file1" class="input-field__file blind">
                                        <div class="input-field__file-box">
                                            <div class="file-info"></div>
                                        </div>                                                
                                    </div>                                            
                                  </td>  
                                </tr>
                                <tr>
                                  <th class="table__th">파일 첨부</th>  
                                  <td class="table__td" colspan="5">
                                    <div class="input-field input-field-table">
                                        <button type="button" class="btn btn-file">
                                            <label for="file2" class="btn__txt">파일선택</label>
                                        </button>
                                        <input type="file" id="file2" class="input-field__file blind">
                                        <span class="input__dsc-txt">0 Bytes / 100 MB</span>  
                                        <div class="input-field__file-box">
                                            <div class="file-info">smilegate_test.xlsx</div>
                                            <div class="file-info">smilegate_test.xlsx</div>
                                            <div class="file-info">smilegate_test.xlsx</div>
                                            <div class="file-info">smilegate_test.xlsx</div>
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
                    <button type="button" class="btn btn--large btn--orange">
                        <span class="btn__txt">작성완료</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>