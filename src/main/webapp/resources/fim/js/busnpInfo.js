$(document).ready(function(){
    Vue.use(MyPlugin);
    let app = new Vue({
        el : "#bunspInfoApp"
        , data : {
            trtCntn : ''                    // 결과 메시지
            ,busnpNo : ''                   // 사업자 번호
            ,smpcBmanEnglTrtCntn : ''
            ,smpcBmanTrtCntn : ''
            ,complBusnpNo : ''              // 완료 이후 사업자 번호(화면에 보여주는 용도)
            ,busnpList : []                 // 조회 된 사업자결과 리스트
            ,columnLayout : [               // 그리드에 뿌려줄 내용
                {dataField  : "busnpNoId", headerText:"조회 아이디", width:50}
                , {dataField  : "busnpNo", headerText:"사업자번호", width:120}
                , {dataField  : "trtCntn", headerText:"내용1", width:400
                    , tooltip : {
                        show : true
                        ,thooltipField : "trtCntn"
                    } 
                }
                , {dataField  : "smpcBmanTrtCntn", headerText:"내용2", width:400
                    , tooltip : {
                        show : true
                        ,thooltipField : "smpcBmanTrtCntn"
                    }                     
                }
                , {dataField  : "smpcBmanEnglTrtCntn", headerText:"내용3", width:400
                    , tooltip : {
                        show : true
                        ,thooltipField : "smpcBmanEnglTrtCntn"
                    }  
                }
                , {dataField  : "regDt", headerText:"등록일자", width:120, dataType : "date",formatString : "yy년 m월 d일 (ddd) HH시 MM분"}
            ]
            , gridId : ""                   // 해당 그리드 아이디(유일값)
        }
        ,mounted : function () {
            this.doAxios("/busnp/busnpList","get",this.setData);
        }
        ,methods : {
            getInfo : function(busnpNo) {
                if(!busnpNo) {
                    alert("사업자 번호를 입력해 주세요");
                    this.$refs.busnpNo.focus();
                    return;
                }
                if(!this.checkBusnpNo(busnpNo)) {
                    alert("사업자 번호가 유효하지 않습니다. 사업자 번호를 확인해 주세요");
                    this.$refs.busnpNo.focus();
                    return;
                }
                this.doAxios("/busnp/busnpInfo","post",this.setData2, jQuery.param({busnpNo}));
            }
            ,setData : function(res) {
                this.busnpList = res.busnpList;
            }
            ,setData2 : function(res) {
                this.trtCntn = res.trtCntn;
                this.complBusnpNo = this.busnpNo;
                this.doAxios("/busnp/busnpList","get",this.setData);
            }
        }
        , watch : {
            busnpList : function() {
                if(AUIGrid.isCreated("#grid_wrap")) {
                    AUIGrid.destroy("#grid_wrap");
                }
                this.gridId = AUIGrid.create("#grid_wrap", this.columnLayout);
                AUIGrid.removeAjaxLoader(this.gridId);
                AUIGrid.setGridData(this.gridId, this.busnpList);
            }
        }
    });
    
});
