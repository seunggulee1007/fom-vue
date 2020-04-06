window.onbeforeunload = function(e) {
    let confirmMessage = '창을 닫으시면 내용이 사라집니다. 그래도 닫으시겠습니까?';
    if(!e){
        return confirmMessage;
    }else {
        window.event.returnValue = confirmMessage;
    }
};
$(document).ready(function(){
    let smKindSeq = opener.document.getElementById('smKindSeq').value;
    let costSeq = opener.document.getElementById('costSeq').value;
    makeHtml(smKindSeq, costSeq);
    $(".table__expenses").focus();
});

function makeHtml(smKindSeq, costSeq) {
    let html = '';
    if(smKindSeq == '4503006') {
        html += '<div class="table__expenses table__expenses-transportation">                            ';
        html += '    <div class="table table-chain">                                                                ';
        html += '    <table>                                                                            ';
        html += '        <caption><span class="blind">교통비 추가 정보 기입</span></caption>                                             ';
        html += '        <colgroup>                                                                        ';
        html += '        <col width="35%">                                                                ';
        html += '        <col width="65%">                                                                ';
        html += '        </colgroup>                                                                        ';
        html += '        <tbody>                                                                        ';
        html += '        <tr>                                                                        ';
        html += '            <th class="table__th">출발지</th>                                                         ';
        html += '            <td class="table__td">                                                            ';
        html += '            <div class="input-field input-field-table">                                                ';
        html += '                <input type="text" class="input-field__input" id="startArea">                    ';
        html += '            </div>                                                                    ';
        html += '            </td>                                                                    ';
        html += '        </tr>                                                                        ';
        html += '        <tr>                                                                        ';
        html += '            <th class="table__th">목적지</th>                                                         ';
        html += '            <td class="table__td">                                                            ';
        html += '            <div class="input-field input-field-table">                                                ';
        html += '                <input type="text" class="input-field__input" id="destArea">                        ';
        html += '            </div>                                                                    ';
        html += '            </td>                                                                    ';
        html += '        </tr>                                                                        ';
        if(costSeq == '10' || costSeq == '11') {
            html += '        <tr>                                        ';
            html += '            <th class="table__th">금액</th>                                                        ';
            html += '            <td class="table__td">                                                            ';
            html += '            <div class="input-field input-field-table">                                                ';
            html += '                <input type="text" class="input-field__input" id="transAmt">                        ';
            html += '            </div>                                                                    ';
            html += '            </td>                                                                    ';
            html += '        </tr>                                                                        ';
        }
        if(costSeq == '10') {
            html += '        <tr>                                                        ';
            html += '            <th class="table__th">업무시작 / 종료시간</th>                                                    ';
            html += '            <td class="table__td table__td--data">                                                    ';
            html += '            <span class="table__txt"></span>                                                    ';
            html += '            </td>                                                                    ';
            html += '        </tr>                                                                        ';
        }
        if(costSeq == '86') {
            html += '        <tr>                                                        ';
            html += '            <th class="table__th">거리(km)</th>                                                        ';
            html += '            <td class="table__td">                                                            ';
            html += '            <div class="input-field input-field-table">                                                ';
            html += '                <input type="text" class="input-field__input" id="distance">                    ';
            html += '            </div>                                                                    ';
            html += '            </td>                                                                    ';
            html += '        </tr>                                                                        ';
            html += '        <tr>                                                        ';
            html += '            <th class="table__th">인원수</th>                                                         ';
            html += '            <td class="table__td">                                                            ';
            html += '            <div class="input-field input-field-table">                                                ';
            html += '                <input type="text" class="input-field__input" id="personCnt">                    ';
            html += '            </div>                                                                    ';
            html += '            </td>                                                                    ';
            html += '        </tr>                                                                        ';
            html += '        <tr>                                                        ';
            html += '            <th class="table__th">탑승자</th>                                                         ';
            html += '            <td class="table__td">                                                            ';
            html += '            <div class="input-field input-field-table">                                                ';
            html += '                <input type="text" class="input-field__input" id="personName">                    ';
            html += '            </div>                                                                    ';
            html += '            </td>                                                                    ';
            html += '        </tr>                                                                        ';
            html += '        <tr>                                                        ';
            html += '            <th class="table__th">(* 편도기준)</th>                                                     ';
            html += '            <td class="table__td table__td--btn align-center">                                                ';
            html += '            <button type="button" class="btn btn-calc">                                                ';
            html += '                <span class="btn__txt">계산</span>                                                    ';
            html += '            </button>                                                                ';
            html += '            </td>                                                                    ';
            html += '        </tr>                                                                        ';
            html += '        <tr>                                                        ';
            html += '            <th class="table__th">금액(자동계산)</th>                                                     ';
            html += '            <td class="table__td table__td--data>                                            ';
            html += '            <span class="table__txt" id="transAmt"></span>                                            ';
            html += '            </td>                                                                    ';
            html += '        </tr>                                                                                        ';
        }
        html += '        </tbody>                                                                        ';
        html += '    </table>                                                                        ';
        html += '    </div>                                                                            ';
        html += '</div>                                                                                ';
    }
    if(smKindSeq == '4503010') {
        html += '<div class="table__expenses table__expenses-entertainment">                            ';
        html += '    <div class="table table-chain">                                                                ';
        html += '    <table>                                                                            ';
        html += '        <caption><span class="blind">접대비 추가 정보 기입</span></caption>                                             ';
        html += '        <colgroup>                                                                        ';
        html += '        <col width="35%">                                                                ';
        html += '        <col width="65%">                                                                ';
        html += '        </colgroup>                                                                        ';
        html += '        <tbody>                                                                        ';
        html += '        <tr>                                                                        ';
        html += '            <th class="table__th">업체명</th>                                                         ';
        html += '            <td class="table__td">                                                            ';
        html += '            <div class="input-field input-field-table">                                                ';
        html += '                <input type="text" class="input-field__input" id="custName">                        ';
        html += '            </div>                                                                    ';
        html += '            </td>                                                                    ';
        html += '        </tr>                                                                        ';
        html += '        <tr>                                                                        ';
        html += '            <th class="table__th">업체담당자</th>                                                        ';
        html += '            <td class="table__td">                                                            ';
        html += '            <div class="input-field input-field-table">                                                ';
        html += '                <input type="text" class="input-field__input" id="userName">                        ';
        html += '            </div>                                                                    ';
        html += '            </td>                                                                    ';
        html += '        </tr>                                                                        ';
        html += '        <tr>                                                                        ';
        html += '            <th class="table__th">목적</th>                                                        ';
        html += '            <td class="table__td">                                                            ';
        html += '            <div class="input-field input-field-table">                                                ';
        html += '                <input type="text" class="input-field__input" id="purpose">                        ';
        html += '            </div>                                                                    ';
        html += '            </td>                                                                    ';
        html += '        </tr>                                                                        ';
        html += '        </tbody>                                                                        ';
        html += '    </table>                                                                        ';
        html += '    </div>                                                                            ';
        html += '    <p class="popup__contents-txt align-center">청탁금지법(김영란법)이 2016.09.28로 시행됩니다.<br>스마일넷에 공지된 청탁금지법의                            ';
        html += '    주요 세부 내용과<br>주의해야 할 부분에 대해 사전 확인 부탁드리겠습니다.</p>                                                ';
        html += '    <p class="popup__contents-txt align-center">                                                        ';
        html += '    <a href="#" class="btn btn--link" target="_blank">                                                    ';
        html += '        <span class="btn__txt">청탁금지법(김영란법) 시행 및 주요 내용 안내</span>                                            ';
        html += '    </a>                                                                            ';
        html += '    </p>                                                                            ';
        html += '</div>                                                                                ';
    }
    if(smKindSeq == '4503008' || smKindSeq == '4503009') {
        html += '<div class="table__expenses table__expenses-travel">                ';
        html += '    <div class="table table-chain">                                                                ';
        html += '    <table>                                                                            ';
        html += '        <caption><span class="blind">출장비 추가 정보 기입</span></caption>                                             ';
        html += '        <colgroup>                                                                        ';
        html += '        <col width="35%">                                                                ';
        html += '        <col width="65%">                                                                ';
        html += '        </colgroup>                                                                        ';
        html += '        <tbody>                                                                                            ';
        html += '        <tr>                                                                        ';
        html += '            <th class="table__th">출장정보</th>                                                         ';
        html += '            <td class="table__td">                                                            ';
        html += '            <select name="expenseBizTrip1" id="expenseBizTrip1" class="dropdown-select" id="busiTripCode">    ';
        html += '                <option value="search_period-draft" class="dropdown-select__menu">                                    ';
        html += '                <span class="dropdown__menu-txt">선택1</span>                                            ';
        html += '                </option>                                                                ';
        html += '                <option value="search_period-use" class="dropdown-select__menu">                                    ';
        html += '                <span class="dropdown__menu-txt">선택2</span>                                            ';
        html += '                </option>                                                                ';
        html += '            </select>                                                                ';
        html += '            </td>                                                                    ';
        html += '        </tr>                                                                        ';
        html += '        <tr>                                                                        ';
        html += '            <th class="table__th">출장구분</th>                                                         ';
        html += '            <td class="table__td">                                                            ';
        html += '            <select name="expenseBizTrip2" id="expenseBizTrip2" id="busiTripType">    ';
        html += '                <option value="search_period-draft" class="dropdown-select__menu">                                    ';
        html += '                <span class="dropdown__menu-txt">선택1</span>                                            ';
        html += '                </option>                                                                ';
        html += '                <option value="search_period-use" class="dropdown-select__menu">                                    ';
        html += '                <span class="dropdown__menu-txt">선택2</span>                                            ';
        html += '                </option>                                                                ';
        html += '            </select>                                                                ';
        html += '            </td>                                                                    ';
        html += '        </tr>                                                                        ';
        html += '        </tbody>                                                                        ';
        html += '    </table>                                                                        ';
        html += '    </div>                                                                             ';
        html += '    <p class="popup__contents-txt txt--orange align-center">출장보고서가 등록되었으며 정산이 미완료된 목록입니다.</p>                                    ';
        html += '</div>                                                                                ';    
    }

    $("#expenseDetail").append(html);
   
}