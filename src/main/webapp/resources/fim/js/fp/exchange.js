$(document).ready(function() {
    Vue.use(MyPlugin);
    let vue = new Vue({
        el : "#container"
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
            ,selectedDate: new Date()
            ,selectedName : "전체"
            ,toggleYn : false
        }
        , mounted () {
            this.getCurrencyCode();
            this.getExchangeList();
        }
        ,watch : {
            selectedCurrency () {
                this.filterExchange();
            }
            ,selectedDate() {
                this.getExchangeList();
            }
        }
        , methods : {
            getExchangeList () {
                axios({
                    method : "get"
                    ,url : "/financial_link/exRate/" + getDate(this.selectedDate)
                }).then(res => {
                    this.exchangeList = res.data.data.exRateList;       // 환율 정보 리스트(뷰 용도)
                    this.originDataList = this.exchangeList;            // 원본 데이터 (필터처리 위한 용도)
                    this.filterExchange();                              // 필터처리가 되어 있다면 필터까지.
                })
                .catch(function(e){
                    console.log(e);
                });
            }       // end getExchangeList
            ,getCurrencyCode () {
                axios({
                    method : "get"
                    , url : "/financial_link/getCurrencyCode"
                }).then(res=> {
                    this.currencyCode = res.data;
                    this.currencyCode.unshift({"title":"전체","code" : ""});
                })
                .catch(function(e){
                    console.log(e);
                });
            }   // end getCurrencyCode
            , selectCurrency(data) {
                this.selectedCurrency = data.code;
                this.selectedName = data.title;
            }   // end selectCurrency
            , clickToggle() {
                this.toggleYn = !this.toggleYn;
            }   // end clickToggle
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