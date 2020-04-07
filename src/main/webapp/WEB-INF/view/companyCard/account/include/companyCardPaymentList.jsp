<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!-- payment history -->
        <div class="popup-wrap popup-layer--payment-history">
            <div class="popup-wrap__align-box">
                <div class="popup-wrap__inner">
                    <div class="popup__header">
                        <div class="popup__header-txt">법인카드 사용 내역</div>
                    </div>
                    <div class="popup__contents">
                        <div class="popup__contents-inner">
                            <div class="popup__contents-table">
                                <div class="table table--scroll-vertical">
                                    <div class="table-box">
                                    	<div id="companyCardPaymentList" ></div>
<!--                                         <table> -->
<!--                                             <caption><span class="blind">법인카드 결제 내역</span></caption> -->
<!--                                             <colgroup> -->
<!--                                                 <col width="60px"> -->
<!--                                                 <col> -->
<!--                                                 <col> -->
<!--                                                 <col> -->
<!--                                                 <col> -->
<!--                                                 <col> -->
<!--                                                 <col> -->
<!--                                                 <col> -->
<!--                                                 <col width="108px"> -->
<!--                                             </colgroup> -->
<!--                                             <thead> -->
<!--                                                 <tr> -->
<!--                                                     <th class="table__th" scope="col" style="width: 60px">선택</th> -->
<!--                                                     <th class="table__th" scope="col">No.</th> -->
<!--                                                     <th class="table__th" scope="col">승인일자</th> -->
<!--                                                     <th class="table__th" scope="col">가맹점</th> -->
<!--                                                     <th class="table__th table__txt--align-right" scope="col">공급가액</th> -->
<!--                                                     <th class="table__th table__txt--align-right" scope="col">봉사료</th> -->
<!--                                                     <th class="table__th table__txt--align-right" scope="col">부가세</th> -->
<!--                                                     <th class="table__th table__txt--align-right" scope="col">총계</th> -->
<!--                                                     <th class="table__th" scope="col" style="width: 108px">개인사용유무</th> -->
<!--                                                 </tr> -->
<!--                                             </thead> -->
<!--                                             <tbody> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory1"> -->
<!--                                                                 <label for="checkbox_cardHistory1" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt">1234567890</span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt">20/03/14</span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt">가맹점명TestTest</span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right">10,000</span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right">0</span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right">1,000</span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right">11,000</span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal1" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal1" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory2"> -->
<!--                                                                 <label for="checkbox_cardHistory2" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal2" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal2" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory3"> -->
<!--                                                                 <label for="checkbox_cardHistory3" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal3" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal3" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory4"> -->
<!--                                                                 <label for="checkbox_cardHistory4" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal4" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal4" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory5"> -->
<!--                                                                 <label for="checkbox_cardHistory5" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal5" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal5" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory6"> -->
<!--                                                                 <label for="checkbox_cardHistory6" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal6" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal6" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory7"> -->
<!--                                                                 <label for="checkbox_cardHistory7" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal7" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal7" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory8"> -->
<!--                                                                 <label for="checkbox_cardHistory8" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal8" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal8" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory9"> -->
<!--                                                                 <label for="checkbox_cardHistory9" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal9" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal9" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory10"> -->
<!--                                                                 <label for="checkbox_cardHistory10" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal10" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal10" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory11"> -->
<!--                                                                 <label for="checkbox_cardHistory11" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal11" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal11" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory12"> -->
<!--                                                                 <label for="checkbox_cardHistory12" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal12" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal12" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory13"> -->
<!--                                                                 <label for="checkbox_cardHistory13" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal13" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal13" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory14"> -->
<!--                                                                 <label for="checkbox_cardHistory14" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal14" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal14" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardHistory15"> -->
<!--                                                                 <label for="checkbox_cardHistory15" class="btn-checkbox__label"><span class="blind">선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <span class="table__txt table__txt--align-right"></span> -->
<!--                                                     </td> -->
<!--                                                     <td class="table__td"> -->
<!--                                                         <div class="btn_group"> -->
<!--                                                             <span class="btn-checkbox"> -->
<!--                                                                 <input type="checkbox" id="checkbox_cardPersonal15" disabled> -->
<!--                                                                 <label for="checkbox_cardPersonal15" class="btn-checkbox__label"><span class="blind">개인비용처리 선택</span></label> -->
<!--                                                             </span> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                             </tbody> -->
<!--                                         </table> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popup__bottom">
                        <div class="popup__btn-box">
                            <button type="button" class="btn btn--bgtype">
                                <span class="btn__txt">취소</span>
                            </button>
                            <button type="button" class="btn">
                                <span class="btn__txt">개인비용처리</span>
                            </button>
                            <button type="button" class="btn btn--orange">
                                <span class="btn__txt">정산처리</span>
                            </button>
                        </div>
                    </div>
                    <button type="button" class="popup__btn-close">
                        <span class="sp icon-close">
                            <span class="blind">닫기</span>
                        </span>
                    </button>
                </div>
            </div>
        </div>
