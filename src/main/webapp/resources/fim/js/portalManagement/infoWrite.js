$(document).ready(function(){
    $("#file2").on("change",function(){
        console.log("?");
        let copyFiles = Array.prototype.slice.call(uploadFiles);
        let fileFormat = $("#fileFormat").text();
        let fileSize = originFileSize;
        for(let i=0; i< $(this)[0].files.length; i++) {
            let uploadFile = $(this)[0].files[i];
            uploadFiles.push(uploadFile);
            fileSize += uploadFile.size;
            if(fileSize / 1e+8 > 1) {
                alert("100MB 이상의 파일은 올리실 수 없습니다.");
                uploadFiles = copyFiles;
                return;
            }
        }
        originFileSize = fileSize;
        if(fileSize / 1e+6 > 1) {           // 메가 바이트를 넘는다면
            fileSize = Math.round(fileSize / 1e+6);
            fileFormat = 'MB';
        }else {                             // 여전히 바이트라면
            fileFormat = "Bytes";
        }
        $("#fileSize").text(setComma(fileSize));
        $("#fileFormat").text(fileFormat);
        makeFile();
    });
})

let uploadFiles = [];
let originFileSize = 0;
/**********************************************
 * @method : makeFile
 * @note file 만들기
 * @since 2020.04.03
 * @author : es-seungglee
 ***********************************************/
function makeFile() {
    makeFileHtml(uploadFiles);
}

/**********************************************
 * @method : makeFileHtml
 * @note 파일 view 리턴
 * @since 2020.04.03
 * @author : es-seungglee
 ***********************************************/
function makeFileHtml(fileList) {
    $("#uploadFile").empty();
    html = '';
    
    for(let i=0; i< fileList.length; i++) {
        let file = fileList[i];
        html += '<div class="file-info">' + file.name;
        html += '<button type="button" class="btn btn--remove deleteBtn" value="'+file.fileId+'"><span class="sp icon-delete"><span class="blind">닫기</span></span></button>';
        html += '</div>';
    }
    $("#uploadFile").append(html);
    $(".deleteBtn").click(function(){
        if(!confirm("해당 파일을 삭제하시겠습니까?")) {
            return;
        }
        if(!isNull($(this).val())){
            const param = {
                fileId : $(this).val()
            }
            doAjax("/expenseManagement/approval/deleteTiarCostFileByFileId","get", param);
        }
        let idx = $(".deleteBtn").index(this);
 
        uploadFiles.splice(idx, 1);
        makeFile();
    });
}