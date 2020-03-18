$(document).ready(function() {
    Vue.use(MyPlugin);
    let vue = new Vue({
        el : "#container"
        , data : {
            boardType : ''
            ,title : ''
            ,sendMailYn : 'N'
            ,cont : ''
            ,fileName : ''
            ,files: []
            ,fileSize : 0
        }
        , mounted () {
        }
        ,watch : {
            
        }
        , methods : {
            handleFilesUpload(){
                let uploadedFiles = this.$refs.files.files;
                /*
                  Adds the uploaded file to the files array
                */
                for( var i = 0; i < uploadedFiles.length; i++ ){
                  this.files.push( uploadedFiles[i] );
                }
                console.log(this.files);
                this.fileSize = this.files[0].size;
                this.fileName = this.files[0].name;
            }   // end handleFilesUpload
            ,doWrite () {
                if(!this.title) {
                    alert("제목을 입력해 주세요");
                    this.$refs.title.focus();
                    return;
                }else if(!this.cont) {
                    alert("본문을 작성해 주세요.");
                    this.$refs.cont.focus();
                    return;
                }else if(!confirm("등록하시겠습니까? ")) {
                    return;
                }
                let formData = new FormData();              // 파일 같이 올릴 formdata 선언
                for(var i=0; i<this.files.length; i++) {    // 파일 객체만큼 반복 문 돌며 파일 추가.
                    let file = this.files[i];
                    formData.append('files['+i+']', file);
                }
                const param = {
                    title : this.title
                    ,cont : this.cont
                    ,masterId : 1
                }
                for(var key in param) {
                    formData.append(key, param[key]);
                }
                axios.post("/portal_management/info"
                    ,formData
                    ,{
                        'Content-Type' : 'multipart/form-data'
                    }
                ).then((res) => {
                    alert(res.resultMsg);
                    location.reload;
                }).catch(err=>{
                    alert(err);
                });
            }       // end doWrite
            ,removeFile( key ){
                if(!confirm("삭제하시겠습니까?")) {
                    return;
                }
                this.files.splice( key, 1 );
            }       // end removeFile
            
        }
    });
});
