/* jshint esversion: 6 */
'use strict';
$(document).ready(function(){
    Vue.use(MyPlugin);
    new Vue({
        el : "#app"
        , data : {
            info : [],
            originFileList : [],
            fileList : [],
            moreFlag : true,
        }
        , mounted () {
            let boardId = document.querySelector("#boardId").value;
            if(boardId) {
                this.getInfo(boardId);
            }
        }
        , methods : {
            /**********************************************
             * @method : getInfo
             * @note 해당 게시글 조회
             * @author : es-seungglee
             ***********************************************/
            async getInfo (boardId) {
                let info = await this.doAxios( "/portalManagement/info/" + boardId, "get");
                this.info = info.data.boardVO;
                if(this.info.fileList) {
                    this.originFileList = this.info.fileList;
                    this.fileList = this.originFileList.splice(0,5);
                    if(this.fileList.length > 4) {
                        this.moreFlag = false;
                    }
                }
            }
            /**********************************************
             * @method : downFile
             * @note 파일 다운로드
             * @author : es-seungglee
             ***********************************************/
            ,downFile (fileNm) {
                location.href="/common/download-file/"+fileNm;
            }
            /**********************************************
             * @method : viewMoreFileList
             * @note 더보기 클릭시
             * @author : es-seungglee
             ***********************************************/
            ,viewMoreFileList() {
                this.fileList = this.originFileList;
                this.moreFlag = true;
            }
        }
    });
})
