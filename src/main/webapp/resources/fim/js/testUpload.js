function documentReady() {
    return false;
};

var myGridID;
var excelData;
// document ready 
$(document).ready(function() { 
    
    // 최초 그리드 생성함.
    createInitGrid();
    
    // IE10, 11은 readAsBinaryString 지원을 안함. 따라서 체크함.
    var rABS = typeof FileReader !== "undefined" && typeof FileReader.prototype !== "undefined" && typeof FileReader.prototype.readAsBinaryString !== "undefined";

    // HTML5 브라우저인지 체크 즉, FileReader 를 사용할 수 있는지 여부
    function checkHTML5Brower() {
        var isCompatible = false;
        if (window.File && window.FileReader && window.FileList && window.Blob) {
            isCompatible = true;
        }
        return isCompatible;
    };
    
    // 파일 선택하기
    $('#fileSelector').on('change', function(evt) {
        if (!checkHTML5Brower()) {
            alert("브라우저가 HTML5 를 지원하지 않습니다.\r\n서버로 업로드해서 해결하십시오.");
            return;
        } else {
            var data = null;
            var file = evt.target.files[0];
            if (typeof file == "undefined") {
                alert("파일 선택 시 오류 발생!!");
                return;
            }
            var reader = new FileReader();

            reader.onload = function(e) {
                var data = e.target.result;

                /* 엑셀 바이너리 읽기 */
                
                var workbook;

                if(rABS) { // 일반적인 바이너리 지원하는 경우
                    workbook = XLSX.read(data, {type: 'binary'});
                } else { // IE 10, 11인 경우
                    var arr = fixdata(data);
                    workbook = XLSX.read(btoa(arr), {type: 'base64'});
                }

                var jsonObj = process_wb(workbook);
                //console.log(JSON.stringify(jsonObj.Sheet1, 2, 2));
                createAUIGrid( jsonObj[Object.keys(jsonObj)[0]] );
            };

            if(rABS) reader.readAsBinaryString(file);
            else reader.readAsArrayBuffer(file);
            
        }
    });

});

// IE10, 11는 바이너리스트링 못읽기 때문에 ArrayBuffer 처리 하기 위함.
function fixdata(data) {
    var o = "", l = 0, w = 10240;
    for(; l<data.byteLength/w; ++l) o+=String.fromCharCode.apply(null,new Uint8Array(data.slice(l*w,l*w+w)));
    o+=String.fromCharCode.apply(null, new Uint8Array(data.slice(l*w)));
    return o;
};

// 파싱된 시트의 CDATA 제거 후 반환.
function process_wb(wb) {
    var output = "";
    output = JSON.stringify(to_json(wb));
    output = output.replace( /<!\[CDATA\[(.*?)\]\]>/g, '$1' );
    return JSON.parse(output);
};

// 엑셀 시트를 파싱하여 반환
function to_json(workbook) {
    var result = {};
    workbook.SheetNames.forEach(function(sheetName) {
        // JSON 으로 파싱
        //var roa = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
        
        // CSV 로 파싱
        var roa = XLSX.utils.sheet_to_csv( workbook.Sheets[sheetName] );

        if(roa.length > 0){
            result[sheetName] = roa;
        }
    });
    return result;
}

// 엑셀 파일 시트에서 파싱한 JSON 데이터 기반으로 그리드 동적 생성
function createAUIGrid(csvStr) {
    if(AUIGrid.isCreated(myGridID)) {
        AUIGrid.destroy(myGridID);
        myGridID = null;
    }
    var jsonData = parseCsv(csvStr);
    let tempArray = JSON.parse(JSON.stringify(jsonData));
    tempArray.shift();
    excelData = setGroup(tempArray);
    let testRow = JSON.stringify(excelData);
    
    let columnLayout = [{
        dataField : "title"
        , headerText : "카드 구분"
        , style : "my-custom-column"
        , width : 280
    }, {
        headerText : "합계"
        , headerStyle : "my-custom-column2"
        , children : [
            {
                dataField : "applyAmt"
                ,headerText : "청구금액"
                ,width : 100
                ,dataType: "numeric"
                ,formatString: "#,##0"
            }, {
                dataField : "aprvAmt"
                ,headerText : "승인금액"
                ,width : 100
                ,dataType: "numeric"
                ,formatString: "#,##0"
            }, {
                dataField : "aprvDt"
                ,headerText : "승인일자"
                ,width : 100
            }, {
                dataField : "userNm"
                ,headerText : "사용자명"
                ,width : 100
            }, {
                dataField : "storeNm"
                ,headerText : "가맹점 명"
                ,width : 100
            }, {
                dataField : "accountNm"
                ,headerText : "계정과목"
                ,width : 100
            }, {
                dataField : "costNm"
                ,headerText : "비용항목"
                ,width : 100
            }, {
                dataField : "dept"
                ,headerText : "부서"
                ,width : 100
            }
        ]
    }
    
    ]
    var gridProps = {
            autoEditBeginMode  : true
            , enableFilter : true
            , useContextMenu : true
            , fixedColumnCount : 1          // 고정 칼럼의 개수를 지정합니다.
            , fixedRowCount : 1             // 고정 행(row)의 개수를 지정합니다.
            , displayTreeOpen : false        // 계층형 그리드(트리 그리드) 에서 최초로 보여지는 그리드의 브랜치 아이템이 모두 열린 상태로 출력될지 닫힌 상태로 출력될지를 결정합니다. 이 값이 true 라면 모두 열린 상태이고, false 라면 최상위 브랜치만 표시됩니다.
            , showRowNumColumn : false      // 행 줄번호(로우 넘버링) 칼럼의 출력 여부를 지정합니다.
    };
    // 현재 엑셀 파일의 0번째 행을 기준으로 컬럼을 작성함.
    // 만약 상단에 문서 제목과 같이 있는 경우
    // 조정 필요.
    var firstRow = jsonData[0];
    if(typeof firstRow == "undefined") {
        alert("AUIGrid 로 변환할 수 없는 엑셀 파일입니다.");
        return;
    }
    
    // 그리드 생성
    myGridID = AUIGrid.create("#grid_wrap", columnLayout, gridProps);
    AUIGrid.showAjaxLoader(myGridID);
    // 그리드에 CSV 데이터 삽입
    AUIGrid.setGridData(myGridID, excelData, false);
    // 3depth까지 보여주기.
    AUIGrid.showItemsOnDepth(myGridID, 3);
    // AUIGrid.setCsvGridData(myGridID, testRow, false);
    AUIGrid.removeAjaxLoader(myGridID);

};


