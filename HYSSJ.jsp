<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.math.BigDecimal" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/19
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>化验室数据</title>
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
        .popup-label {
            font-size: 30px;
            font-weight: 400;
            width: 150px;
        }
        .popup-input {
            font-size: 28px;
            width: 340px;
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
    <span style="font-family: 微软雅黑;font-size: 5.5rem">化验室数据</span>
    <a class="button" style="font-size: 4rem;margin-left: 3rem" data-toggle="modal" data-target="#hyssjlrModal">录入</a>
</div>
<div class="mdui-tab mdui-tab-centered" mdui-tab="" style="height: 10%">
    <a href="#hyssj_zy" class="mdui-ripple mdui-tab-active" style="font-size: 3.5rem;margin-right: 10rem">龙亭污水厂</a>
    <a href="#hyssj_yl" class="mdui-ripple" style="font-size: 3.5rem;margin-right: 10rem">云林污水厂</a>
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
    <div style="margin-top: 1rem">
        <table id="hyssj_zy" class="table table-striped">
            <tr style="border: 1px solid #999999;">
                <td>采样时间</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>手工检测出样时间</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>COD</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>氨氮</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>总磷</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>总氮</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>SS</td>
                <td></td>
            </tr>
        </table>
    </div>
    <div style="margin-top: 1rem">
        <table id="hyssj_yl" class="table table-striped">
            <tr style="border: 1px solid #999999;">
                <td>采样时间</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>手工检测出样时间</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>COD</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>氨氮</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>总磷</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>总氮</td>
                <td></td>
            </tr>
            <tr style="border: 1px solid #999999;">
                <td>SS</td>
                <td></td>
            </tr>
        </table>
    </div>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</div>

<%--化验室数据入弹出窗口--%>
<div class="modal fade" id="hyssjlrModal" tabindex="-1" role="dialog" aria-labelledby="title">
    <div class="modal-dialog" role="document" style="width: 70%;position: absolute;left: 15%;top: 20%">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title" id="title" align="center" style="font-size: 42px">化验室数据录入</h1>
            </div>
            <form class="form-inline" role="form" style="margin-top: 10%">
                <div>
                    <input type="button" id="lt" class="btn btn-default" value="龙亭污水厂" style="width: 25%;margin: 0 10% 7% 13%;font-size: 28px">
                    <input type="button" id="yl" class="btn btn-default" value="云林污水厂" style="width: 25%;margin: 0 13% 7% 10%;font-size: 28px">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">采样时间：</label>
                    <input type="date" id="xjr" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">出样时间：</label>
                    <input type="date" id="xjsj" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">COD：</label>
                    <input type="text" id="zt" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">氨氮：</label>
                    <input type="text" id="NH3-N" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">总氮：</label>
                    <input type="text" id="TN" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">总磷：</label>
                    <input type="text" id="TP" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">SS：</label>
                    <input type="text" id="SS" class="popup-input" autocomplete="off" data-items="5" style="display: inline">
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="" style="width: 20%;font-size: 28px">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 20%;font-size: 28px">取消</button>
            </div>
        </div>
    </div>
</div>

<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="https://cdn.w3cbus.com/library/mdui/1.0.2/js/mdui.min.js"></script>
</body>
</html>
