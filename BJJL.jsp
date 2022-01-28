<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/21
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>报警记录</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap-table.css">

    <style type="text/css">
        body, html {
            height: 100%;
            width: 100%;
            /*background: url("img/bg.jpg");*/
            background-size: 100%;
            font-family: 微软雅黑;
            color: #0A0A0A;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div style="margin: 2rem">
    <span style="font-family: 微软雅黑;font-size: 5.5rem">报警记录</span>
</div>
<%--搜索栏--%>
<div style="margin: 2rem;">
    <form class="form-inline" role="form" id="form_find">
        <div class="form-group">
            <label style="font-family: 微软雅黑;font-size: 2rem">开始时间：</label>
            <input type="date" id="Stime" class="form-control" autocomplete="off" />
        </div>
        <div class="form-group">
            <label style="font-family: 微软雅黑;font-size: 2rem;margin-left: 3rem">结束时间：</label>
            <input type="date" id="Etime" class="form-control" autocomplete="off" />
        </div>
        <div class="form-group">
            <button type="button" class="btn btn-primary" style="margin-left: 0.5rem">查询</button>
        </div>
    </form>
</div>

<%--报警记录表--%>
<div class="table-responsive">
    <table class="table table-bordered" id="table_bjjl" style="font-size: 2rem;"></table>
</div>

<script src="${ctx}/js/jquery1.12.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/bootstrap-table.js"></script>
<script src="${ctx}/js/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">
    // 行号自增
    $(function () {
        function number() {
            for(var i=0;i<$(".Num_sb").length;i++) {
                $(".Num_sb").get(i).innerHTML=i+1;
            }
        }
        number();
    });

    $(function () {
        // 初始化表格
        var bjjlTable=new bjjlTableInit();
        bjjlTable.Init();
    });

    var bjjlTableInit = function () {
        var TableInit = new Object();

        TableInit.Init = function () {
            //获取参数
            var queryUrl = '';
            //销毁原来表格
            $('#table_bjjl').bootstrapTable('destroy');
            //加载新表格
            $('#table_bjjl').bootstrapTable({
                url: queryUrl,                      //请求后台的URL（*）
                method: 'POST',                      //请求方式（*）
                contentType : "application/x-www-form-urlencoded",
                // toolbar: '',              //工具按钮用哪个容器
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）
                sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
                pageSize: 5,                     //每页的记录行数（*）
                pageList: [5, 10, 20, 30],        //可供选择的每页的行数（*）
                search: false,                      //是否显示表格搜索
                strictSearch: true,
                showColumns: false,                  //是否显示所有的列（选择显示的列）
                showRefresh: false,                  //是否显示刷新按钮
                minimumCountColumns: 2,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
//		            height: 400,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
//                 uniqueId: "jcsqdh",                     //每一行的唯一标识，一般为主键列
                showToggle: false,                   //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                  //是否显示父子表
                columns: [
                    { field: 'id', title: '序号', valign: 'middle', align: 'center' },
                    { field: 'sbmc', title: '报警时间', valign: 'middle', align: 'center' },
                    { field: 'sbmc', title: '报警故障', valign: 'middle', align: 'center' },
                    { field: 'sbmc', title: '设备名称', valign: 'middle', align: 'center' },
                    { field: 'sbwz', title: '设备位置', valign: 'middle', align: 'center' },
                    { field: 'yxzt', title: '运行状态', valign: 'middle', align: 'center' },
                ],
            });
        };
        return TableInit;
    };
</script>
</body>
</html>
