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
	<script src="/static/js/toastr.min.js"></script>
	<script src="/static/js/tab.js"></script>


</head>
<body>
<h1>WELCOME,  ${currentUser}	</h1>

<div class="col-md-2">
	<div class='vertical-menu-wrapper'>
		<ul class="vertical-menu ul--reset" id="myTab">
			<li id="TABuser" class="vertical-menu-item is-active active">
				<a class="link--inverse-menu" data-vertical="1" href="#user" data-toggle="tab">Staff User</a>
			</li>
			<li id="TABcust" class="vertical-menu-item">
				<a class="link--inverse-menu" data-vertical="2" href="#client" data-toggle="tab">Paid Customer</a>
			</li>
			<li class="vertical-menu-item">
				<a class="link--inverse-menu" data-vertical="3" href="#BGL" data-toggle="tab">Bank General Ledger</a>
			</li>
			<li class="vertical-menu-item">
				<a class="link--inverse-menu" data-vertical="4" href="#BAL" data-toggle="tab">Bank Abnormal Ledger</a>
			</li>
			<li class="vertical-menu-item">
				<a class="link--inverse-menu" data-vertical="5" href="#banktransfer" data-toggle="tab">Bank Transfer</a>
			</li>
			<li class="vertical-menu-item">
				<a class="link--inverse-menu" data-vertical="6" href="#SP2" data-toggle="tab">Stored Procedure</a>
			</li>
		</ul>
		<i class='active-marker'></i>
	</div>
