
$(document).ready(function(){
	Vue.use(MyPlugin);                      // 전역 vue 플러그인
	let cardList = new Vue({
		el: "#companyCardRequest",
		data: {
			selectedCard: "", //-- 법인카드 리스트에서 선택한 카드.
			companyCardList: [], //--법인카드 리스트.
			fileList: [], //-- 첨부파일 리스트.
			allowFileSize: 100000000, //-- 첨부파일 용량제한 최대100MB
		},
		methods: {
			/**
			 * 법인카드리스트 조회.
			 */
			async getCompanyCardList(){
				let cardList = await this.doAxios("./getCompanyCardList", "post", {companySeq :"2", empSeq:"140"});
				this.companyCardList = cardList.data.companyCardList;
			},
			attachFile() {

				let nBytes = 0;
				let oFiles = this.$refs.files.files;
				let nFiles = oFiles.length;

				for(let i = 0; i < nFiles; i++){

					this.fileList.push(oFiles[i]);
				}
				this.calcFileSize();

			},
			/**
			 * 첨부파일 처리.
			 */
			calcFileSize(){
				let nBytes = 0;

//				let oFiles = this.$refs.files.files;
				console.log("this.fileList.length : " + this.fileList.length);
				for(let i = 0; i < this.fileList.length; i++){
					nBytes += this.fileList[i].size;

					//-- 허용된 용량 초과시 파일 리스트 객체에서 마지막 추가한 파일을 삭제 하고, 해당 파일의 용량도 마이너스 한다.
					if(nBytes > this.allowFileSize){
						alert("전체 파일크기가 100MB를 넘을수 없습니다.");
						nBytes = 0;
						this.fileList = [];
						break;
					}

					console.log(this.fileList[i]);
					console.log("file : " + this.fileList[i].name);
					console.log("nBytes : " + nBytes);
				}

				if(nBytes > 0){
					let sOutput = this.getfileSize(nBytes);
					this.$refs.fileSizeStr.innerText = sOutput + " / 100 MB";
				}
				else{
					this.$refs.fileSizeStr.innerText = "0 byte / 100 MB";
				}
			},
			/**
			 * 파일 리스트에서 선택한 파일을 삭제 하고 리스트를 다시 그린다.
			 * @param idx
			 * @returns
			 */
			onDeleteFile(idx){

				let fileName = this.fileList[idx].name;

				if(confirm(fileName+"\n파일을 삭제 하시겠습니까?")){
					this.fileList.splice(idx, 1);
					this.calcFileSize();
				}
			},
			/**
			 * 파일의 용량을 단위에 맞게 계산해서 리턴 해준다.
			 */
			getfileSize(x) {
				var s = ['bytes', 'KB', 'MB', 'GB', 'TB', 'PB'];
				var e = Math.floor(Math.log(x) / Math.log(1000));
				return (x / Math.pow(1000, e)).toFixed(2) + " " + s[e];
			},
		},
		mounted(){
			this.getCompanyCardList();
		}
	});

//	let fileAdd = new Vue({
//		el: "#elFile",
//
//		methods:{
//			updateSize(inFile) {
//
//				let nBytes = 0;
//
//				let oFiles = this.$refs.files.files;
//
//
//				let nFiles = oFiles.length;
//
//				console.log("nFiles : " + nFiles);
//
//				for(let i = 0; i < nFiles; i++){
//
//					console.log("inFile : " + oFiles[i]);
//					fileList.push(oFiles[i]);
//				}
//				console.log("fileList : " + fileList);
//
//				console.log("oFiles.length : " + nFiles);
//
//				this.calcFileSize();
//
//			},
//			calcFileSize(){
//				let nBytes = 0;
//				$("#fileListBox").html("");
//
//				console.log("file len : " + fileList.length);
//				for(let i = 0; i < fileList.length; i++){
//					nBytes += fileList[i].size;
//
//					//-- 허용된 용량 초과시 파일 리스트 객체에서 마지막 추가한 파일을 삭제 하고, 해당 파일의 용량도 마이너스 한다.
//					if(nBytes > allowFileSize){
//						alert("전체 파일크기가 100Mb를 넘을수 없습니다.");
//						nBytes -= fileList[i][0].size
//						fileList.splice(i, 1);
//						break;
//					}
//
//					console.log("file : " + fileList[i]);
//					console.log("file : " + fileList[i].name);
//					console.log("nBytes : " + nBytes);
//				}
//
//				if(nBytes > 0){
//					let sOutput = getfileSize(nBytes);
//					$("#fileSize").text(sOutput + " / 100 MB");
//				}
//				else{
//					$("#fileSize").text("0 byte / 100 MB");
//				}
//			}
//		}
//
//	});

});