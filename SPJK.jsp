<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/19
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>视频监控</title>
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
        .video_div {
            border: 1px solid gainsboro;
            width: 100%;
            height: 5%;
        }
        .video_span {
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
    <span style="font-family: 微软雅黑;font-size: 5.5rem">视频监控</span>
</div>

<div class="video_div">
    <span class="video_span">一期1#池</span>
</div>
<div class="video_div">
    <span class="video_span">一期2#池</span>
</div>
<div class="video_div">
    <span class="video_span">一期3#池</span>
</div>
<div class="video_div">
    <span class="video_span">一期4#池</span>
</div><div class="video_div">
    <span class="video_span">二期1#池</span>
</div>
<div class="video_div">
    <span class="video_span">二期2#池</span>
</div><div class="video_div">
    <span class="video_span">二期3#池</span>
</div>
<div class="video_div">
    <span class="video_span">三期1#池</span>
</div>
<div class="video_div">
    <span class="video_span">四期1#池</span>
</div>
<div class="video_div">
    <span class="video_span">中控室</span>
</div>


<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="https://cdn.w3cbus.com/library/mdui/1.0.2/js/mdui.min.js"></script>
</body>
</html>
