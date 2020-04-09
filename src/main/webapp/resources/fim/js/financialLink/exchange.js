$(document).ready(function() {
    Vue.use(MyPlugin);
    new Vue({
        el : "#grid-layout"
        , data : {
            exchangeList : []           // 환율정보 리스트
            ,originDataList : []        // 원본 환율 정보 리스트
            ,currencyCode : []          // 환율 통화 코드 리스트
            ,selectedCurrency : ''      // 선택 된 통화
            ,mode: 'single'             // 날짜 모드(single 단일 multi : 범위)
            ,masks : {                  // 날짜 마스킹 처리
                title: 'MMMM YYYY',     // 날짜 타이틀
                input: 'YYYY-MM-DD',    // input에 보여질 포맷
            }
            ,selectedDate: getDate(new Date(),'-')
            ,selectedName : "전체"
            ,toggleYn : false
            ,openFlag : false
        }
        , mounted () {
            this.getCurrencyCode();
            this.getExchangeList();
        }
        ,watch : {
            /**********************************************
             * @method : selectedCurrency
             * @note 환율 변경 감지되면 해당 환율로 필터링 처리
             * @author : es-seungglee
             ***********************************************/
            selectedCurrency () {
                this.filterExchange();
            }
            /**********************************************
             * @method : selectedDate
             * @note 날짜가 변경되면 해당 날짜를 string으로 변경 후 재조회
             * @author : es-seungglee
             ***********************************************/
            ,selectedDate() {
                if(typeof(this.selectedDate) == 'object') {
                    this.selectedDate = getDate(this.selectedDate,'-');
                }
                this.getExchangeList();
            }
        }
        , methods : {
            /**********************************************
             * @method : getExchangeList
             * @note 넘겨진 날짜로 해당 날짜의 환율 조회
             * @author : es-seungglee
             ***********************************************/
            async getExchangeList () {
                try {
                    let exchange = await this.doAxios("/financialLink/exRate/" + this.selectedDate.replace(/-/gi, ""));
                    console.log(exchange);
                    this.exchangeList = exchange.data.exRateList;
                    this.originDataList = this.exchangeList;
                    this.filterExchange();
                }catch (err) {
                    alert(err);
                }
            }       // end getExchangeList
            /**********************************************
             * @method : getCurrencyCode
             * @note 자바 Enum클래스로 작성 된 환율 정보(코드) 가져오는 함수
             * @author : es-seungglee
             ***********************************************/
            ,getCurrencyCode () {
                axios({
                    method : "get"
                    , url : "/financialLink/getCurrencyCode"
                }).then(res=> {
                    this.currencyCode = res.data;
                    this.currencyCode.unshift({"title":"전체","code" : ""});
                })
                .catch(function(e){
                    console.log(e);
                });
            }   // end getCurrencyCode
            /**********************************************
             * @method : selectCurrency
             * @note 
             * @author : es-seungglee
             ***********************************************/
            , selectCurrency(data) {
                this.selectedCurrency = data.code;
                this.selectedName = data.title;
            }   // end selectCurrency
            /**********************************************
             * @method : getCurrencyCode
             * @note 자바 Enum클래스로 작성 된 환율 정보(코드) 가져오는 함수
             * @author : es-seungglee
             ***********************************************/
            , clickToggle() {
                this.toggleYn = !this.toggleYn;
            }   // end clickToggle
            /**********************************************
             * @method : filterExchange
             * @note 바뀐 환율로 환율리스트를 필터링 처리 한다.(셀렉트 박스 변경시 작동)
             * @author : es-seungglee
             ***********************************************/
            , filterExchange () {
                if(!this.selectedCurrency) {        // 전체 선택이라면
                    this.exchangeList = this.originDataList;
                } else {                     // 통화가 선택되었다면
                    this.exchangeList = this.originDataList.filter((data) => {
                        if(data.CurrName == this.selectedCurrency) {
                            return data;
                        }   // end if
                    }); // end filter
                }   // end else
            }   // end filterExchange
        }
    });
});