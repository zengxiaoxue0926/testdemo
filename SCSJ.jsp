<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/19
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>生产数据</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
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
        table {
            width: 100%;
            table-layout: fixed;
            border-collapse:collapse;
            /* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
        }
        table tr th, table tr td {
            padding: 0.3rem 0.5rem;
            text-align: center;
            font-size: 3rem;
            height: 7rem;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%--标题栏--%>
<div style="margin: 2rem">
    <span style="font-family: 微软雅黑;font-size: 5.5rem">生产数据</span>
</div>

<%--<div id="main" style="width: 600px;height:400px;"></div>--%>

<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/echarts.min.js"></script>
<script src="https://cdn.w3cbus.com/library/mdui/1.0.2/js/mdui.min.js"></script>

<%--<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        xAxis: {
            data: ['A', 'B', 'C', 'D', 'E']
        },
        yAxis: {},
        series: [
            {
                data: [10, 22, 28, 43, 49],
                type: 'line',
                stack: 'x'
            },
            {
                data: [5, 4, 3, 5, 10],
                type: 'line',
                stack: 'x'
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>--%>
</body>
</html>
