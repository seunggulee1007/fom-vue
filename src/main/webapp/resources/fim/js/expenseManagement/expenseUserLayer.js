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
                /*if(data.child.length > 0) {
                    return;
                }*/
                $.blockUI({ message: '<h3><img src="/resources/fim/img/busy.gif" /> 조회 중입니다.</h3>' });
                axios({
                    url : "/expenseManagement/approval/getUserList"
                        ,params : {
                            deptCd : data.deptCd
                        }
                }).then(res=>{
                    this.userList = res.data.data.userList;
                    this.sender();
                    $.unblockUI();
                }).catch(e =>{
                    alert(e.response.data.resultMsg);
                    $.unblockUI();
                });
            }
            ,sender () {
                EventBus.$emit('userList', this.userList);
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
            EventBus.$on('openDeptPopup',this.openDeptPopup);
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
                if(typeof(returnUserDept) ==="function") {
                    returnUserDept();
                }else {
                    EventBus.$emit('setExpenseData', this.selectedUserList[0]);
                }
                this.closeDeptPopup();
            }
        }
    });
});