//최초 그리드 생성..
function createInitGrid() {
    
    var columnLayout = [];
    
    for(var i=0; i<20; i++) {
        columnLayout.push({
            dataField : "f" + i,
            headerText : String.fromCharCode(65 + i),
            width : 80
        });
    }
    
    // 그리드 속성 설정
    var gridPros = {
        noDataMessage : "엑셀 파일을 선택하십시오."
    };

    // 실제로 #grid_wrap 에 그리드 생성
    myGridID = AUIGrid.create("#grid_wrap", columnLayout, gridPros);
    
    // 그리드 최초에 빈 데이터 넣음.
    AUIGrid.setGridData(myGridID, []);
}

function parseCsv(value) {
    var rows = value.split("\n");
    var pData = [];
    for(var i=0, len=rows.length; i<len; i++) {
        pData[i] = rows[i].split(",");
    }
    let rData = [];
    /**
     * 문자열에 , 가 들어오면 ,로 split하기 때문에 문자가 두개로 나뉘어서 배열의 길이가 달라지고, 해당 인덱스에 접근이 안된다.
     * 때문에 값을 가공할 수가 없어서 규칙을 살펴보니 , 가 들어오는 문자열은 더블 쿼터 " 로 감싸지기 때문에
     * "로 시작되는 문자열은 다음 문자열까지 붙여 줬다.
     * 하지만 , 가 여러개 들어갈 수 있기 때문에 "로 끝나기 전까지 계속 해서 붙여주는 작업이 필요하다.
     * 해서 while문으로 문자열이 닫힐때까지 문자열을 계속 붙여준다.
     */
    for(let temp of pData) {
        let tempData = [];
        for(let i=0; i< temp.length; i++) {
            let data = temp[i];
            if(data.startsWith("\"")) {         // 더블 쿼터로 시작한다면
                while(!data.endsWith("\"")) {   // 더블쿼터로 끝날때까지 반복문
                    data += temp[++i];
                }
                data = data.replace(/"/gi, "")  // 더블쿼터는 계산식에 방해 되므로 빈 문자열로 치환
            }
            tempData.push(data);
        }
        rData.push(tempData);
    }
    return rData;
}

/**
 * 첫번째 행은 보통 제목으로 시작하기 때문에
 * 첫번째 행을 제거 시켜주는 함수
 * @param value
 * @returns
 */
let removeFirst = (value) => {
    let rows = value.split("\n");       // 개행 이후
    rows.shift();                       // 첫번째 행을 삭제
    let str = "";
    for(let i=0; i< rows.length; i++) {
        if(!rows[i]) {
            continue;
        }
        let gu = "\n";
        if(i == rows.length) {
            gu = "";
        }else {
            gu = "\n";
        }
        str += rows[i] + gu;
    }
    return str;
}

// 엑셀 내보내기
function exportExcel() {
    let count = AUIGrid.getRowCount(myGridID);
    if(count > 0) {
        AUIGrid.exportToXlsx(myGridID, {
            // 스타일 상태 유지 여부(기본값:true)
            exportWithStyle : false
            ,progressBar : true
        });
    }else {
        alert("선택된 파일이 없습니다.");
    }
}

/**
 * 그룹핑 함수
 * 이 파일은 3depth까지 들어가기 때문에 3번의 그룹핑과
 * 필터링이 필요하다.
 */
let setGroup = (arr) => {
    let cnt = 0;
    let tempArr = [];
    tempArr[cnt++] = arr[0][0];                         // 첫번째 비교용 값 세팅
    for(let temp of arr) {                              // 비교하여 같은 값일 경우 패스
        if(tempArr.includes(temp[0]) || !temp[0]) {
            continue;
        }
        tempArr[cnt++] = temp[0];                       // 같은 값이 없을 경우 추가.
    }
    
    let tempArr2 = [];
    for(let i=0; i<tempArr.length; i++) {               // 첫번째 배열 만큼 반복문
        let key = tempArr[i];                           // 해당 키 값을 따로 복사
        tempArr2 = arr.filter(data => {                 // 값이 같은 데이터 들 필터 처리
            if(tempArr[i] == data[0]) {
                return data;
            }
        });
        cnt = 0;
        let tempArr3 = [];
        tempArr3[cnt++] = tempArr2[0][1];               // 초기 값을 세팅
        for(let j=0; j< tempArr2.length; j++) {
            if(tempArr3.includes(tempArr2[j][1])) {     // 중복 값은 저장할 필요 없다.
                continue;
            }
            tempArr3[cnt++] = tempArr2[j][1];
        }
        tempArr[key] = tempArr3;
    }
    
    tempArr2 = [];          // 재활용
    let lastArr = new Array();
    for(let i=0; i < tempArr.length; i++) {
        let scdArr = new Array();
        let fstKey = tempArr[i];                                    // 키값(제목으로 쓰일 값) 두번째 depth
        for(let j=0; j<tempArr[fstKey].length; j++) {               // 해당 키의 맞는 값들만 반복을 돌린다.
            
            let scdKey = tempArr[fstKey][j];                        // 두번째 depth 키값
            tempArr2 = arr.filter(data => {
                if(scdKey == data[1] && fstKey == data[0]) {        // 첫번째와 두번째 depth가 맞는 조건의 리스트만 추출
                    return data;
                }
            });
            
            cnt =0;
            let tempArr3 = new Array();
            
            tempArr3[cnt++] = tempArr2[0][3];
            for(let k=0; k < tempArr2.length; k++) {                // 3번째 depth 중복값 제외
                if(tempArr3.includes(tempArr2[k][3])) {
                    continue;
                }
                tempArr3[cnt++] = tempArr2[k][3];
            }
            
            let tempArr4 = new Array();
            
            for(let l=0; l<tempArr3.length; l++) {                  // 해당 메뉴 갯수 만큼만 반복
                let trdKey = tempArr3[l];                           // 세번제 키 값
                let applyAmt = 0;
                let aprvAmt = 0;
                arr.filter(data => {
                    if(trdKey == data[3]) {
                        // TODO 엑셀의 데이터 위치가 바뀌면 이 부분이 수정되어야 한다.
                        applyAmt += Number(data[9]);                // 9번쨰가 청구금액
                        aprvAmt += Number(data[10]);                // 10번째가 승인금액
                    }
                });
                let tempArr5 = new Array();
                tempArr5 = arr.filter(data => {
                    if(trdKey == data[3]) {
                        return data;
                    }
                });
                let tempArr6 = new Array();
                for(let m=0; m<tempArr5.length; m++) {
                    tempArr6.push({
                        aprvDt      : tempArr5[m][4]                // 승인일자
                        , storeNm   : tempArr5[m][7]                // 가맹점 명
                        , userNm    : tempArr5[m][13]               // 사용자명
                        , accountNm : tempArr5[m][14]               // 계정과목
                        , costNm    : tempArr5[m][15]               // 비용항목
                        , dept      : tempArr5[m][16]               // 부서
                        , applyAmt  : tempArr5[m][9]                // 청구금액
                        , aprvAmt   : tempArr5[m][10]               // 승인금액
                    });
                    
                }
                tempArr4.push({ title : trdKey, applyAmt, aprvAmt, children : tempArr6});
            }
            
            let applyAmt = 0;
            let aprvAmt = 0;
            tempArr4.filter((data) => {                             // 금액 합계를 위한 필터링 처리
                applyAmt += data.applyAmt;                          // 총 청구금액
                aprvAmt += data.aprvAmt;                            // 총 승인금액
            });
            
            scdArr.push({ title : scdKey, applyAmt, aprvAmt, children : tempArr4});
        }
        let applyAmt = 0;
        let aprvAmt = 0;
        scdArr.filter((data) => {                                   // 금액 합계를 위한 필터링 처리
            applyAmt += data.applyAmt;                              // 총 청구금액
            aprvAmt = data.aprvAmt;                                 // 총 승인금액
        });
        lastArr.push({title : fstKey, applyAmt, aprvAmt, children : scdArr});
    }
    return lastArr;
}

let saveData = () => {
    
    $.ajax({
        url : "/test/testUpload"
        ,type : "post"
        ,data : {
            jsonData : JSON.stringify(excelData)
        }
        ,dataType : "json"
        ,success : (res) => {
            console.log(res);
        }
    });
}
let isExpanded = false;

let expandAll = () => {
    if(!isExpanded) {
        AUIGrid.expandAll(myGridID);
        isExpanded = true;
    } else {
        // AUIGrid.collapseAll(myGridID);
        AUIGrid.showItemsOnDepth(myGridID, 3 );
        isExpanded = false;
        
    }
}