<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="/static/css/login.css">
	<title>Login</title>
</head>
<body>
	<%--登录框--%>
	<div class="container">
		<div class="login">
			<h1 class="login-heading">
				<strong>Welcome.</strong> Please login.</h1>
			<form action="login" method="post">
				<input type="text" name="userName" placeholder="Username"  class="input-txt"/>
				<input type="password" name="password" placeholder="Password"  class="input-txt"/>
				<div class="login-footer">
					<%--<a href="#" class="lnk">--%>
						<%--<span class="icon icon--min">ಠ╭╮ಠ</span>--%>
						<%--I've forgotten something--%>
					<%--</a>--%>
						<input type="submit" class="btn btn--right" value="登录"/>
					<%--<button type="submit" class="btn btn--right">登录  </button>--%>
				</div>
			</form>
		</div>
	</div>



</body>
</html>
