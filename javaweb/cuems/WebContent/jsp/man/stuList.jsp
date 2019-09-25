<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="<%=basePath%>css/style.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript">

function deletes(id){
	 var i = confirm("是否确认删除");
		if(i){
         $.get("${ctx}/stu/deletestudent",{studentid:id},function(m){              
              if(m){  
                   alert("删除成功！");                      
                   window.location="${ctx}/stu/findstudentinfo";                                         
              }else{
                  alert("删除失败");
              }
          });	
      }
}

</script>
<style type="text/css">
body {
	background: #FFF
}
</style>
</head>

<body>
	<%
		Object message = request.getAttribute("success");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
          alert("<%=message%>");
      </script>
	<%
		}
	%>
	<div id="contentWrap">
		<!--表格控件 -->
		<div id="widget table-widget">
			<div class="pageTitle">学生管理</div>
			<div class="querybody">
				<form action="${ctx}/stu/querystu">
					<ul class="seachform">
						<li><label>学号</label><input name="stuid" type="text"
							class="scinput" /></li>
						<li><label>姓名</label><input name="stuname" type="text"
							class="scinput" /></li>
						<li><label>&nbsp;</label><input name="" type="submit"
							class="scbtn" value="查询" /></li>
					</ul>
				</form>
			</div>
			<div class="pageColumn">
				<div class="pageButton">
					<a href="${ctx}/jsp/man/stuAdd.jsp"><img
						src="<%=basePath%>images/t01.png" title="新增" /></a><span>学生列表</span>
				</div>
				<table>
					<thead>
						<th width="">学号</th>
						<th width="">姓名</th>
						<th width="">性别</th>
						<th width="">身份证号</th>
						<th width="">出生日期</th>
						<th width="">院系</th>
						<th width="">专业</th>
						<th width="10%">层次</th>
						<th width="10%">联系电话</th>
						<th width="10%">家庭住址</th>
						<th width="10%">操作</th>
					</thead>
					<tbody>
						<c:forEach var="stu" items="${pageInfo.list }">
							<tr>
								<td>${stu.stuid }</td>
								<td>${stu.stuname }</td>
								<td>${stu.sex }</td>
								<td>${stu.stu_idcard }</td>
								<td>${stu.birthdays }</td>
								<td>${stu.studepartname }</td>
								<td>${stu.stumajorname }</td>
								<td>${stu.stulevel }</td>
								<td>${stu.stutel }</td>
								<td>${stu.stuaddress }</td>
								<td><a
									href="<%=basePath %>/stu/getEditstu?studentid=${stu.stuid }"><img
										src="<%=basePath%>images/icon/edit.png" width="16"
										height="16" /></a> <a onclick="deletes(${stu.stuid })"><img
										src="<%=basePath%>images/icon/del.png" width="16" height="16" /></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- #widget -->
		<div id="pagination" style="align: right; margin-top: -10px;">
			<div id='project_pagination' class="pagination pagination-centered">
				<div class="pagination">
					<ul>
						<li class="disabled"><c:if test="${num eq '1' }">
								<a href="${ctx}/stu/findstudentinfo?pn=${pageInfo.pageNum-1}">«</a>
							</c:if> <c:if test="${num eq '2' }">
								<a
									href="${ctx}/stu/querystu?pn=${pageInfo.pageNum-1}&stuname=${name}&stuid=${id}">«</a>
							</c:if></li>
						<!-- navigatepageNums是页面上的所有导航号 -->
						<!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
						<c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
							<c:if test="${page_num == pageInfo.pageNum}">
								<li class="active"><a href="#">${page_num}</a></li>
							</c:if>
							<!-- pageInfo.pages代表总页数 ：3页
                        	 pageInfo.pageNum代表当前页
                        -->
							<c:if test="${page_num != pageInfo.pageNum}">
								<li><c:if test="${num eq '1' }">
										<a href="${ctx}/stu/findstudentinfo?pn=${page_num}">${page_num}</a>
									</c:if> <c:if test="${num eq '2' }">
										<a
											href="${ctx}/stu/querystu?pn=${page_num}&stuname=${name}&stuid=${id}">${page_num}</a>
									</c:if></li>
							</c:if>
						</c:forEach>


						<%-- <li><a href="${ctx}/user/queryUserList.action?pn=${pageInfo.pageNum}" >1</a></li> --%>
						<li><c:if test="${num eq '1' }">
								<a href="${ctx}/stu/findstudentinfo?pn=${pageInfo.pageNum+1}">»</a>
							</c:if> <c:if test="${num eq '2' }">
								<a
									href="${ctx}/stu/querystu?pn=${pageInfo.pageNum+1}&stuname=${name}&stuid=${id}">»</a>
							</c:if></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
