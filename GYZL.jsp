<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/19
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>工艺指令</title>
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
        .textarea_gyzl {
            height: 30%;
            width: 96%;
            border: 1px solid #ccc;
            margin: 1% 2%;
            font-size: 30px;
        }
        .popup-label {
            font-size: 30px;
            font-weight: 400;
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
    <span style="font-family: 微软雅黑;font-size: 5.5rem">工艺指令</span>
</div>
<%--内容--%>
<div>
    <textarea class="textarea_gyzl" placeholder="请填写指令内容"></textarea>
    <div class="form-group" style="margin: 2%">
        <label class="popup-label">附件：</label>
        <input type="file" id="file" class="popup-input" data-items="5" style="display: inline">
        <button class="btn btn-primary" style="width: 13%;height: 3.5%;font-size: 28px;margin-left: 10px" onclick="start_upload(100)">上传</button>
        <br><progress id="uploadfile" value="0" max="100" style="width: 60%;height: 2%;margin-top: 15px"></progress>
    </div>
    <div style="text-align: center">
        <button class="btn btn-primary" style="width: 50%;height: 5%;font-size: 42px">提交</button>
    </div>
</div>
<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script>
    function start_upload(n) {
        if(n==0) {
            alert("上传完成")
        }
        var pg_upload=document.getElementById("uploadfile");
        n=n-1;
        cur_task=100-n;
        pg_upload.value=cur_task;
        setTimeout("start_upload("+n+")",100);
    }
</script>
</body>
</html>
