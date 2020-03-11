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
          doAxios : function(url, method, rtnFunction, data) {
              $.blockUI({ message: '<h3><img src="/resources/fim/img/busy.gif" /> 조회 중입니다.</h3>' }); 
              axios({
                  method : method
                  ,url : url
                  ,data : data
              }).then(function(res){
                  rtnFunction(res.data.data);
                  $.unblockUI();
              })
              .catch(function(e){
                  alert(e.response.data.resultMsg);
                  
              });
          }
          , checkBizNo (bizNo) {      // 사업자 번호 체크
              
              let checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1); 
              let tmpbizNo, i, chkSum=0, c2, remander; 
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
          , getToday () {         // 현재 날짜 조회
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
          , isNull (value) {      // null 체크 함수
              if(!value || value === undefined || value === '') {
                  return true;
              }else {
                  return false;
              }
          }
          , menuOpen () {
              this.openFlag = !this.openFlag;
          }
          , handleSuccess : (res) => {res.data}
          , handleError : (error) => { return {success: false, message: error}}
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
      }
    });
  }
};

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
})
Vue.component('rawDisplayer', {
    template : `<div> <h3>{{title}} </h3>
    <pre>{{valueString}}</pre>
    </div>
    `
    ,props : {
        name : "raw-displayer"
        ,title : {
            required : true,
            type : String
        }
        ,value : {
            required : true
        }
    }
    ,computed : {
        valueString(){
            return JSON.stringify(this.value, null, 2);
        }
    }
});