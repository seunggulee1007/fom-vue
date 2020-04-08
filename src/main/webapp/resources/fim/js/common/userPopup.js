var originUserList = [];        // 기존 유저 리스트 정보
var userInfo = {};              // 추가된 사용자
var selectedUser = {};          // 선택된 사용자
let parentDeptCd='';
let temp = ""; 

$(document).ready(function() {
    $("#idx").val(opener.document.getElementById('idx').value);
    temp = opener.document.getElementById('temp').value;
    opener.document.getElementById('temp').value = '';
    parentDeptCd = opener.document.getElementById('deptCd').value;
    getDeptList();
});

/**
 * 최초 부서 조회
 */
function getDeptList () {
    $.ajax({
        url : "/expenseManagement/approval/getDeptList"
        ,type : "get"
        ,async : false
        ,success (res) {
            // let data = new Array();
            let data = res.data.deptList;
            $("#jstree").jstree({
                core : {
                    data : data
                },
                
            })
            .bind('loaded.jstree',function(event, datas){
                let data = datas.instance._model.data;
                for(let temp in  data) {
                    if(temp == parentDeptCd) {
                        
                        let id = openParent(data, temp);
                        data[temp].state.selected = true;
                        let parent = data[temp].parent;
                        if(parent == '#') {     // 부모가 #이라는 것은 최상단 엘리먼트라는 뜻이므로 열지 않고 멈춘다.
                            break;
                        }
                        // 최상단 엘리먼트가 opend속성을 주면 먹히긴 하나 실제로 dom에서는 열리지 않고 내부적으로만 열린것으로 처리 되어서
                        // 강제로 최상단 엘리먼트 하나만 강제로 open되도록 수정
                        datas.instance.get_container().find('li').each(function(idx){
                            let elId = $(this).attr("id");
                            if(elId == id) {
                                datas.instance.open_node($(this));
                                return false;
                            }
                        });
                        break;
                    }
                }
                getUserList(parentDeptCd);

            })
            .bind('select_node.jstree', function(event, data){        // 해당 노트 선택 이벤트
                var deptCd = data.instance.get_node(data.selected).id;
                console.log(data);
                if(data.node.state.opened == false) {
                    data.instance.open_node(deptCd);
                }else {
                    data.instance.close_node(deptCd);
                }
                getUserList(deptCd);
            })
        }
    })
}

function openParent(data, temp) {
    
    let id = data[temp].parent;
    if(id == '#') {     // #은 jstree의 최상단 부모 element이므로 현재 아이디를 리턴한다.
        return temp;
    }
    data[temp].state.opened = true;       // 현재 트리는 오픈

    return openParent(data, id);            // 재귀 호출
}

function getUserList(deptCd) {
    let res = doAjax("/expenseManagement/approval/getUserList", "get", {deptCd : deptCd});
    let list = [];
    if(res.result==0) {
        list = res.data.userList;
    }
    makeOriginList(list);
    originUserList = res.data.userList;
}

function makeOriginList(userList) {
    let html = '';
    $("#userList").empty();
    for(user of userList) {
        html += '<div class="popup__contents-txt userList" ondblclick="makeChoiceUser(this);" id="'+user.empNo+'" onclick="selectUser(this);">';
            html += '<span class="user_name">' + user.userNm + '</span>';
            html += '<span class="user_position txt--blue">[' + user.title2Nm + ']</span>';
            html += '<span class="user_dept txt--green">' + user.deptNm + '</span>';
            html += '<span class="user_office txt--gray">' + user.comNm + '</span>';
        html += '</div>';
    }
    $("#userList").append(html);
}

function makeChoiceUser(user) {
    let empNo = user.getAttribute("id");
    if(this.userInfo.empNo) {
        if(this.userInfo.empNo == empNo) {
            alert("이미 선택한 사용자 입니다.");
            return;
        }
        if(!confirm("한명 이상은 선택할 수 없습니다. \n계속하면 기존 선택한 유저는 사라지고 선택한 사용자만 남게됩니다. \n계속 하시겠습니까?")) {
            return;
        }
    }
    
    let userInfo = this.originUserList.filter(data => {
        if(data.empNo == empNo) {
            return data;
        }
    })[0];
    let html = '';
    html += '<div class="popup__contents-txt" ondblclick="deleteChoiceUser();">';
        html += '<span class="user_name">' + userInfo.userNm + '</span>';
        html += '<span class="user_position txt--blue">[' + userInfo.title2Nm + ']</span>';
        html += '<span class="user_dept txt--green">' + userInfo.deptNm + '</span>';
        html += '<span class="user_office txt--gray">' + userInfo.comNm + '</span>';
    html += '</div>';
    $("#choiceUser").html(html);
    this.userInfo = userInfo;
}

function deleteChoiceUser() {
    html = '';
    this.userInfo = {};
    $("#choiceUser").html(html);
}

function choiceUser() {
    if(!this.userInfo.empNo) {
        alert("사용자를 선택해 주세요");
        return;
    }
    console.log(this.userInfo);
    const param = {
        comCd :this.userInfo.comCd
        ,deptCd : this.userInfo.deptCd
    }
    let res = doAjax("/common/getBudgetDeptInfo", "get", param);
    if(!res.data) {
        alert("예산 부서가 없습니다. 다른 사용자를 선택해 주세요.");
        return;
    }
    this.userInfo.budgetDeptCd = res.data.deptSeq;
    this.userInfo.budgetDeptNm = res.data.deptNm;
    this.userInfo.budgetErpDeptSeq = res.data.deptSeq;
    if(temp) {
        opener.tempUser(userInfo);
    }else {
        opener.choiceUser(this.userInfo, $("#idx").val());
    }
    closePopup();
}

function closePopup() {
    window.close();
}

// 검색결과 유저 선택했을 시 하이라이트 가게끔 하는 메서드
function selectUser(obj) {
    id = obj.getAttribute("id");
    $(".userList").each(function(idx, item) {
        let ids = item.getAttribute('id');
        if(id == ids) {
            $(this).addClass("popup__contents-txt--selected");
        }else {
            $(this).removeClass("popup__contents-txt--selected");
        }
    });
    let userInfo = this.originUserList.filter(data =>{
        if(data.empNo == id) {
            return data;
        }
    })[0];
    this.selectedUser = userInfo;

}

function insertUser() {
    if(!this.selectedUser.empNo) {
        alert("사용자를 선택해 주세요");
        return;
    }
    if(this.userInfo.empNo) {
        if(this.userInfo.empNo == this.selectedUser.empNo) {
            alert("이미 선택한 사용자 입니다.");
            return;
        }
        if(!confirm("한명 이상은 선택할 수 없습니다. \n계속하면 기존 선택한 유저는 사라지고 선택한 사용자만 남게됩니다. \n계속 하시겠습니까?")) {
            return;
        }
    }
    let html = '';
    html += '<div class="popup__contents-txt" ondblclick="deleteChoiceUser();">';
        html += '<span class="user_name">' + this.selectedUser.userNm + '</span>';
        html += '<span class="user_position txt--blue">[' + this.selectedUser.title2Nm + ']</span>';
        html += '<span class="user_dept txt--green">' + this.selectedUser.deptNm + '</span>';
        html += '<span class="user_office txt--gray">' + this.selectedUser.comNm + '</span>';
    html += '</div>';
    $("#choiceUser").html(html);
    this.userInfo = this.selectedUser;
}
