$(document).ready(function(){
    Vue.component('tree-item', {        // tree 구조를 위한 컴포넌트 추가
        template : `<li>
            <div @click="toggle" :class="{ 'lst-tree__menu' : isFolder }">
            <span v-if="isFolder"  class="icon-folder-open">[{{ isOpen ? '-' : '+' }}]</span>
            <span @click="clickDept(item);">{{ item.deptNm }}</span>
            </div>
            <ul class="lst-tree__sub" v-show="isOpen" v-if="isFolder" style="padding-left: 1em;">
            <tree-item
            class="lst-tree__item"
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
                this.doAxios("/expenseManagement/approval/getUserList", "get", {deptCd : data.deptCd}, this.sender);
            }
            ,sender (data) {
                EventBus.$emit('userList', data.userList);
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
    , tempFlag : null
            }
    ,created() {
        EventBus.$on('openDeptPopup',this.openDeptPopup);
        EventBus.$on('userList',this.userReceive);
    }
    ,mounted () {
        this.getDeptList();
    }
    ,components : {
        'draggable' : vuedraggable
    }
    ,methods : {
        getDeptList() {
            this.doAxios("/expenseManagement/approval/getDeptList", "get", null, this.setData);
        }
        ,userReceive(data) {
            console.log(data);
            this.userList = data;
        }
        ,setData(data) {
            this.deptList = data.deptList;
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
        ,openDeptPopup(flag) {
            this.tempFlag = flag;
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
            console.log(this.tempFlag);
            if(this.tempFlag) {     // 임시...삭제해야 함(sso가 없어서 임시로 만들라고 해서 만듦)
                EventBus.$emit('sendTempData', this.selectedUserList[0]);
            }else if(typeof(returnUserDept) ==="function") {
                returnUserDept( this.selectedUserList[0] );
            }else {
                EventBus.$emit('setExpenseData', this.selectedUserList[0]);
            }
            this.closeDeptPopup();
        }
    }
    });
});
