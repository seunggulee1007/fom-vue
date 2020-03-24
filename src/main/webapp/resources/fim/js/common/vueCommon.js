Vue.config.devtools=false;       // 개발용 빌드시 true, 배포용 빌드시 false
Vue.config.errorHandler = function(err, vm, info) {
    console.log(err);
    console.log(vm);
    console.log(info);
}
Vue.config.keyCodes = {
    'press-esc' : 27
}
Vue.config.performance = true; // devtool의 타임라인에서 컴포넌트 초기화, 컴파일, 렌더링 및 패치 성능 추적 활성화.
// unblock when ajax activity stops 
const MyPlugin = {
  // The install method is all that needs to exist on the plugin object.
  // It takes the global Vue object as well as user-defined options.
  install(Vue, options) {
    // We call Vue.mixin() here to inject functionality into all components.
    Vue.mixin({
      // Anything added to a mixin will be injected into all components.
      // In this case, the mounted() method runs when the component is added to the DOM.
      mounted() {
        
      }
      ,methods : {
          /**********************************************
           * @method : doAxios
           * @note  넘겨진 정보에 따라 비동기 통신하는 함수(공통)
           * @author : es-seungglee
           ***********************************************/
          doAxios : function(url, method, data) {
              $.blockUI({ message: '<h3><img src="/resources/fim/img/icon_loading.gif" /> 처리중입니다. 잠시만 기다려 주세요.</h3>' }); 
              return axios({
                  method : method
                  ,url : url
                  ,params : data
              }).then(this.successFunction, this.errorFunction)
             
          }
          ,
          successFunction(res) {
              $.unblockUI();
              return res.data;
          }
          ,errorFunction(err) {
              $.unblockUI();
              return err.data;
          }
          /**********************************************
           * @method : checkBizNo
           * @note  넘겨진 번호가 사업자 번호에 알맞는지 체크(유효성 체크)
           * @author : es-seungglee
           ***********************************************/
          , checkBizNo (bizNo) {      // 사업자 번호 체크
              
              let checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1); 
              let i, chkSum=0, c2, remander; 
              bizNo = bizNo.replace(/-/gi,''); 
              if(bizNo.length != 10) {
                  return false;
              }
              for (i=0; i<=7; i++) {
                  chkSum += checkID[i] * bizNo.charAt(i); 
              }
              c2 = "0" + (checkID[8] * bizNo.charAt(8)); 
              c2 = c2.substring(c2.length - 2, c2.length); 
              chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1)); 
              remander = (10 - (chkSum % 10)) % 10 ; 

              return (Math.floor(bizNo.charAt(9)) == remander);
          }
          /**********************************************
           * @method : getToday
           * @note  현재 날짜 리턴
           * @author : es-seungglee
           ***********************************************/
          , getToday () {
              let date = new Date();
              let year = date.getFullYear();
              let month =new String(date.getMonth() +1);
              let day = new String(date.getDate());
              if(month.length == 1) {
                  month = "0" + month;
              }
              if(day.length == 1) {
                  day = "0" + day;
              }
              
              return year + "-" + month + "-" + day;
          }
          /**********************************************
           * @method : isNull
           * @note  null 체크 함수
           * @author : es-seungglee
           ***********************************************/
          , isNull (value) {
              if(!value || value === undefined || value === '') {
                  return true;
              }else {
                  return false;
              }
          }
          , menuOpen () {
              this.openFlag = !this.openFlag;
          }
          /**********************************************
           * @method : getPagingVO
           * @note  넘겨진 페이지 정보로 페이지 리스트를 만들어 리턴해 주는 함수
           * @author : es-seungglee
           ***********************************************/
          , getPagingVO(pageNo, totalBoardCount, totalPages, pageCount) {
              let pageVO = {};
              if(totalBoardCount > 0) {
                  let num = pageNo + 1;
                  var arr = [];
                  pageVO.num = num;      // 현재 페이지
                  pageVO.totalGroupNo = Math.ceil(totalPages / 10);       // 총 그룹이 몇개인지 계산.(나머지가 있다면 무조건 올림)
                  let nowGroupCount = nowGroupCount = Math.floor((num -1) / pageCount) + 1;     // 현재 그룹 카운트
                  pageVO.nowGroupCount = nowGroupCount;
                  let cnt = pageCount;      // 현재 그룹의 글 갯수
                  if(pageVO.totalGroupNo == pageVO.nowGroupCount) {     // 현재 그룹이 마지막 그룹이라면
                      cnt = (pageVO.totalGroupNo % 10) + 1;             // 마지막 그룹의 갯수를 계산
                  }
                  for(let i=pageVO.nowGroupCount; i <= cnt; i++) {      // 그룹의 갯수 만큼 반복문을 돌려서 번호 리스트를 정한다.
                      arr.push(i);
                  }
                  pageVO.pageList = arr;
              }
              return pageVO;
              
          }
          /**********************************************
           * @method : setComma
           * @note  3자리마다 ,(컴마)를 찍어주는 함수
           * @author : es-seungglee
           ***********************************************/
          , setComma(value, flag) {
              value = value.toString();
              if(value.indexOf(".") != -1) {          // 소수점 들어왔을 시
                  if(flag) {                          // 반올림 여부
                      value = Math.round(value);
                  }else {
                      let values = value.split(".");
                      return values[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "." + values[1];
                  }
              }
              return value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
          }
          /**********************************************
           * @method : viewFormData
           * @note  formData는 console에 안 찍히므로 해당 정보를 보여주는 함수
           * @author : es-seungglee
           ***********************************************/
          , viewFormData(formData) {
              for (var key of formData.keys()) {
                  console.log(key +" :::" + formData.get(key));
              }
          }
          , getDate(date, type){
              if(!(date instanceof Date)) {
                 console.log(typeof(date));
                 if(date.indexOf('-') == -1) {
                     date = date.substr(0,4) + "-" + date.substr(4,2) + "-" + date.substr(6,2);
                 } 
                 return date;
              }
              let year = date.getFullYear();
              let month = date.getMonth() +1;
              let day = date.getDate();
              
              if(month < 10) {
                  month = "0"+month;
              }
              if(day < 10) {
                  day = "0" + day;
              }
              let today;
              if(!type) {
                  type = "";
              }
              
              today = year + type + month + type + day;
              
              return today;
          }
      }
    });
  }
};

