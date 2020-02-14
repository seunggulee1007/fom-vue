$(document).ready(function(){
    let activeInactiveWeekends = true;
    let calendarEl = document.getElementById('calendar');
    
    $.ajax({
        url : "/fp/taxPlan/taxPlanMonth"
        , dataType: "json"
        , type : "get"
        , async : true
        , success : function(data) {
            let calendar = new FullCalendar.Calendar(calendarEl, {
                plugins: [ 'interaction', 'dayGrid', 'list' ]
               // defaultDate: '2019-08-12',
                , editable: false
                , header: {
                    left: 'prev,next,today',
                    center: 'title',
                    right: 'dayGridMonth,listWeek,listMonth'
                }
            
                , buttonText : {
                    dayGridMonth : "월"
                    ,dayGridWeek : "주"
                    ,listDay : "일"
                    ,listWeek : "해당 주"
                    ,listMonth : "해당 월"
                }
                , navLinks: true
                , eventLimit: true // allow "more" link when too many events
                , locale: 'ko'
                , events : data
                , eventRender: function(info) {
                    if(info.view.type == 'dayGridMonth') {
                        let tooltip = new Tooltip(info.el, {
                            title: info.event.extendedProps.description,
                            placement: 'top',
                            trigger: 'hover',
                            container: 'body'
                        });
                    }
                }
            });
            calendar.render();
        }
    })
    
});