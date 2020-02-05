<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/fim/js/fp/exchange.js" type="text/babel"></script>
<div id="container" class="container" v-cloak>
    <div class="grid-layout">
        <div class="grid-column grid-column10">
            <div class="section section--border section-info">
                <div class="component-area clearfix">
                    <div class="component-group component-group--align-left">
                        <div class="component-box">
                            <em class="lst__txt">총 {{exchangeList.length}} <span class="lst__txt--gray"></span></em>
                        </div>
                    </div>
                </div>
                <div class="component-area">
                    <div class="component-group">
                        <div class="table">
                            <table>
                                <caption>
                                    <span class="blind">공지사항 게시판</span>
                                </caption>
                                <colgroup>
                                        <col>
                                        <col style="width: 10%">
                                        <col style="width: 9%">
                                        <col style="width: 10%">
                                        <col style="width: 10%">
                                        <col style="width: 10%">
                                        <col style="width: 10%">
                                        <col style="width: 10%">
                                        <col style="width: 10%">
                                    </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col" class="table__th">통화</th>
                                        <th scope="col" class="table__th">매매기준율</th>
                                        <th scope="col" class="table__th">송금보낼때</th>
                                        <th scope="col" class="table__th">송금 받을때</th>
                                        <th scope="col" class="table__th">현찰살때</th>
                                        <th scope="col" class="table__th">현찰팔때</th>
                                        <th scope="col" class="table__th">대미 환산</th>
                                        <th scope="col" class="table__th">환가로율</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="list in exchangeList">
                                        <td class="table__td">
                                            <span class="table__txt">{{list.KorCurrName}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.TTM}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.TTB}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.TTS}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.CASHB}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.CASHS}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.USAExrate}}</span>
                                        </td>
                                        <td class="table__td">
                                            <span class="table__txt">{{list.ChangeRate}}</span>
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
</div>