<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021/12/31
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>数据概览</title>
    <meta name="viewport" content="user-scalable=no">
    <meta http-equiv="refresh" content="300">
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
        /*table tr:nth-child(even) {
            !*偶数行*!
            background-color: #E3F2FD;
        }*/
        /*table tr:nth-child(odd) {
          !*奇数行*!
          background-color: aliceblue;
        }*/
        /*table thead tr:nth-child(1){
            !*表头*!
            background-color: lightblue;
        }*/
        /*table tr:nth-child(1){
          background-color: cadetblue;
        }*/
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%--标题栏--%>
<div style="margin: 2rem">
    <span style="font-family: 微软雅黑;font-size: 5.5rem">数据概览</span>
</div>
<div class="mdui-tab mdui-tab-centered" mdui-tab="" style="height: 10%">
    <a href="#scsj" class="mdui-ripple mdui-tab-active" style="font-size: 3.5rem;margin-right: 10rem">生产数据</a>
    <a href="#jssz" class="mdui-ripple" style="font-size: 3.5rem;margin-right: 10rem">进水水质</a>
    <a href="#cssz" class="mdui-ripple" style="font-size: 3.5rem;">出水水质</a>
</div>
<div>
    <%
        //          String DBDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String DBUrl = "jdbc:sqlserver://localhost:1433;DataBaseName=LTSJK";
//          String DBUrl =  "jdbc:sqlserver://127.0.0.1:1433;DataBaseName=LTSJK";
        Connection conn;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//加载驱动程序
