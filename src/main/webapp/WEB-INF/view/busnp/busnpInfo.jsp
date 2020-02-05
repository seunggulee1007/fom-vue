<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <script type="text/babel" src="/resources/js/busnpInfo.js"></script>
<div id="bunspInfoApp" v-cloak>

    <input type="text" v-model="busnpNo" ref="busnpNo" placeholder="사업자 번호를 입력해 주세요"> <button type="button" @click="getInfo(busnpNo)">조회</button>
    
    <table>
        <tr>
            <th>사업자 등록 번호 </th>
            <th>사업자등록상태</th>
            <th>조회기준일자</th>
        </tr>
        <tr v-show="!isNull(complBusnpNo)">
            <td>{{complBusnpNo | busnpNoFilter}}</td>
            <td>{{trtCntn}}</td>
            <td>{{getToday()}}</td>
        </tr>
    </table>
    
    <table v-if="busnpList != null && busnpList.length > 0">
        <tr>
            <th>사업자 등록 조회 번호 </th>
            <th>사업자 등록번호 </th>
            <th>내용1</th>
            <th>내용2</th>
            <th>내용3</th>
            <th>등록일자</th>
        </tr>
        <tr v-for="list in busnpList">
            <td>{{list.busnpNoId}}</td>
            <td>{{list.busnpNo | busnpNoFilter}}</td>
            <td>{{list.trtCntn}}</td>
            <td>{{list.smpcBmanTrtCntn}}</td>
            <td>{{list.smpcBmanEnglTrtCntn}}</td>
            <td>{{list.regDt}}</td>
        </tr>
    </table>
    
    <div id="grid_wrap">
    </div>
</div>
