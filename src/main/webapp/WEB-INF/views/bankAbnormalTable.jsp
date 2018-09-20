<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/29
  Time: 9:43
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
<c:if test="${empty requestScope.balpagemsg}">
    对细账表中暂无信息！
</c:if>
<c:if test="${!empty requestScope.balpagemsg}">
    <table class="rwd-table">
        <tr>
            <th>对细账表id</th>
            <th>银行id</th>
            <th>银行流水号</th>
            <th>客户id</th>
            <th>对账日期</th>
            <th>银行总金额</th>
            <th>企业总金额</th>
            <th>错误原因</th>
        </tr>
        <c:forEach items="${requestScope.balpagemsg.lists}" var="b">
            <tr>
                <td>${b.bal_id }</td>
                <td>${b.bankId }</td>
                <td>${b.bt_id }</td>
                <td>${b.customerId }</td>
                <td>${b.ledger_date}</td>
                <td>${b.bank_amount}</td>
                <td>${b.enterprise_amount}</td>
                <td>${b.error_reason}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
    <tr>
        <td class="td2 right">
            <p>
                        <span>
                       <c:if test="${requestScope.balpagemsg.currPage != 1}">
                           <a class="add-user" href="${pageContext.request.contextPath }/bankAbnormalTable?currentPage=1">[首页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/bankAbnormalTable?currentPage=${requestScope.balpagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
                       </c:if>
                        <span>第${requestScope.balpagemsg.currPage }/ ${requestScope.balpagemsg.totalPage}页</span>&nbsp;&nbsp;
						<span>总记录数：${requestScope.balpagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.balpagemsg.pageSize}</span>&nbsp;&nbsp;
                       <c:if test="${requestScope.balpagemsg.currPage != requestScope.balpagemsg.totalPage}">
                           <a class="add-user" href="${pageContext.request.contextPath }/bankAbnormalTable?currentPage=${requestScope.balpagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/bankAbnormalTable?currentPage=${requestScope.balpagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
                       </c:if>
                        </span>
            </p>
        </td>
    </tr>
</table>

</body>
</html>