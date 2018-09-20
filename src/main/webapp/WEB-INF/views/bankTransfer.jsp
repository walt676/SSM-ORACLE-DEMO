<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/29
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<c:if test="${empty requestScope.btpagemsg}">
    银行转账表中暂无信息！
</c:if>
<c:if test="${!empty requestScope.btpagemsg}">
    <table class="rwd-table">
        <tr>
            <th>银行流水号</th>
            <th>银行id</th>
            <th>客户id</th>
            <th>转账日期</th>
            <th>转账金额</th>
        </tr>
        <c:forEach items="${requestScope.btpagemsg.lists}" var="b">
            <tr>
                <td>${b.bt_id }</td>
                <td>${b.bankId }</td>
                <td>${b.customerId }</td>
                <td>${b.transfer_date }</td>
                <td>${b.payMoney}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
    <tr>
        <td class="td2 right">
            <p>
                        <span>
                       <c:if test="${requestScope.btpagemsg.currPage != 1}">
                           <a class="add-user" href="${pageContext.request.contextPath }/bankTransfer?currentPage=1">[首页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/bankTransfer?currentPage=${requestScope.btpagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
                       </c:if>
                        <span>第${requestScope.btpagemsg.currPage }/ ${requestScope.btpagemsg.totalPage}页</span>&nbsp;&nbsp;
						<span>总记录数：${requestScope.btpagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.btpagemsg.pageSize}</span>&nbsp;&nbsp;
                       <c:if test="${requestScope.btpagemsg.currPage != requestScope.btpagemsg.totalPage}">
                           <a class="add-user" href="${pageContext.request.contextPath }/bankTransfer?currentPage=${requestScope.btpagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/bankTransfer?currentPage=${requestScope.btpagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
                       </c:if>
                        </span>
            </p>
        </td>
    </tr>
</table>
</body>
</html>
