<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <script type="text/babel" src="/resources/fim/js/busnpInfo.js"></script>
<div id="bunspInfoApp" class="container" v-cloak>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-info">
                <div class="component-group">
                        <div class="component-box">
                            <div class="search-form">
                                <div class="search-form__inner">
                                    <span class="ip icon-search"><span class="blind">search</span></span>
                                    <input type="search" placeholder="사업자 번호를 입력해 주세요" v-model="busnpNo" ref="busnpNo" maxlength="13" @keyup.enter="getInfo(busnpNo)">
                                    <div class="search-form__bx-btn">
                                        <input type="reset" class="search-form__btn-delete">
                                        <span class="blind">reset</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="component-box">
                            <button type="button" class="btn btn--bgtype" @click="getInfo(busnpNo)"><span class="btn__txt">검색</span></button>
                        </div>
                   </div>
            </div>
        </div>
    </div>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-info">
                <div class="component-area"> 
                    <div class="component-group">                   
                        <div class="table">
                            <table>
                                <caption><span class="blind">사업자등록상태조회</span></caption>
                                <colgroup>
                                    <col style="width:20%">
                                    <col>
                                    <col style="width:20%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col" class="table__th">사업자 등록 번호 </th>
                                        <th scope="col" class="table__th">사업자등록상태</th>
                                        <th scope="col" class="table__th">조회기준일자</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-show="!isNull(complBusnpNo)">
                                        <td class="table__td">
                                            <span class="table__txt">{{complBusnpNo | busnpNoFilter}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{trtCntn}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{getToday()}}</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="grid-layout">
        <ul>
            <li>
            <span class="table__txt">사업자등록번호로 조회 시 "사업자등록상태" 내용은 사업자의 과세유형(일반/간이 등)과 사업자상태(계속/휴업/폐업)를 보여줍니다.
            <br/>(단, 국세청에 등록되어 있지 않은 사업자번호인 경우 "사업을 하지 않고 있습니다."라고 표시됨.)
            <br/>☞ 계속사업자 예시 : 부가가치세 일반과세자 입니다.
            <br/>☞ 폐업사업자 예시 : 폐업자 (과세유형:부가가치세 면세사업자, 폐업일자:2013-01-01) 입니다.
            </span>
            </li>
            <li>
            <span class="table__txt">
                            사업자단위과세 사업자인 경우, 주된 사업자등록번호를 제외한 종된 사업장의 기존 사업자등록번호는 폐업처리되므로, 실제 폐업여부는 거래처에 사업자등록사항을 직접 확인하시기 바랍니다.
                <br>(※ 사업자단위과세자는 부가가치세법 시행령 제12조 제1항 단서에 의해 하나의 사업자등록번호로 관리됩니다.)
            </span>
            </li>
        </ul>
    </div>
</div>
