<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<style type="text/css">
    .chart01 {width: 100%; height: 400px; border: 1px solid #eee;}
</style>

<div class="container">
    <div class="card shadow mb-2">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">
                <p>webPonent charts</p>
            </h6>
        </div>
        <div class="card-body">
            <div class="page-header">
                <h1>column</h1>
            </div>

            <div class="row">
                <div class="chart01"></div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="http://static.smilegate.net/static/webponent/webponent.licenseKey.js"></script>
<script type="text/javascript" src="http://static.smilegate.net/static/webponent/lib/comm/raphael.js"></script>
<script type="text/javascript" src="http://static.smilegate.net/static/webponent/lib/comm/webponent.comm.common.js"></script>
<script type="text/javascript" src="http://static.smilegate.net/static/webponent/lib/chart/webponent.chart.js
"></script>

<script type="text/javascript">
var chart = null;
window.onload = function(){
	var options = {
        data: {
            data: [
                { Date: '20140101', Mprc: 10000 },
                { Date: '20140102', Mprc: 20000 },
                { Date: '20140103', Mprc: 15000 },
                { Date: '20140104', Mprc: 30000 },
                { Date: '20140105', Mprc: 5000 }
            ]
        },
        format: {
            xAxis: function(_str){
                return _str.substr(0, 4)+'/'+_str.substr(4,2)+'/'+_str.substr(6,2);
            }
        },
        use: {
            animate: true,
            aCrossLine: true
        }
    };
    var styles = {
        main: {
            graph: {
                color: '#fafafa'
            },
            yAxis: {
                text: {
                    align: 'right'
                }
            },
            series: {
                s1: {
                    area: {
                        normal: {
                            color: 'skyblue', opacity: 0.5,
                            over: {
                                color: 'skyblue', opacity: 1
                            }
                        }
                    },
                    line: {
                        normal: {
                            color: 'blue',
                            over: {
                                color: 'blue'
                            }
                        }
                    }
                }
            }
        }
    };
    var series = {
        "main": {
            "s1": {series: 'column', xaxis: 'Date', yaxis: 'Mprc'}
        }
    };
    var chart = webponent.chart.init($('.chart01'), options, styles, series);
};

</script>