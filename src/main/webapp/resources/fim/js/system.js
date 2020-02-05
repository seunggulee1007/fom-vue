$(document).ready(function(){
    Vue.use(MyPlugin);
    let friend = 'zzzz';
    let app = new Vue({
        el : "#container"
        , data : {
            name : `vue gkgkgkgkg dasfasdf
            dsaflkasjdflkasdjf`
            , tableYn : true
            , functionYn : false
            , columnList : []
            , tableList : []
            , tableNm : ""
            , tableCmt : ""
            , functionList : []
            , functionData : {}
        }
        , beforeCreate : function() {
            /*
             * Vue.js 라이프 사이클 훅 중 가장 먼저 실행되는 훅.data와 이벤트($on, $once, $off, $emit), 감시자($watch)등이 설정 되기 전에 호출 
             * data(this.name)와 이벤트($on ...) 감시자($watch)를 사용할 수 없습니다.
             */ 
            console.log("beforeCreate");
        }
        , created : function() {
            /*
             * data, computed, methods, watch 등과 같은 옵션 설정이 완료된 시점이기 때문에, data 등을 사용할 수 있습니다. 하지만 아직 DOM에 컴포넌트가 마운트 되지 않았기 때문에 $el은 사용할 수 없습니다.");
             */
        }
        , beforeMount : function() {
            /*
             * 컴포넌트가 DOM에 추가 되기 전에 실행되는 훅. 거의 사용하지 않는 라이프 사이클 훅
             */
            console.log("beforeMount");
        }
        , mounted : function() {
            this.getTableList();
        }
        , beforeUpdate : function() {
            /*
             * DOM이 재 랜더링 되기 직전에 호출되는 라이프 사이클 훅. 업데이트 된 값들을 가지고 있는 상태이기 떄문에 업데이트 된 값으로 다른 값들을 업데이트 할 수 있다.
             */
            console.log("beforeUpdate");
            
        }
        , updated : function() {
            /*
             * DOM이 재 렌더링 된 후 호출되는 라이프 사이클 훅. DOM이 업데이트 된 후 호출되는 훅이기 때문에 변경된 후의 DOM을 이용해야 하는 처리를 할 때 사용하기 유용한 훅
             * 재 렌더링이 끝났다는 것이 보장된 상태에서 작업하기 위해서 $nextTick을 사용해야 한다.
             * beforeUpdate훅과 다르게 updated에서 data를 수정하게 되면 update훅이 호출되기 때문에 무한 루프에 빠질 수 있다.
             */
            console.log("updated");
            this.$nextTick(function(){
                //모든 화면에 렌더링 된 후 실행
                console.log("updated 랜더링 끝");
            });
        }
        , beforeDestroy : function() {
            /*
             * 컴포너트가 제거되기 직전에 호출되는 라이프 사이클 훅.
             * 이 훅에서 컴포넌트는 본래의 기능들을 가지고 있는 온전한 상태.
             * 이 훅에서 이벤트 리스터를 해제하거나 컴포넌트에서 동작으로 할당받은 자원들을 해제할대 사용하기 적합한 훅.
             */
            console.log("beforeDestroy");
        }
        , destroyed : function() {
            /*
             * 컴포넌트가 제거된 후 호출되는 라이프 사이클 훅. 컴포넌트의 모든 이벤트 리스너와 디렉티브의 바인딩이 해제되고 하위 컴포넌트도 모두 제거 됨.
             */
            console.log("destroyed");
        }
        , watch : {
            // console.log("whenever you want watch something, this area will do that");
            tableList : function() {
                this.getColumnList(this.tableList[0]);
            }
        }
        ,methods : {
            getTableList : function() {
                this.tableYn = true;
                this.functionYn = false;
                axios({
                    method : "get"
                    , url : "/getTableList" 
                }).then(function(res) {
                    this.tableList = res.data.tableList;
                }.bind(this)).catch(function(e) {
                    alert(e);
                });
                
            }
            , getColumnList : function(data) {
                console.log(data);
                axios({
                    url : "/getColumnList"
                    , data : {
                        tableName : data.tableName
                    }
                    , method : "get"
                }).then(function(res) {
                    this.columnList = res.data.columnList;
                    this.tableNm = data.tableName;
                    this.tableCmt = data.columnName;
                }.bind(this))
            }
            , getFunctionList : function() {
                this.tableYn = false;
                this.functionYn = true;
                let res = axios({
                    url : "/getFunctionList"
                }).then(this.handSuccess);
                this.functionList = res.functionList;
            }
            , getFunction : function(name) {
                $.ajax({
                    url : "/getFunction"
                    , data : {
                        functionName : name
                    }
                    ,dataType : "json"
                    ,success : function(res) {
                        this.functionData = res;
                    }
                });
            }
            , alertFunction : function() {
                alert("gg");
            }
        }
    });
    
});
