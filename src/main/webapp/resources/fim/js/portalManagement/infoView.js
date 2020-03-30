/* jshint esversion: 6 */
'use strict';
$(document).ready(function(){
    Vue.use(MyPlugin);
    new Vue({
        el : "#app"
        , data : {
            info : []
        }
        , mounted () {
            
        }
        , methods : {
            
            async getInfo (boardId) {
                let infoList = await this.doAxios( "/portalManagement/info/" + boardId, "get");
                this.info = infoList.data.info;
            }
        }
    });
})
