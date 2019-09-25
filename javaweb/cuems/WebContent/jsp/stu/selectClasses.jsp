<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>
<script type="text/javascript">

function deletes(id){
 window.location.href="gylist.html";
}
	$(function(){
		$('tbody tr:odd').addClass("trLight");
		
		$(".select-all").click(function(){
			if($(this).attr("checked")){
				$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", true);  
					});
				}else{
					$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", false);  
					});
				}
			});
		});
</script>
<style type="text/css">
body {
	background: #FFF
}
</style>
</head>

<body>
	<%
		Object message = request.getAttribute("msg");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
          alert("<%=message%>
		");
	</script>
	<%
		}
	%>
	<div id="contentWrap">
		<!--表格控件 -->
		<div id="widget table-widget">
			<div class="pageTitle">选课管理</div>
			<div class="querybody">
				<ul class="seachform">
					<li><label>教师ID</label><input name="" type="text"
						class="scinput" /></li>
					<li><label>&nbsp;</label><input name="" type="submit"
						class="scbtn" value="查询" /></li>
				</ul>
			</div>
			<div class="pageColumn">
				<div class="pageButton">
					<a href="${ctx }/stu/selectList?stuid=${stuid}"><img
						src="${ctx}/images/t01.png" title="新增" /></a><span>选课列表</span>
				</div>
				<table>
					<thead>
						<th width="">课程名称</th>
						<th width="">课程性质</th>
						<th width="">任课教师</th>
					</thead>
					<tbody>
						<c:forEach var="cour" items="${pageInfo.list }">
							<tr>
								<td>${cour.courname }</td>
								<td>${cour.courtype }</td>
								<td>${cour.teachername }</td>
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
								<a
									href="${ctx}/stu/selectClass?pn=${pageInfo.pageNum-1}&stuid=${stuid}">«</a>
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
										<a href="${ctx}/stu/selectClass?pn=${page_num}&stuid=${stuid}">${page_num}</a>
									</c:if> <c:if test="${num eq '2' }">
										<a
											href="${ctx}/stu/querystu?pn=${page_num}&stuname=${name}&stuid=${id}">${page_num}</a>
									</c:if></li>
							</c:if>
						</c:forEach>


						<%-- <li><a href="${ctx}/user/queryUserList.action?pn=${pageInfo.pageNum}" >1</a></li> --%>
						<li><c:if test="${num eq '1' }">
								<a
									href="${ctx}/stu/selectClass?pn=${pageInfo.pageNum+1}&stuid=${stuid}">»</a>
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
