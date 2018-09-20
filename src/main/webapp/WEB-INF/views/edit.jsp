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
	<%--欢迎你：${currentUser}--%>
	<%--<hr>--%>
	<form:form action="save" method="post" modelAttribute="returnUser">
		<form:hidden path="id"/>
        <div class="form-group">
            <label>用户名</label>
            <form:input path="username" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>密码</label>
            <form:input path="password" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>邮箱</label>
            <form:input path="email" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>联系电话</label>
            <form:input path="phone" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>职位</label>
            <form:select path="rolename" cssClass="form-control">
            <form:option value="">请选择职位</form:option>
            <form:option value="客户经理">客户经理</form:option>
            <form:option value="高管">高管</form:option>
            <form:option value="销售主管">销售主管</form:option>
            <form:option value="系统管理员">系统管理员</form:option>
        </form:select><br>
        </div>

        <div class="modal-footer">
            <input type="submit" class="btn btn-primary" value="提交"/>
        </div>
	</form:form>
</body>
</html>