<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/19
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>人员信息</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">

    <style type="text/css">
        body, html {
            height: 100%;
            width: 100%;
            /*background: url("img/bg.jpg");*/
            background-size: 100%;
            font-family: 微软雅黑;
            color: #0A0A0A;
        }
        .admin_div {
            border: 1px solid gainsboro;
            width: 100%;
            height: 5%;
        }
        .admin_label, .admin_span {
            margin-left: 2%;
            font-size: 50px;
            font-weight: 400;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%--标题栏--%>
<div style="margin: 2rem">
    <span style="font-family: 微软雅黑;font-size: 5.5rem">人员信息</span>
</div>
<div class="admin_div">
    <label class="admin_label">账号：<span>admin</span></label>
</div>
<div class="admin_div">
    <label class="admin_label">姓名：<span>张某某</span></label>
</div>
<div class="admin_div">
    <label class="admin_label">职位：<span>班长</span></label>
</div>
<div class="admin_div">
    <label class="admin_label">时间：<span id="logindate"></span></label>
</div>
<div style="background-color: #d5d5d5">
    <br>
</div>
<div class="admin_div">
    <span class="admin_span">修改密码</span>
</div>
<div class="admin_div">
    <span class="admin_span">安全退出</span>
</div>

<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script type="text/javascript">
    window.onload=function() {
        window.requestAnimationFrame(getDate)
    }

    function getDate() {
        window.setTimeout(function(){
            window.requestAnimationFrame(getDate)
        },1000/2)
        var date=new Date();
        var year=date.getFullYear()  //获取年
        var month=date.getMonth()+1;  //获取月，从 Date 对象返回月份 (0 ~ 11)，故在此处+1
        // var day=date.getDay()    //获取日，从 Date 对象返回一周中的某一天 (1 ~ 7)
        var days=date.getDate() //获取日期，从 Date 对象返回一个月中的某一天 (1 ~ 31)
        var hour=date.getHours()   //获取小时
        var minute=date.getMinutes()  //获取分钟
        var second=date.getSeconds()   //获取秒

        if(month<10) month="0"+month
        if(days<10) days="0"+days
        if(hour<10) hour="0"+hour
        if(minute<10) minute="0"+minute
        if(second<10) second="0"+second

        // var week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六")
        var Tools=document.getElementById("logindate")
        // var currenttime=year+" 年 "+month+" 月 "+days+" 日 "+week[day]+" "+hour+" : "+minute+" :"+second
        var currenttime=year+" 年 "+month+" 月 "+days+" 日 "+hour+" : "+minute+" :"+second
        Tools.innerHTML=currenttime
    }
</script>
</body>
</html>
