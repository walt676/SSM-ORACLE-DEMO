<%--
  Created by IntelliJ IDEA.
  User: walt676
  Date: 2018/8/28
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
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
<c:if test="${empty requestScope.bglpagemsg}">
    对总账表中暂无信息！
</c:if>
<c:if test="${!empty requestScope.bglpagemsg}">
    <table class="rwd-table">
        <tr>
            <th>对总账表id</th>
            <th>银行id</th>
            <th>对账日期</th>
            <th>银行总笔数</th>
            <th>银行总金额</th>
            <th>企业总笔数</th>
            <th>企业总金额</th>
            <th>对账是否成功</th>
        </tr>
        <c:forEach items="${requestScope.bglpagemsg.lists}" var="b">
            <tr>
                <td>${b.bgl_id }</td>
                <td>${b.bankId }</td>
                <td>${b.checkDate }</td>
                <td>${b.bank_count }</td>
                <td>${b.bank_amount}</td>
                <td>${b.enterprise_count}</td>
                <td>${b.enterprise_amount}</td>
                <c:if test="${b.is_success =='00'}">
                    <td>${b.is_success }: 成功</td>
                </c:if>
                <c:if test="${b.is_success =='01'}">
                    <td>${b.is_success }: 失败</td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</c:if>


<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
    <tr>
        <td class="td2 right">
            <p>
                        <span>
                       <c:if test="${requestScope.bglpagemsg.currPage != 1}">
                           <a class="add-user" href="${pageContext.request.contextPath }/bankGeneralTable?currentPage=1">[首页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/bankGeneralTable?currentPage=${requestScope.bglpagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
                       </c:if>
                        <span>第${requestScope.bglpagemsg.currPage }/ ${requestScope.bglpagemsg.totalPage}页</span>&nbsp;&nbsp;
						<span>总记录数：${requestScope.bglpagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.bglpagemsg.pageSize}</span>&nbsp;&nbsp;
                       <c:if test="${requestScope.bglpagemsg.currPage != requestScope.bglpagemsg.totalPage}">
                           <a class="add-user" href="${pageContext.request.contextPath }/bankGeneralTable?currentPage=${requestScope.bglpagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                           <a class="add-user" href="${pageContext.request.contextPath }/bankGeneralTable?currentPage=${requestScope.bglpagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
                       </c:if>
                        </span>
            </p>
        </td>
    </tr>
</table>


</body>
</html>