</div>
<div class="col-md-10 tab-content">

	<div class="tab-pane fade in active" id="user">
		<a id="add" class="add-user" data-toggle="modal" data-target="#myModal"> 添加职员 </a><br>
		<c:if test="${empty requestScope.pagemsg}">
			没有任何用户信息！
		</c:if>
		<c:if test="${!empty requestScope.pagemsg}">
			<table class="rwd-table">
				<tr>
					<th>Id</th>
					<th>UserName</th>
					<th>Password</th>
					<th>Email</th>
					<th>Tel</th>
					<th>Position</th>
					<th></th>
				</tr>
				<c:forEach items="${requestScope.pagemsg.lists}" var="u">
					<tr>
						<td>${u.id }</td>
						<td>${u.username }</td>
						<td>${u.password }</td>
						<td>${u.email }</td>
						<td>${u.phone }</td>
						<td>${u.rolename }</td>
						<td>
							<a class="btn btn-info btn-sm" id="bianji${u.id}" name="bianji${u.id}"
							   type="button" data-toggle="modal" data-target="#myModal">编辑</a>
								<%--<button class="btn btn-info btn-sm" id="bianji${u.id}" name="bianji${u.id}" type="button">编辑</button>--%>

								<a type="button" id="deleteUser${u.id}" name="deleteUser${u.id}" href="delete?id=${u.id}"
								   class="btn btn-danger btn-sm">删除</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>


		<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
			<tr>
				<td class="td2 right">
					<p>
                        <span>
                       <c:if test="${requestScope.pagemsg.currPage != 1}">
                           <a name="custDo" class="add-user" href="${pageContext.request.contextPath }/main?currentPage=1">[首页]</a>&nbsp;&nbsp;
                           <a name="custDo" class="add-user" href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
                       </c:if>
                        <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
						<span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
                       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
                           <a name="custDo" class="add-user" href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                           <a name="custDo" class="add-user" href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
                       </c:if>
                        </span>
					</p>
				</td>
			</tr>
		</table>
	</div>


	<div class="tab-pane fade" id="client">
		<!--客户列表-->
		<iframe src="customerTable" frameborder="0" width="100%" height="600"></iframe>
	</div>

	<div class="tab-pane fade" id="BGL">
		<!--银行对账列表-->
		<iframe src="bankGeneralTable" frameborder="0" width="100%" height="600"></iframe>
	</div>

	<div class="tab-pane fade" id="BAL">
		<!--对细账列表-->
		<iframe src="bankAbnormalTable" frameborder="0" width="100%" height="600"></iframe>
	</div>

	<div class="tab-pane fade" id="banktransfer">
		<!--对细账列表-->
		<iframe src="bankTransfer" frameborder="0" width="100%" height="600"></iframe>
	</div>

	<div class="tab-pane fade" id="SP2">
		<ul class="nav nav-tabs">

			<li class="dropdown">
				<a href="#" id="myTabDrop1" class="dropdown-toggle add-user"
				   data-toggle="dropdown">Stored Procedure <b class="caret"></b>
				</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
					<li><a href="#procedure1" tabindex="-1" data-toggle="tab">
						Stored Procedure 1</a>
					</li>
					<li><a href="#procedure2" tabindex="-1" data-toggle="tab">
						Stored Procedure 2</a>
					</li>
					<li><a href="#procedure3" tabindex="-1" data-toggle="tab">
						Stored Procedure 3</a>
					</li>
					<li><a href="#procedure45" tabindex="-1" data-toggle="tab">
						Stored Procedure 4&5</a>
					</li>
				</ul>
			</li>
		</ul>


		<div class="tab-content" style="padding-top: 20px">
			<!--存储过程1 查询-->
			<div class="tab-pane fade" id="procedure1">
				<div class="col-md-5">
					<h4>存储过程1 查询</h4><br>
					<div class="form-group">
						<label>客户id</label>
						<input type="number" id="SP1cid" CLASS="form-control">
					</div>
					<br>
					<button id="SP1BUTTON" class="btn btn-sm btn-procedure"
							data-toggle="modal" data-target="#SP1DIV">查询</button>
				</div>
			</div>
			<!--存储过程2-->
			<div class="tab-pane fade" id="procedure2">
				<div class="col-md-5">
					<h4>存储过程2 缴费</h4><br>
					<div class="form-group">
						<label>应收费用表id</label>
						<input type="number" id="SP2spid" CLASS="form-control">
					</div>
					<div class="form-group">
						<label>交费金额</label>
						<input type="number" id="SP2paymoney" CLASS="form-control">
					</div>
					<div class="form-group">
						<label>银行编号</label>
						<input type="number" id="SP2bankid" class="form-control">
					</div>
					<br>
					<button id="SP2BUTTON" class="btn btn-sm btn-procedure"
							data-toggle="modal" data-target="#SP2DIV">缴费</button>
				</div>
			</div>

			<!--存储过程3-->
			<div class="tab-pane fade" id="procedure3">
				<div class="col-md-5">
					<h4>存储过程3 冲正</h4><br>
					<div class="form-group">
						<label>应收费用表id</label>
						<input type="number" id="SP3spid" CLASS="form-control">
					</div>
					<button id="SP3BUTTON" class="add-user btn btn-sm"
							data-toggle="modal" data-target="#SP3DIV">冲正</button>
				</div>
			</div>

			<!--存储过程4&5-->
			<div class="tab-pane fade" id="procedure45">
				<div class="col-md-5">
					<h4>存储过程4&5: 对总账&对细账</h4><br>
					<div class="form-group">
						<label>银行id</label>
						<input type="number" id="SP4bankid" CLASS="form-control">
					</div>
					<div class="form-group">
						<label>银行方交易笔数</label>
						<input type="number" id="SP4bankCount" CLASS="form-control">
					</div>
					<div class="form-group">
						<label>银行方交易总金额</label>
						<input type="number" id="SP4bankAmount" CLASS="form-control">
					</div>
					<div class="form-group">
						<label>交易日期</label>
						<input type="number" id="SP4date" CLASS="form-control">
					</div>
					<button id="SP4BUTTON" class="add-user btn btn-sm"
							data-toggle="modal" data-target="#SP4DIV">对账</button>
				</div>
			</div>
		</div>
	</div>
