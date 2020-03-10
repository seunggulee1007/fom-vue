$(document).ready(function(){
    Vue.use(MyPlugin);
    var treeData = {
        name: 'My Tree',
        children: [
          { name: 'hello' },
          { name: 'wat' },
          {
            name: 'child folder',
            children: [
              {
                name: 'child folder',
                children: [
                  { name: 'hello' },
                  { name: 'wat' }
                ]
              },
              { name: 'hello' },
              { name: 'wat' },
              {
                name: 'child folder',
                children: [
                  { name: 'hello' },
                  { name: 'wat' }
                ]
              }
            ]
          }
        ]
      }
    Vue.component('tree-item', {
        template : `<li>
                        <div@click="toggle">
                          <span class="btn__txt">{{ item.deptNm }}</span>
                          <span v-if="isFolder" class="btn__txt">[{{ isOpen ? '-' : '+' }}]</span>
                        </div>
                        <ul v-show="isOpen" v-if="isFolder">
                          <tree-item
                            class="item"
                            v-for="(child, index) in item.child"
                            :key="index"
                            :item="child"
                          ></tree-item>
                        </ul>
                      </li>`
        , props: {
          item: Object
        },
        data () {
          return {
            isOpen: false
          }
        },
        computed: {
          isFolder: function () {
            return this.item.child &&
              this.item.child.length
          }
        },
        methods: {
          toggle: function () {
            if (this.isFolder) {
              this.isOpen = !this.isOpen
            }
          }
        }
      })
    let EventBus = new Vue();
    let app = new Vue({
        el : "#container"
        , data : {
            searchStdDt : getDate(new Date(), '-')
            ,searchEndDt : getDate(new Date(), '-')                   // 사업자 번호
            ,openFlag : true
            ,mode: 'single'             // 날짜 모드(single 단일 multi : 범위)
            ,masks : {                  // 날짜 마스킹 처리
                title: 'MMMM YYYY',     // 날짜 타이틀
                input: 'YYYY-MM-DD',    // input에 보여질 포맷
            }
            ,deptList : []
            ,treeData: []
        }
        ,created () {
            this. getDeptList();
        }
        ,mounted () {
        }
        ,watch : {
            
        }
        ,methods : {
            sender() {
                EventBus.$emit('deptList', this.deptList);
            }
            , getDeptList() {         // 부서 정보 가져오기
                axios({
                    url : "/expense_management/approval/getDeptList"
                    ,method : "get"
                }).then(res=>{
                    console.log(res);
                    this.deptList = res.data.data.deptList;
                    this.treeData = res.data.data.deptList;
                    console.log(this.treeData);
                    this.sender();
                }).catch(err => {
                    alert(err);
                });
            }
        }
    });
    
    let userApp = new Vue({
        el : '.popup-layer--user'
        ,data : {
            deptList : []
        }
        ,created() {
            EventBus.$on('deptList', this.onReceive);
        }
        ,mounted () {
        }
        ,methods : {
            onReceive(data) {
                console.log("receive!!!!");
                console.log(data);
                this.deptList = data;
            }
        }
    });
});
