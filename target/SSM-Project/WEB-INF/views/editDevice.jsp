<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/25
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
<form:form action="saveDevice" method="post" modelAttribute="returnDevice">
    <form:hidden path="deviceId"/>

    <div class="form-group">
        <label>客户id</label>
        <form:input path="customerId" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>设备类型</label>
        <form:select path="device_type" cssClass="form-control">
            <form:option value="">请选择设备</form:option>
            <form:option value="01">01 居民用户</form:option>
            <form:option value="02">02 非居民用户</form:option>
        </form:select><br>
    </div>

    <div class="modal-footer">
        <input type="submit" class="btn btn-primary" value="提交"/>
    </div>
</form:form>
</body>
</html>