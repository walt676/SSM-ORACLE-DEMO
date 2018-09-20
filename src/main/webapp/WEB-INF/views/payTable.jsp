<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/26
  Time: 20:35
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
<c:if test="${empty requestScope.payList}">
    <h4 class="add-user">该客户目前暂无交费条目</h4>
</c:if>
<c:if test="${!empty requestScope.payList}">
    <table class="rwd-table">
        <tr>
            <th>Pay Id</th>
            <th>Bank Id</th>
            <th>Pay Type</th>
            <th>Pay Date</th>
            <th>应收费用表Id</th>
        <%--<th></th>--%>
        </tr>
        <c:forEach items="${requestScope.payList}" var="p">
            <tr>
                <td>${p.payId }</td>
                <td>${p.bankId }</td>
                <td>${p.pay_type }</td>
                <td>${p.paydate}</td>
                <td>${p.spId}</td>

                <%--<td>--%>
                    <%--<a class="btn btn-info btn-sm" id="editDevice${d.deviceId}" name="editDevice${d.deviceId}"--%>
                       <%--type="button" data-toggle="modal" data-target="#editDeviceDIV">编辑</a>--%>
                    <%----%>
                <%--</td>--%>
            </tr>
        </c:forEach>
    </table>
</c:if>


<%--<div class="modal fade"  id="editDeviceDIV" role="dialog" aria-labelledby="myModalLabe2">--%>
    <%--<div class="modal-dialog">--%>
        <%--<div class="modal-content">--%>
            <%--<div class="modal-header">--%>
                <%--<button type="button" class="close" data-dismiss="modal">×--%>
                <%--</button>--%>
                <%--<h4 class="modal-title" id="myModalLabe2">--%>
                    <%--修改设备信息--%>
                <%--</h4>--%>
            <%--</div>--%>
            <%--<div class="modal-body" id="editDeviceJSP">--%>
            <%--</div>--%>

        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
</body>
</html>