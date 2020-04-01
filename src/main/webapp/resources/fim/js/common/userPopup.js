var originUserList = [];        // 기존 유저 리스트 정보
var userInfo = {};              // 추가된 사용자
var selectedUser = {};          // 선택된 사용자 

$(document).ready(function() {
    getDeptList();
});

/**
 * 최초 부서 조회
 */
function getDeptList() {
    $.ajax({
        url : "/expenseManagement/approval/getDeptList"
        ,type : "get"
        ,success (res) {
            let html = "";
            if(res.result == 0) {
                let deptList = res.data.deptList;
                for(let dept of deptList) {
                    if(dept.child.length > 0) {
                        html += '<li data-jstree="{"type":"tree"}"> <span onclick="getUserList(\''+dept.deptCd + '\');">' + dept.deptNm + "</span>";
                        html += '<ul>';
                        for(child of dept.child) {
                            if(child.child.length > 0) {
                                html += '<li data-jstree="{"type":"tree"}"> <span onclick="getUserList(\''+child.deptCd + '\');">'+ child.deptNm + "</span>";
                                html += '<ul>'
                                for(third of child.child) {
                                    if(third.child.length > 0) {
                                        html += '<li data-jstree="{"type":"tree"}"> <span onclick="getUserList(\''+third.deptCd + '\');">' + third.deptNm + "</span>";
                                        html += '<ul>';
                                        for(four of third.child) {
                                            if(four.child.length > 0) {
                                                html += '<li data-jstree="{"type":"tree"}"> <span onclick="getUserList(\''+four.deptCd + '\');">' + four.deptNm + "</span>";
                                                html += '<ul>';
                                                for(last of four.child) {
                                                    html += '</li onclick="getUserList(\''+last.deptCd + '\');">'+ last.deptNm + '</li>';
                                                }
                                                html += "</ul>";
                                                html += "</li>";
                                            }else {
                                                html += '<li onclick="getUserList(\''+four.deptCd + '\');">' + four.deptNm + '</li>';
                                            }
                                        }
                                        html += "</ul>";
                                        html += "</li>";
                                    }else {
                                        html += '<li onclick="getUserList(\''+third.deptCd + '\');">'+third.deptNm +  '</li>';
                                    }
                                }
                                html += '</ul>';
                                html +='</li>';
                            }else {
                                html += '<li onclick="getUserList(\''+child.deptCd + '\');">' + child.deptNm  + '</li>';
                            }
                        }
                        html += "</ul>";
                        html += "</li>";
                    }else {
                        html += '<li onclick="getUserList(\''+dept.deptCd + '\');">' + dept.deptNm + '</li>';
                    }
                }
            }
            $("#dept").html(html);
            $('#jstree').jstree({
            "conditionalselect" : function (node, event) {
            return false;
            },
            "plugins" : [ "conditionalselect" ]
            });

        }
    })
}
function getUserList(deptCd) {
    $.ajax({
        url : "/expenseManagement/approval/getUserList"
        ,type : "get"
        ,data : {
            deptCd
        }
        ,async : false
        ,success (res) {
            let list = [];
            if(res.result == 0) {
                list = res.data.userList;
            }
            makeOriginList(list);
            originUserList = res.data.userList;
        }
    })
}
function makeOriginList(userList) {
    let html = '';
    $("#userList").empty();
    for(user of userList) {
        console.log(user.empNo);
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
    console.log(this.userInfo);
    if(this.userInfo.empNo) {
        alert("한명 이상은 선택 하실 수 없습니다.");
        return;
    }
    let empNo = user.getAttribute("id");
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
    opener.choiceUser(this.userInfo);
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
