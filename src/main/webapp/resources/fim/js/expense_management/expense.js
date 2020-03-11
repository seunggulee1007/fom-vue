$(document).ready(function(){
    
    let EventBus = new Vue();           // 이벤트 전달용 vue
    
    Vue.use(MyPlugin);                  // 전역 vue 플러그인
    
    Vue.component('tree-item', {        // tree 구조를 위한 컴포넌트 추가
        template : `<li>
                        <div@click="toggle">
                            <span v-if="isFolder" class="btn__txt">[{{ isOpen ? '-' : '+' }}]</span>
                            <span class="btn__txt" @click="clickDept(item);">{{ item.deptNm }}</span>
                        </div>
                        <ul v-show="isOpen" v-if="isFolder" style="padding-left: 1em;">
                          <tree-item
                            class="item"
                            v-for="(child, index) in item.child"
                            :key="index"
                            :item="child"
                          ></tree-item>
                        </ul>
                      </li>`
        , props: {                      // 컴포넌트에서 사용할 변수
            item: Object
        },
        data () {
            return {
                isOpen: false           // tree가 열렸는지 확인.
                ,userList : []
            }
        },
        computed: {
            isFolder: function () {
                return this.item.child && this.item.child.length
            }
        },
        methods: {
            toggle: function () {
                if (this.isFolder) {
                    this.isOpen = !this.isOpen
                }
            }
            ,clickDept(data) {
                if(data.child.length > 0) {
                    return;
                }
                axios({
                    url : "/expense_management/approval/getUserList"
                    ,params : {
                        deptCd : data.deptCd
                    }
                }).then(res=>{
                    this.userList = res.data.data.userList;
                    this.sender();
                }).catch(err=>{
                    alert(err);
                });
            }
            ,sender () {
                EventBus.$emit('userList', this.userList);
            }
        }
    })
    
    let app = new Vue({
        el : "#container"
        , data : {
            openFlag : true
            , mode: 'single'             // 날짜 모드(single 단일 multi : 범위)
            , masks : {                  // 날짜 마스킹 처리
                title: 'MMMM YYYY',     // 날짜 타이틀
                input: 'YYYY-MM-DD',    // input에 보여질 포맷
                data: "YYYY-MM-DD",
            }
            , expenseList : [
                {
                    DeptVO : {}
                    , useDate : getDate(new Date(), '-')
                    , remark : ""
                    , curAmt : 0
                }
            ]
            ,expenseIdx : 0
        }
        ,created () {
            this.getDeptList();
        }
        ,mounted () {
        }
        ,watch : {
            
        }
        ,methods : {
            sender(data) {
                EventBus.$emit('deptList', data);
            }
            , getDeptList() {         // 부서 정보 가져오기
                axios({
                    url : "/expense_management/approval/getDeptList"
                    ,method : "get"
                }).then(res=>{
                    console.log(res);
                    this.sender(res.data.data.deptList);
                }).catch(err => {
                    alert(err);
                });
            }
            ,addExpenseList() {
                this.expenseList.push(
                    {
                        DeptVO : {}
                        , useDate : getDate(new Date(), '-')
                        , remark : ""
                        , curAmt : 0
                    }
                );
            }
            ,openDeptPopup(idx) {                   // 부서 조회 팝업 열기
                this.expenseIdx = idx;
                userApp.openDeptPopup(idx);
            }
            ,setExpenseList (data) {                // 부서 정보 세팅
                this.expenseList[this.expenseIdx].DeptVO = data;
            }
        }
    });
    
    let userApp = new Vue({
        el : '.popup-layer--user'
        ,data : {
            deptList : []
            , userList : []
            , selectedUserList : []
            , deptPopupFlag : false
        }
        ,created() {
            EventBus.$on('deptList', this.onReceive);
            EventBus.$on('userList', this.userReceive);
        }
        ,mounted () {
        }
        ,components : {
            'draggable' : vuedraggable
        }
        ,methods : {
            onReceive(data) {
                console.log("receive!!!!");
                console.log(data);
                this.deptList = data;
            }
            ,userReceive(data) {
                this.userList = data;
            }
            , log: function(evt) {
                window.console.log(evt);
            }
            ,moveUser(flag, idx) {
                if(flag === 'user') {
                    this.selectedUserList.push(this.userList[idx]);
                    this.userList.splice(idx,1);
                }else {
                    this.userList.push(this.selectedUserList[idx]);
                    this.selectedUserList.splice(idx,1);
                    
                }
            }
            ,openDeptPopup(idx) {
                this.deptPopupFlag = true;
            }
            ,closeDeptPopup() {
                this.deptPopupFlag = false;
            }
            ,sendData() {
                if(this.selectedUserList.length > 1) {
                    alert("1명 이상은 추가하실 수 없습니다.");
                    return;
                }else if(this.selectedUserList.length == 0) {
                    alert("사용자를 선택해 주세요");
                    return;
                }
                app.setExpenseList(this.selectedUserList[0]);
                this.closeDeptPopup();
            }
        }
    });
});
