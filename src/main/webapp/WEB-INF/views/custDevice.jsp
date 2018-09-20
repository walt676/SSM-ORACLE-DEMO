<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/26
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>设备表</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/main.css">
    <link rel="stylesheet" href="/static/css/toastr.min.css">

    <script src="/static/js/jquery-3.2.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/toastr.min.jss"></script>
    <script src="/static/js/tab.js"></script>
</head>
<body>
<a id="addDevice" class="add-user" data-toggle="modal" data-target="#editDeviceDIV"> 添加设备 </a><br>
<c:if test="${empty requestScope.deviceList}">
    <h4 class="add-user">该用户目前暂无设备</h4>
</c:if>
<c:if test="${!empty requestScope.deviceList}">
    <table class="rwd-table">
        <tr>
            <th>Device Id</th>
            <th>Device Type</th>
            <th></th>
        </tr>
        <c:forEach items="${requestScope.deviceList}" var="d">
            <tr>
                <td>${d.deviceId }</td>
                <c:if test="${d.type =='01'}">
                    <td>${d.type } 居民用户</td>
                </c:if>
                <c:if test="${d.type =='02'}">
                    <td>${d.type } 非居民用户</td>
                </c:if>

                <td>
                    <a class="btn btn-info btn-sm" id="editDevice${d.deviceId}" name="editDevice${d.deviceId}"
                       type="button" data-toggle="modal" data-target="#editDeviceDIV">编辑</a>
                    <%--<a class="btn btn-info btn-sm" id="editCustFunc${c.id}" name="bianjiC${c.id}"--%>
                       <%--type="button" data-toggle="modal" data-target="#editCustDIV">编辑</a>--%>
                    <%--<a type="button" id="CustDevice${c.id}" name="CustDevice${c.id}" href="CustDevice?id=${c.id}"--%>
                       <%--class="btn btn-success btn-sm">设备</a>--%>
                    <%--<a type="button" id="deleteCust${c.id}" name="deleteCust${c.id}" href="deleteCust?id=${c.id}"--%>
                       <%--class="btn btn-danger btn-sm">删除</a>--%>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<div class="modal fade"  id="editDeviceDIV" role="dialog" aria-labelledby="myModalLabe2">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×
                </button>
                <h4 class="modal-title" id="myModalLabe2">
                    修改设备信息
                </h4>
            </div>
            <div class="modal-body" id="editDeviceJSP">
            </div>

        </div>
    </div>
</div>
<script>
    $(document).ready(function(){

        //添加设备
        $("#addDevice").click(function () {
            var url = "addDevice";
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editDeviceJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });

        //编辑设备
        $("a[id^='editDevice']").click(function(){
            var num = $(this).attr('id').substring(10);
            var url = "editDevice?deviceId="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editDeviceJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        })
    })

</script>
</body>
</html>