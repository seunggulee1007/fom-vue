/* jshint esversion: 6 */
'use strict';
$(document).ready(function(){
    let boardId = document.querySelector("#boardId").value;
    if(boardId) {
        getInfo(boardId);
    }
});
let originFileList = [];
let fileList = [];
let moreFlag = true;
function getInfo(boardId) {
    let infoVO = doAjax("/portalManagement/info", "get", {boardId : boardId});
    let info = infoVO.data.boardVO;
    $("#title").text(info.title);
    $("#userNm").text(info.userNm);
    for(let key in info) {
        if(key == 'fileList') {
            continue;
        }
        $("#"+key).text(info[key]);
    }
    if(info.fileList) {
        originFileList = Array.prototype.slice.call(info.fileList);
        fileList = info.fileList.splice(0,5);
        if(fileList.length > 4) {
            moreFlag = false;
        }

        makeFileList(fileList);
    }
}

function makeFileList(fileList) {
    let html = '';
    $("fileList").empty();
    for(let i=0; i< fileList.length; i++) {
        let file = fileList[i];
        html += '<a class="btn--link file-info>';
        html += '   <p class="btn__txt" onclick="downFile(\''+ file.fileNm + '\');">' + file.originalFileNm + '</p>';
        html += '</a>';
    }
    if(!moreFlag) {
        html += '<button type="button" class="btn btn--small btn-more-file" onclick="viewMoreFileList();">';
        html += '   <span class="sp icon-arrow"><span class="blind">첨부파일 더보기 </span></span>';
        html += '</button>';
    }
    $("#fileList").append(html);
}

function downFile (fileNm) {
    location.href="/common/download-file/"+fileNm;
}
