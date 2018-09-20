<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/15
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
    <title>主页</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/main.css">
    <link rel="stylesheet" href="/static/css/toastr.min.css">

    <script src="/static/js/jquery-3.2.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/toastr.min.jss"></script>
    <script src="/static/js/tab.js"></script>
</head>
<body>
<a id="addCust" class="add-user" data-toggle="modal" data-target="#editCustDIV"> 添加客户 </a><br>
<c:if test="${empty requestScope.custpagemsg}">
    没有任何客户信息！
</c:if>
<c:if test="${!empty requestScope.custpagemsg}">
    <table class="rwd-table">
        <tr>
            <th>Id</th>
            <th>CustomerName</th>
            <th>Tel</th>
            <th>Address</th>
            <th>Balance</th>
            <th></th>
        </tr>
        <c:forEach items="${requestScope.custpagemsg.lists}" var="c">
            <tr>
                <td>${c.id }</td>
                <td>${c.customerName }</td>
                <td>${c.tel }</td>
                <td>${c.address }</td>
                <td>${c.balance}</td>
                <td>
                    <a class="btn btn-info btn-sm" id="editCustFunc${c.id}" name="bianjiC${c.id}"
                       type="button" data-toggle="modal" data-target="#editCustDIV">编辑</a>
                    <a type="button" id="CustDevice${c.id}" name="CustDevice${c.id}"
                       class="btn btn-success btn-sm" data-toggle="modal" data-target="#custDeviceDIV">设备</a>
                    <a type="button" id="payTable${c.id}" name="payTable${c.id}"
                        class="btn btn-default btn-sm" data-toggle="modal" data-target="#payTableDIV">交费表</a>
                    <a type="button" id="shouldPayTable${c.id}" name="shouldPayTable${c.id}"
                       class="btn btn-default btn-sm" data-toggle="modal" data-target="#shouldPayTableDIV">应缴费用</a>
                    <a type="button" id="deleteCust${c.id}" name="deleteCust${c.id}" href="deleteCust?id=${c.id}"
                       class="btn btn-danger btn-sm">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
    <tr>
        <td class="td2 right">
            <p>
                        <span>
                       <c:if test="${requestScope.custpagemsg.currPage != 1}">
                           <a class="add-user" href="${pageContext.request.contextPath }/customerTable?currentCustomerPage=1">[首页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/customerTable?currentCustomerPage=${requestScope.custpagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
                       </c:if>
                        <span>第${requestScope.custpagemsg.currPage }/ ${requestScope.custpagemsg.totalPage}页</span>&nbsp;&nbsp;
						<span>总记录数：${requestScope.custpagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.custpagemsg.pageSize}</span>&nbsp;&nbsp;
                       <c:if test="${requestScope.custpagemsg.currPage != requestScope.custpagemsg.totalPage}">
                           <a class="add-user" href="${pageContext.request.contextPath }/customerTable?currentCustomerPage=${requestScope.custpagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/customerTable?currentCustomerPage=${requestScope.custpagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
                       </c:if>
                        </span>
            </p>
        </td>
    </tr>
</table>

<div class="modal fade" id="editCustDIV" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabe2">
                    修改客户信息
                </h4>
            </div>
            <div class="modal-body" id="editCustJSP">
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="custDeviceDIV" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title">
                    设备表
                </h4>
            </div>
            <div class="modal-body" id="CustDeviceJSP">
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="payTableDIV" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title">
                    交费表
                </h4>
            </div>
            <div class="modal-body" id="payTableJSP">
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="shouldPayTableDIV" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title">
                    应收费用表
                </h4>
            </div>
            <div class="modal-body" id="shouldPayTableJSP">
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){

        //添加职员
        $("#add").click(function () {
            var url = "add";
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editJsp").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });

        //添加客户
        $("#addCust").click(function () {
            var url = "addCust";
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editCustJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
        //编辑职员
        $("a[id^='bianji']").click(function(){
            var num = $(this).attr('name').substring(6);
            var url = "edit?id="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editJsp").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
        //编辑客户
        $("a[id^='editCustFunc']").click(function(){
            var num = $(this).attr('id').substring(12);
            var url = "editCustomer?id="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editCustJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
        $("a[id^='CustDevice']").click(function(){
            var num = $(this).attr('id').substring(10);
            var url = "custDevice?customerId="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#CustDeviceJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
        $("a[id^='payTable']").click(function(){
            var num = $(this).attr('id').substring(8);
            var url = "payTable?customerId="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#payTableJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
        $("a[id^='shouldPayTable']").click(function(){
            var num = $(this).attr('id').substring(14);
            var url = "custShouldPay?customerId="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#shouldPayTableJSP").html(dates);//要刷新的div
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
