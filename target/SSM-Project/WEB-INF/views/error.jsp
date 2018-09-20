<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/static/css/error.css">
<title>Insert title here</title>
</head>
<body>
<%--<h1>401 Error Page </h1>--%>
<p class="zoom-area"><b>Payment System</b>	Login failed, account or password error. </p>
<section class="error-container">
	<span>4</span>
	<span><span class="screen-reader-text">0</span></span>
	<span>1</span>
</section>
<div class="link-container">
	<a target="_blank" href="${pageContext.request.contextPath }/index.jsp" class="more-link">Login Again</a>
</div>
</body>
</html>