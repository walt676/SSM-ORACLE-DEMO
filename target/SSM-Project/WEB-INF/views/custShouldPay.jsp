<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/29
  Time: 10:38
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
<c:if test="${empty requestScope.shouldPayList}">
    <h4 class="add-user">该用户目前暂无需缴费用单</h4>
</c:if>
<c:if test="${!empty requestScope.shouldPayList}">
    <table class="rwd-table">
        <tr>
            <th>应收费用id</th>
            <th>设备id</th>
            <th>计费日期</th>
            <th>总应收费用(不含违约金)</th>
        </tr>
        <c:forEach items="${requestScope.shouldPayList}" var="s">
            <tr>
                <td>${s.spId }</td>
                <td>${s.deviceId}</td>
                <td>${s.spDate}</td>
                <td>${s.total_fee}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>