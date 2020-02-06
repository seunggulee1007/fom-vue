$(document).ready(function() {
    Vue.use(MyPlugin);
    let vue = new Vue({
        el : "#container"
        , data : {
            exchangeList : []
            , columnLayout : [
                {dataField : "KorCurrName", headerText : "통화", width : 100}
                ,{dataField : "TTM", headerText : "매매기준율", width : 100}
                ,{dataField : "TTB", headerText : "송금보낼때", width : 100}
                ,{dataField : "TTS", headerText : "송금 받을때", width : 100}
                ,{dataField : "CASHB", headerText : "현찰살때", width : 100}
                ,{dataField : "CASHS", headerText : "현찰팔때", width : 100}
                ,{dataField : "USAExrate", headerText : "대미 환산", width : 100}
                ,{dataField : "ChangeRate", headerText : "환가로율", width : 100}
                
            ]
            , gridId : ""
            , auigridProps : {
                editable : true
                ,selectionMode : "multipleCells"
            }
        }
        , mounted : function() {
            this.doAxios("/fp/exRate", "get", this.setData);
        }
        , methods : {
            setData : function(res) {
                this.exchangeList = res.exRateList;
                if(AUIGrid.isCreated("#grid_wrap")){
                    AUIGrid.destroy("#grid_wrap");
                }
                this.gridId = AUIGrid.create("#grid_wrap", this.columnLayout, this.auigridProps);
                AUIGrid.removeAjaxLoader(this.gridId);
                AUIGrid.setGridData(this.gridId, this.exchangeList);
            }
        }
    });
});