// 숫자만 입력해 주는 지시자
const onlyInt = {
  install(Vue, options = null) {
    const directiveName = options && typeof options === 'object' && 'name' in options ?
      options.name : 'int';

    Vue.directive(directiveName, {
      inserted(el) {
        el.oninput = (event) => {
            if(el.value.indexOf(",") != -1) {
                el.value = el.value.replace(/,/gi,"");
            }
            const formattedValue = parseInt(event.target.value, 10);
            el.value = isNaN(formattedValue) ? '' : formattedValue;
        };
      }
    });
  },
};

// 통화로 변경해 주는 필터링
Vue.filter('currency', function(value, flag) {
    if(!value) {
        return;
    } else {
        value = value.toString();
        if(value.indexOf(".") != -1) {          // 소수점 들어왔을 시
            if(flag) {                          // 반올림 여부
                value = Math.round(value);
            }else {
                let values = value.split(".");
                return values[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "." + values[1];
            }
        }
        return value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    
});

// 넘겨진 번호를 사업자 번호 포맷에 맞춰서 마스킹 해주는 필터링
Vue.filter('bizNoFilter', function(value, type) {
    if(value.includes('-')){
        return value;
    }
    var formatNum = '';
    try{
        if (value.length == 10) {
            if (type == 0) {
                formatNum = value.replace(/(\d{3})(\d{2})(\d{5})/, '$1-$2-*****');
            } else {
                formatNum = value.replace(/(\d{3})(\d{2})(\d{5})/, '$1-$2-$3');
            }
        }
    } catch(e) {
        formatNum = value;
        console.log(e);
    }
    return formatNum;
});