</div>

<%--修改职员弹框--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    修改职员用户
                </h4>
            </div>
            <div class="modal-body" id="editJsp">
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="SP1DIV" tabindex="-1" role="dialog" aria-labelledby="myModalLabe4" aria-hidden="true" >
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabe4">
					存储过程2 操作结果
				</h4>
			</div>
			<div class="modal-body" id="SP1JSP">

			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="SP2DIV" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabe2">
                    存储过程2 操作结果
                </h4>
            </div>
            <div class="modal-body" id="SP2JSP">

            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="SP3DIV" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" >×
				</button>
				<h4 class="modal-title">
					存储过程3 操作结果
				</h4>
			</div>
			<div class="modal-body" id="SP3JSP">

			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="SP4DIV" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" >×
				</button>
				<h4 class="modal-title">
					存储过程4&5 操作结果
				</h4>
			</div>
			<div class="modal-body" id="SP4JSP">

			</div>
		</div>
	</div>
</div>
<%--修改客户弹框--%>
<%--<div class="modal fade" id="editCustDIV" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2" aria-hidden="true">--%>
<%--<div class="modal-dialog">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×--%>
<%--</button>--%>
<%--<h4 class="modal-title" id="myModalLabe2">--%>
<%--修改客户信息--%>
<%--</h4>--%>
<%--</div>--%>
<%--<div class="modal-body" id="editCustJSP">--%>
<%--</div>--%>

<%--</div>--%>
<%--</div>--%>
<%--</div>--%>

<script src="/static/js/tab.js"></script>
<script type="text/javascript">
    function iframeAutoHeight(){
        var iframe=document.getElementById("iframeCustomer");
        if(navigator.userAgent.indexOf("MSIE")>0||navigator.userAgent.indexOf("rv:11")>0||navigator.userAgent.indexOf("Firefox")>0){
            iframe.height=iframe.contentWindow.document.body.scrollHeight;
        }else{
            iframe.height=iframe.contentWindow.document.documentElement.scrollHeight;
        }
    }
    $(document).ready(function(){

		//添加职员
        $("#add").click(function () {
            var url = "add";
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editJsp").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });

        //添加客户
        $("#addCust").click(function () {
            var url = "addCust";
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editCustJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
        //编辑职员
        $("a[id^='bianji']").click(function(){
            var num = $(this).attr('name').substring(6);
            var url = "edit?id="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editJsp").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
		//编辑客户
        $("a[id^='editCustFunc']").click(function(){
            var num = $(this).attr('id').substring(12);
            var url = "editCustomer?id="+num;
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#editCustJSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });
        });
        $("#SP2BUTTON").click(function () {
            var url = ("storedProcedure?spId="+$("#SP2spid").val()+"&paymoney="+
                $("#SP2paymoney").val()+"&bankId="+$("#SP2bankid").val());
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#SP2JSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });

        });
        $("#SP3BUTTON").click(function () {
            var url = ("SP3?spId="+$("#SP3spid").val());
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#SP3JSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });

        });
        $("#SP4BUTTON").click(function () {
            var url = ("SP4?bankId="+$("#SP4bankid").val()+"&total_deal_num="+$("#SP4bankCount").val()+
				"&total_deal_fee="+$("#SP4bankAmount").val()+"&ledger_date="+$("#SP4date").val());
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#SP4JSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });

        });
        $("#SP1BUTTON").click(function () {
            var url = ("SP1?CID="+$("#SP1cid").val());
            var data = {type:1};

            $.ajax({
                type : "get",
                async : false,  //同步请求
                url : url,
                data : data,
                timeout:1000,
                success:function(dates){
                    //alert(dates);
                    $("#SP1JSP").html(dates);//要刷新的div
                },
                error: function() {
                    // alert("失败，请稍后再试！");
                }
            });

        })

    })
</script>
</body>
</html>