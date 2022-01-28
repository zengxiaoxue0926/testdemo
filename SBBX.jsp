<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022/1/17
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>设备报修</title>
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
    <span style="font-family: 微软雅黑;font-size: 5.5rem">设备报修</span>
    <a class="button" style="font-size: 4rem;margin-left: 3rem" data-toggle="modal" data-target="#sbbxlrModal">录入</a>
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

<%--设备状态表--%>
<div class="table-responsive">
    <table class="table table-bordered" id="table_sbbx" style="font-size: 2rem"></table>
    <%--<table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th style="text-align: center">序号</th>
            <th style="text-align: center">巡检时间</th>
            <th style="text-align: center">巡检人</th>
            <th style="text-align: center">附件</th>
            <th style="text-align: center">备注</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td style="text-align: center"><span class="Num_sb"></span></td>
            <td style="text-align: center">2022/01/17</td>
            <td style="text-align: center">张XX</td>
            <td style="text-align: center">附件</td>
            <td style="text-align: center">sfs</td>
        </tr>
        </tbody>
    </table>--%>
</div>
<%--设备报修录入弹出窗口--%>
<div class="modal fade" id="sbbxlrModal" tabindex="-1" role="dialog" aria-labelledby="title">
    <div class="modal-dialog" role="document" style="width: 70%;position: absolute;left: 15%;top: 15%">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title" id="title" align="center" style="font-size: 42px">设备报修录入</h1>
            </div>
            <form class="form-inline" role="form" style="margin-top: 10%">
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">设备名称：</label>
                    <input type="text" id="sbmc" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">设备型号：</label>
                    <input type="text" id="sbxh" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">设备位置：</label>
                    <input type="text" id="sbwz" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">故障描述：</label>
                    <input type="text" id="gzms" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">故障时间：</label>
                    <input type="date" id="gzsj" class="popup-input" autocomplete="off" data-items="5" style="width: 340px">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">报&nbsp;&nbsp;修&nbsp;&nbsp;人：</label>
                    <input type="text" id="xjr" class="popup-input" autocomplete="off" data-items="5">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">报修时间：</label>
                    <input type="date" id="xjsj" class="popup-input" autocomplete="off" data-items="5" style="width: 340px">
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">维修单位：</label>
                    <select class="popup-input" autocomplete="off" data-items="5" style="width: 340px">
                        <option style="font-size: 8px;">龙亭生产</option>
                    </select>
                </div>
                <div class="form-group" style="margin-left: 13%;margin-bottom: 7%">
                    <label class="popup-label">附&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;件：</label>
                    <input type="file" id="file" class="popup-input" autocomplete="off" data-items="5" style="display: inline">
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
<script src="${ctx}/js/bootstrap-table.js"></script>
<script src="${ctx}/js/bootstrap-table-zh-CN.js"></script>
<script src="https://cdn.w3cbus.com/library/mdui/1.0.2/js/mdui.min.js"></script>
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
        var sbbxTable=new sbbxTableInit();
        sbbxTable.Init();
    });

    var sbbxTableInit = function () {
        var TableInit = new Object();

        TableInit.Init = function () {
            //获取参数
            var queryUrl = '${ctx}/scada/getGridData_sbbx.do';
            //销毁原来表格
            $('#table_sbbx').bootstrapTable('destroy');
            //加载新表格
            $('#table_sbbx').bootstrapTable({
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
                    { field: 'sbmc', title: '设备名称', valign: 'middle', align: 'center' },
                    { field: 'gzsj', title: '故障时间', valign: 'middle', align: 'center' },
                    { field: 'clff', title: '处理方法', valign: 'middle', align: 'center' },
                    { field: 'clr', title: '处理人', valign: 'middle', align: 'center' },
                    { field: 'clsj', title: '处理时间', valign: 'middle', align: 'center' },
                ],
            });
        };
        return TableInit;
    };
</script>
</body>
</html>