//            conn = DriverManager.getConnection(DBUrl, "sa", "sa_123");//连接数据库
            conn = DriverManager.getConnection(DBUrl, "sa", "123");//连接数据库
            Statement stmt = conn.createStatement();
            String sql = "select * from Table_LTSJK where id = (select max(id) from Table_LTSJK)";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
    %>
    <div id="scsj" style="margin-top: 1rem">
        <table class="table table-striped">
            <tr style="border: 1px solid #999999;">
                <td colspan="2">生产数据概况</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>新一期1#溶解氧</td>
                <td><%=new BigDecimal(rs.getFloat("a16")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>新一期2#溶解氧</td>
                <td><%=new BigDecimal(rs.getFloat("a25")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>二期1#溶解氧</td>
                <td>0.00 mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>二期2#溶解氧</td>
                <td>0.00 mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>二期二沉池浊度</td>
                <td>0.00 mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>三期1#溶解氧</td>
                <td><%=new BigDecimal(rs.getFloat("a38")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>三期2#溶解氧</td>
                <td><%=new BigDecimal(rs.getFloat("a39")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>四期溶解氧</td>
                <td><%=new BigDecimal(rs.getFloat("a47")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
        </table>
    </div>
    <div id="jssz" style="margin-top: 1rem">
        <table class="table table-striped">
            <tr style="border: 1px solid #999999;">
                <td colspan="2">进水水质概况</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>进水PH</td>
                <td>0.00</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>进水COD</td>
                <td><%=new BigDecimal(rs.getFloat("a2")).setScale(2, BigDecimal.ROUND_HALF_UP).intValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>进水氨氮</td>
                <td><%=new BigDecimal(rs.getFloat("a3")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>进水总磷</td>
                <td><%=new BigDecimal(rs.getFloat("a4")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>进水总氮</td>
                <td><%=new BigDecimal(rs.getFloat("a5")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
        </table>
        <div style="width: 100%;height: 5%;padding: 1%;font-size: 42px">进水数据可视图</div>
        <div style="width: 100%;height: 25%;">
            <div style="width: 50%;height: 100%;float: left">
                <div style="width: 100%;height: 50%">
                    <div id="COD_in" style="width: 100%;height: 100%;position: relative"></div>
                </div>
                <div style="width: 100%;height: 50%">
                    <div id="NH3N_in" style="width: 100%;height: 100%;position: relative"></div>
                </div>
            </div>
            <div style="width: 50%;height: 100%;overflow: hidden">
                <div style="width: 100%;height: 50%">
                    <div id="TP_in" style="width: 100%;height: 100%;position: relative"></div>
                </div>
                <div style="width: 100%;height: 50%">
                    <div id="TN_in" style="width: 100%;height: 100%;position: relative"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="cssz" style="margin-top: 1rem">
        <table class="table table-striped">
            <tr style="border: 1px solid #999999;">
                <td colspan="2">出水水质概况</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>出水COD</td>
                <td><%=new BigDecimal(rs.getFloat("a72")).setScale(2, BigDecimal.ROUND_HALF_UP).intValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>出水氨氮</td>
                <td><%=new BigDecimal(rs.getFloat("a73")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>出水总磷</td>
                <td><%=new BigDecimal(rs.getFloat("a74")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>出水总氮</td>
                <td><%=new BigDecimal(rs.getFloat("a75")).setScale(2, BigDecimal.ROUND_HALF_UP).floatValue()%> mg/L</td>
            </tr>
        </table>
        <div style="width: 100%;height: 5%;padding: 1%;font-size: 42px">出水数据可视图</div>
        <div style="width: 100%;height: 25%;">
            <div style="width: 50%;height: 100%;float: left">
                <div style="width: 100%;height: 50%">
                    <div id="COD_out" style="width: 100%;height: 100%;position: relative"></div>
                </div>
                <div style="width: 100%;height: 50%">
                    <div id="NH3N_out" style="width: 100%;height: 100%;position: relative"></div>
                </div>
            </div>
            <div style="width: 50%;height: 100%;overflow: hidden">
                <div style="width: 100%;height: 50%">
                    <div id="TP_out" style="width: 100%;height: 100%;position: relative"></div>
                </div>
                <div style="width: 100%;height: 50%">
                    <div id="TN_out" style="width: 100%;height: 100%;position: relative"></div>
                </div>
            </div>
        </div>
    </div>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</div>

<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/echarts.min.js"></script>
<script src="https://cdn.w3cbus.com/library/mdui/1.0.2/js/mdui.min.js"></script>
<script type="text/javascript">
    var value = 30;//当前进度
    var maxValue = 100;//进度条最大值
    var pipe_COD_in = echarts.init(document.getElementById('COD_in'));
    var pipe_NH3N_in = echarts.init(document.getElementById('NH3N_in'));
    var pipe_TP_in = echarts.init(document.getElementById('TP_in'));
    var pipe_TN_in = echarts.init(document.getElementById('TN_in'));
    var pipe_COD_out = echarts.init(document.getElementById('COD_out'));
    var pipe_NH3N_out = echarts.init(document.getElementById('NH3N_out'));
    var pipe_TP_out = echarts.init(document.getElementById('TP_out'));
    var pipe_TN_out = echarts.init(document.getElementById('TN_out'));
    var option = {
        title: {
            text: '去除率',
            left: 'center',
            top: 'center',
            textStyle: {
                fontSize: 32,
                fontWeight: 400,
            }
        },
        tooltip: {
            show: true,
            triggerOn: 'mousemove',
        },
        series: [{
            type: 'pie',
            radius: ['80%', '55%'],//['外圆大小', '内圆大小']
            center: ['50%', '50%'],//圆心位置['左右'， '上下']
            //取消显示饼图自带数据线条
            labelLine: {
                normal: {
                    show: false
                }
            },
            data: [
                //value当前进度 + 颜色
                {
                    value: value,
                    // name: 'TN',
                    itemStyle: {
                        normal: {
                            color: '#73DEB3'
                        }
                    }
                },
                //(maxValue进度条最大值 - value当前进度) + 颜色
                {
                    value: maxValue - value,
                    // name: '出水TN',
                    itemStyle: {
                        normal: {
                            color: '#73A0FA'
                        }
                    }
                }
            ]
        }]
    };
    pipe_COD_in.setOption(option);
    pipe_NH3N_in.setOption(option);
    pipe_TP_in.setOption(option);
    pipe_TN_in.setOption(option);
    pipe_COD_out.setOption(option);
    pipe_NH3N_out.setOption(option);
    pipe_TP_out.setOption(option);
    pipe_TN_out.setOption(option);
</script>
</body>
</html>
