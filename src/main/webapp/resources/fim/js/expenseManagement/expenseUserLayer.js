$(document).ready(function(){
    Vue.use(MyPlugin);                      // 전역 vue 플러그인
    let TreeItem = {        // tree 구조를 위한 컴포넌트 추가
        template : `<li>
            <div @click="toggle" :class="{ 'lst-tree__menu' : isFolder }">
                <span v-if="isFolder"  class="icon-folder-open">[{{ isOpen ? '-' : '+' }}]</span>
                <span @click="clickDept(item);">{{ item.deptNm }}</span>
            </div>
            <ul class="lst-tree__sub" v-show="isOpen" v-if="isFolder" style="padding-left: 1em;">
                <tree-item class="lst-tree__item" v-for="(child, index) in item.child" :key="index" :item="child" ></tree-item>
            </ul>
        </li>`
        , name : "tree-item"
        , props: {                      // 컴포넌트에서 사용할 변수
            item: Object
        }
        , data () {
            return {
                isOpen: false           // tree가 열렸는지 확인.
            }
        },
        computed: {
            isFolder: function () {
                return this.item.child && this.item.child.length;
            }
        },
        methods: {
            /**********************************************
             * @method : toggle
             * @note 트리 구조 접고 펴는 함수
             * @author : es-seungglee
             ***********************************************/
            toggle: function () {
                if (this.isFolder) {
                    this.isOpen = !this.isOpen
                }
            }
            /**********************************************
             * @method : getDeptList
             * @note 부서 목록 조회
             * @author : es-seungglee
             ***********************************************/
            ,clickDept(data) {
                this.doAxios("/expenseManagement/approval/getUserList", "get", {deptCd : data.deptCd}, this.sender);
            }
            /**********************************************
             * @method : sender
             * @note 조회된 유저를 다른 컴포넌트로 전송
             * @author : es-seungglee
             ***********************************************/
            ,sender (data) {
                EventBus.$emit('userList', data.userList);
            }
        }
    }
    let userApp = new Vue({
        el : '.popup-layer--user'
            ,data : {
                deptList : []               // 부서 리스트
                , userList : []             // 사용자 리스트
                , selectedUserList : []     // 선택된 사용자 리스트
                , deptPopupFlag : false     // 팝업 플래그
                , tempFlag : null           // 임시용....
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
            ,TreeItem
        }
        ,methods : {
            /**********************************************
             * @method : getDeptList
             * @note 부서 목록 조회
             * @author : es-seungglee
             ***********************************************/
            getDeptList() {
                this.doAxios("/expenseManagement/approval/getDeptList", "get", null, this.setData);
            }
            /**********************************************
             * @method : userReceive
             * @note 서버 통신 후 세팅용 콜백 함수(유저리스트)
             * @author : es-seungglee
             ***********************************************/
            , userReceive(data) {
                console.log(data);
                this.userList = data;
            }
            /**********************************************
             * @method : setData
             * @note 서버 통신 이후 세팅용 콜백 함수
             * @author : es-seungglee
             ***********************************************/
            , setData(data) {
                this.deptList = data.deptList;
            }
            /**********************************************
             * @method : log
             * @note 리스트의 변동이 생길때마다 로그를 찍는 함수
             * @author : es-seungglee
             ***********************************************/
            , log: function(evt) {
                window.console.log(evt);
            }
            /**********************************************
             * @method : moveUser
             * @note 더블 클릭시 해당 사용자를 다른 쪽 리스트로 넘기는 함수
             * @author : es-seungglee
             ***********************************************/
            , moveUser(flag, idx) {
                if(flag === 'user') {
                    this.selectedUserList.push(this.userList[idx]);
                    this.userList.splice(idx,1);
                }else {
                    this.userList.push(this.selectedUserList[idx]);
                    this.selectedUserList.splice(idx,1);
                    
                }
            }
            /**********************************************
             * @method : openDeptPopup
             * @note 팝업 띄우기
             * @author : es-seungglee
             ***********************************************/
            , openDeptPopup(flag) {
                this.tempFlag = flag;
                this.deptPopupFlag = true;
            }
            /**********************************************
             * @method : closeDeptPopup
             * @note 팝업 닫는 함수
             * @author : es-seungglee
             ***********************************************/
            , closeDeptPopup() {
                this.deptPopupFlag = false;
            }
            /**********************************************
             * @method : sendData
             * @note 선택된 유저를 부모로 넘기는 함수
             * @author : es-seungglee
             ***********************************************/
            , sendData() {
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
