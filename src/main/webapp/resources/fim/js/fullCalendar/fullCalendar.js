$(document).ready(function(){
    let calendarEl = document.getElementById('calendar');
    $.ajax({
        url : "/financial_link/taxPlan/taxPlanMonth"
        , dataType: "json"
        , type : "get"
        , async : true
        , success : function(data) {
            let calendar = new FullCalendar.Calendar(calendarEl, {
                plugins: [ 'interaction', 'dayGrid', 'list' ]
               // defaultDate: '2019-08-12',
                , editable: false
                , header: {
                    left: 'today',
                    center: 'prev, title, next',
                    right: 'dayGridMonth,listWeek,listMonth'
                }
                ,titleFormat : {
                    month :'short'
                }
                , buttonText : {
                    dayGridMonth : "월"
                    ,dayGridWeek : "주"
                    ,listWeek : "해당 주"
                    ,listMonth : "해당 월"
                }
                , titleFormat : {
                    year : 'numeric'
                    , month : 'short'
                }
                , navLinks: true
                , eventLimit: true // allow "more" link when too many events
                , locale: 'ko'
                , events : data
            });
            calendar.render();
        }
    })
    
});