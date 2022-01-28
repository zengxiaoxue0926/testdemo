<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/17
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>沉降比</title>
    <meta name="viewport" content="user-scalable=no">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap-table.css">
    <link rel="stylesheet" href="https://cdn.w3cbus.com/library/mdui/1.0.2/css/mdui.min.css"/>
    <style type="text/css">
        body, html {
            height: 100%;
            width: 100%;
            /*background: url("img/bg.jpg");*/
            background-size: 100%;
            font-family: 微软雅黑;
            color: #0A0A0A;
        }
        .popup-label {
            font-size: 30px;
            font-weight: 400;
        }
        .popup-input {
            font-size: 28px;
            width: 240px;
            height: 60px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%--标题栏--%>
<div style="margin: 2rem">
    <span style="font-family: 微软雅黑;font-size: 5.5rem">沉降比</span>
    <a class="button" style="font-size: 4rem;margin-left: 3rem" data-toggle="modal" data-target="#cjblrModal">录入</a>
</div>
<%--搜索栏--%>
<div style="margin: 2rem;">
    <form class="form-inline" role="form">
        <div class="form-group">
            <label style="font-family: 微软雅黑;font-size: 2rem">开始时间：</label>
            <input type="date" id="Stime" class="form-control" autocomplete="off" />
        </div>
        <div class="form-group">
            <label style="font-family: 微软雅黑;font-size: 2rem;margin-left: 3rem">结束时间：</label>
            <input type="date" id="Etime" class="form-control" autocomplete="off" />
        </div>
        <div class="form-group">
            <select class="form-control" style="margin-left: 3rem">
                <option style="font-family: 微软雅黑;font-size: 0.5rem">一期</option>
                <option style="font-family: 微软雅黑;font-size: 0.5rem">二期</option>
                <option style="font-family: 微软雅黑;font-size: 0.5rem">三四期</option>
            </select>
        </div>
        <div class="form-group">
            <button type="button" class="btn btn-primary" style="margin-left: 0.5rem">查询</button>
        </div>
    </form>
</div>
<%--沉降比记录表--%>
<div class="table-responsive">
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th style="text-align: center;font-size: 2rem"></th>
            <th style="text-align: center;font-size: 2rem">本次沉降比</th>
            <th style="text-align: center;font-size: 2rem">上次沉降比</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td style="text-align: center;font-size: 2rem">沉降比1</td>
            <td style="text-align: center;font-size: 2rem"></td>
            <td style="text-align: center;font-size: 2rem"></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 2rem">沉降比2</td>
            <td style="text-align: center;font-size: 2rem"></td>
            <td style="text-align: center;font-size: 2rem"></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 2rem">沉降比3</td>
            <td style="text-align: center;font-size: 2rem"></td>
            <td style="text-align: center;font-size: 2rem"></td>
        </tr>
        <tr>
            <td style="text-align: center;font-size: 2rem">沉降比4</td>
            <td style="text-align: center;font-size: 2rem"></td>
            <td style="text-align: center;font-size: 2rem"></td>
        </tr>
        </tbody>
    </table>
</div>
<%--沉降比曲线图--%>
<div id="cjb" style="width: 100%;height: 45%;padding: 3%"></div>
<%--巡检录入弹出窗口--%>
<div class="modal fade" id="cjblrModal" tabindex="-1" role="dialog" aria-labelledby="title">
    <div class="modal-dialog" role="document" style="width:70%;height: 30%;position: absolute;left: 15%;top: 30%">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title" id="title" align="center" style="font-size: 42px">沉降比录入</h1>
            </div>
            <div style="margin: 5% 13%">
                <ul class="nav nav-pills nav-justified" style="font-size: 28px">
                    <li class="active"><a href="#xinyiqi" data-toggle="tab">新一期</a></li>
                    <li><a href="#erqi" data-toggle="tab">二期</a></li>
                    <li><a href="#sanqi" data-toggle="tab">三期</a></li>
                    <li><a href="#siqi" data-toggle="tab">四期</a></li>
                </ul>
            </div>
            <div class="tab-content">
                <div id="xinyiqi" class="container tab-pane active">
                    <div class="form-group" style="margin: 0 10% 7%">
                        <label class="popup-label" style="width: 280px;">新一期1#池沉降比：</label>
                        <input type="text" id="xyq_1_cjb" class="popup-input" autocomplete="off" data-items="5">
                    </div>
                    <div class="form-group" style="margin: 0 10% 7%">
                        <label class="popup-label" style="width: 280px;">新一期2#池沉降比：</label>
                        <input type="text" id="xyq_2_cjb" class="popup-input" autocomplete="off" data-items="5">
                    </div>
                </div>
                <div id="erqi" class="container tab-pane">
                    <div class="form-group" style="margin: 0 12% 7%">
                        <label class="popup-label" style="width: 250px;">二期1#池沉降比：</label>
                        <input type="text" id="eq_1_cjb" class="popup-input" autocomplete="off" data-items="5">
                    </div>
                    <div class="form-group" style="margin: 0 12% 7%">
                        <label class="popup-label" style="width: 250px;">二期2#池沉降比：</label>
                        <input type="text" id="eq_2_cjb" class="popup-input" autocomplete="off" data-items="5">
                    </div>
                </div>
                <div  id="sanqi" class="container tab-pane">
                    <div class="form-group" style="margin: 0 17% 7%">
                        <label class="popup-label" style="width: 180px;">三期沉降比：</label>
                        <input type="text" id="sq_cjb" class="popup-input" autocomplete="off" data-items="5">
                    </div>
                </div>
                <div id="siqi" class="container tab-pane">
                    <div class="form-group" style="margin: 0 17% 7%">
                        <label class="popup-label" style="width: 180px;">四期沉降比：</label>
                        <input type="text" id="siq_cjb" class="popup-input" autocomplete="off" data-items="5">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="" style="width: 20%;font-size: 28px">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 20%;font-size: 28px">取消</button>
            </div>
        </div>
    </div>
</div>

<%--底部导航栏--%>
<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/bootstrap-table.js"></script>
<script src="${ctx}/js/bootstrap-table-zh-CN.js"></script>
<script src="${ctx}/js/echarts.min.js"></script>
<script src="https://cdn.w3cbus.com/library/mdui/1.0.2/js/mdui.min.js"></script>
<script type="text/javascript">
    // 初始化echarts实例
    var myChart = echarts.init(document.getElementById('cjb'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '沉降比趋势',
            textStyle: {
                fontSize: 24,
                fontWeight: 'bolder',
                color: '#333'          // 主标题文字颜色
            },
        },
        xAxis: {
            type: 'category',
            data: ['5', '10', '15', '20', '25', '30'],
            axisLabel: {
                inside: false,
                textStyle: {
                    fontSize: '28',
                    itemSize: ''
                }
            },
            axisTick: {
                alignWithLabel: true,
                inside: true
            }
        },
        yAxis: {
            type: 'value',
            axisLabel: {
                inside: false,
                textStyle: {
                    fontSize: '28',
                    itemSize: ''
                }
            },
        },
        series: [
            {
                name: '沉降比',
                data: [40, 19, 34, 56, 43, 37],
                type: 'line',
                lineStyle: {
                    normal: {
                        color: 'red',
                        width: 4,
                        type: 'solid'
                    }
                },
                label: {
                    show: true,
                    position: 'bottom',
                    textStyle: {
                        fontSize: 28,
                        color: 'black',
                    }
                }
            },
        ]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>

