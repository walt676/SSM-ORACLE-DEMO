<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/15
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>编辑页面</title>
</head>
<body>
<form:form action="saveCust" method="post" modelAttribute="returnCust">
    <form:hidden path="id"/>
    <div class="form-group">
        <label>用户名</label>
        <form:input path="customerName" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>电话</label>
        <form:input path="tel" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>地址</label>
        <form:input path="address" cssClass="form-control"/>
    </div>

    <div class="modal-footer">
        <input type="submit" class="btn btn-primary" value="提交"/>
    </div>
</form:form>
</body>
</html>