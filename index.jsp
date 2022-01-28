<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/10
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <meta name="viewport" content="user-scalable=no">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
<%--    <link rel="stylesheet" type="text/css" href="css/mdui.css"/>--%>
<%--    <link rel="stylesheet" href="https://cdn.w3cbus.com/library/mdui/1.0.2/css/mdui.min.css"/>--%>
    <script src="${ctx}/js/jquery-3.3.1.min.js"></script>
    <style type="text/css">
        body, html {
            /*background: url(img/bg.jpg) repeat-y;*/
            background-size: 100%;
            height: 100%;
            width: 100%;
            font-family: 微软雅黑;
            color: #0A0A0A;
        }
        span {
            font-size: 3.5rem;
            margin-bottom: 0.5rem;
        }
        li {
            list-style: none;
            cursor: pointer;
        }
        a {
            color: #3fecff;
        }
        a:hover {
            color: #3fecff;
            text-decoration: none;
        }
        .top {
            background: url(img/xssw.jpg) no-repeat;
            width: 100%;
            height: 30%;
            background-size: 100%;
            display: flex;
            /*align-items: center;*/
            justify-content: space-between;
            color: #0A0A0A;
        }
        .topTitle {
            text-align: center;
            font-size: 5rem;
            margin: 0.5rem auto;
            /*font-weight: bold;*/
        }
        .dayTime {
            width: 20rem;
            font-size: 1.6rem;
        }
        .logincenter {
            /*background: url(img/bg1.1.png) no-repeat;*/
            background-size: 100%;
            padding:  0 5rem;
        }
        .btnSty {
            cursor: pointer;
            display: inline-block;
            background-size: 100% 100%;
            width: 45%;
            height: 9rem;
            line-height: 9rem;
            text-align: center;
            font-weight: bold;
        }
        .navul {
            padding-left: 0;
        }
        .navli {
            /*display: inline-block;*/
            float: left;
            width: 32.55rem;
            height: 20rem;
            border: 1px solid #999999;
            margin: auto;

        }
        /*.navli:nth-child(2n+1) {
            border-top: 0;
        }
        .navli:nth-child(2n) {
            border-bottom: 1px solid #999999;
        }*/
    </style>
</head>
<body>
<!--====================标题====================-->
<%--<div class="topTitle">
    <p>锡山水务集团有限公司</p>
</div>--%>
<jsp:include page="header.jsp"></jsp:include>
<%--    <p class="dayTime"></p>--%>
<%--    <p class="topTitle">龙亭污水处理有限公司</p>--%>
<%--    <p style="width: 20rem;text-align: right;font-size: 2.5rem;margin-top: 2rem;margin-right: 1rem">--%>
<%--        <span class="glyphicon glyphicon-off"></span>--%>
<%--        <span style="position: relative; cursor: pointer;" class="Out">退出</span>--%>
<%--    </p>--%>
<!--====================登录中心====================-->
<%--<div class="logincenter">
    <div>
        <p style="height: 7.5rem;line-height: 12rem;margin-left: 1rem;font-weight: bold;display: inline-block;font-size: 3.5rem;">登录中心：<span id="UserName" style="font-size: 3.5rem;">admin</span></p>
&lt;%&ndash;        <p id="ZLRL_Gg" style="display: inline-block;float: right; color: #3fecff;"><img src="img/edit.png" style="position: relative;top: 2.6rem;width: 5.4rem;"></p>&nbsp;&nbsp;&ndash;%&gt;
&lt;%&ndash;        <p id="ZLRL_Gg1" style="display: inline-block;float: right;margin-right:30px; color: #3fecff;position:relative;" class=""><img src="img/email.png" style="position: relative;top: 2rem;width: 7rem;"></p>&ndash;%&gt;
&lt;%&ndash;        <p id="DZB_BTN" style="display: inline-block;float: right;margin-right:30px; color: #3fecff;"><img src="img/ryxx.png" style="position: relative;top: 2rem;width: 7rem;"></p>&ndash;%&gt;
    </div>
    <div style="display: flex;flex-direction: row;padding: 0rem 3rem 2rem;margin: 2.5rem 0 1rem;">
        <div style="width: 30%;text-align: center;padding-top: 1rem;">
            <img src="img/user.jpg" style="width: 200px;height: 200px;border-radius: 50%;" id="MMXG">
        </div>
        <div style="width: 70%;padding: 1rem 3rem;text-align: left;">
            <p style="padding-bottom: 2rem;">职务：<span id="UserJur">班长</span></p>
            <p style="padding-bottom: 2.4rem;">登录时间：<span id="logindate"></span></p>
        </div>
    </div>
</div>--%>
<!--====================导航部分====================-->
<div class="" style="text-align: center">
    <div style="margin-top: 4rem;">
        <ul class="navul">
            <li class="navli" onclick="location.href='GYZL.jsp'">
                <figure>
                    <img src="img/GYZL.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">工艺指令</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='SJGL.jsp'">
                <figure>
                    <img src="img/SJGL.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">数据概览</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='SCSJ.jsp'">
                <figure>
                    <img src="img/SCSJ.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">生产数据</p>
                </figure>
            </li>
        </ul>
    </div>

    <div style="margin-top: 1.6rem;">
        <ul style="padding-left: 0">
            <li class="navli" onclick="location.href='XJJL.jsp'">
                <figure>
                    <img src="img/xjjl.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">巡检记录</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='JJB.jsp'">
                <figure>
                    <img src="img/JJB.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">交接班</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='CJB.jsp'">
                <figure>
                    <img src="img/CJB.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">沉降比</p>
                </figure>
            </li>
        </ul>
    </div>

    <div style="margin-top: 1.6rem;">
        <ul style="padding-left: 0">
            <li class="navli" onclick="location.href='SBZT.jsp'">
                <figure>
                    <img src="img/SBZT.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">设备状态</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='BJJL.jsp'">
                <figure>
                    <img src="img/BJJL.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">报警记录</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='SBBX.jsp'">
                <figure>
                    <img src="img/SBJX.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">设备报修</p>
                </figure>
            </li>
        </ul>
    </div>

    <div style="margin-top: 1.6rem;">
        <ul style="padding-left: 0">
            <li class="navli" onclick="location.href='SPJK.jsp'">
                <figure>
                    <img src="img/SPJK.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">视频监控</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='HYSSJ.jsp'">
                <figure>
                    <img src="img/HYSSJ.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">化验室数据</p>
                </figure>
            </li>
            <li class="navli" onclick="location.href='RYXX.jsp'">
                <figure>
                    <img src="img/User.png" style="width: 120px;height: 120px;margin-top: 1rem"/>
                    <p style="font-size: 3.5rem;margin-top: 1.5rem">人员信息</p>
                </figure>
            </li>
        </ul>
    </div>
</div>
<%--底部导航栏--%>
<%--<jsp:include page="bottom-nav.jsp"></jsp:include>--%>

<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/jquery1.12.min.js"></script>
<%--<script src="js/mdui.js"></script>--%>
<%--<script src="https://cdn.w3cbus.com/library/mdui/1.0.2/js/mdui.min.js"></script>--%>
<%--<script type="text/javascript">
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
</script>--%>
</body>
</html>

