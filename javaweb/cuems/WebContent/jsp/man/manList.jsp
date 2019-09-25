<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
//删除
function deletes(id){
	 var i = confirm("是否确认删除");
		if(i){
            $.get("${ctx}/man/deletemanager",{managerid:id},function(m){              
                 if(m){  
                      alert("删除成功！");                      
                      window.location="${ctx}/man/findmaninfo";                                         
                 }else{
                     alert("删除失败");
                 }
             });	
         }
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
		Object message = request.getAttribute("insert");
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
			<div class="pageTitle">管理员管理</div>
			<div class="querybody">
				<form action="/cuems/man/querymaninfo">
					<ul class="seachform">
						<li><label>管理员ID</label><input id="managerid"
							name="managerid" type="text" class="scinput" /></li>
						<li><label>管理员名称</label><input id="managername"
							name="managername" type="text" class="scinput" /></li>
						<li><label>&nbsp;</label><input name="" type="submit"
							class="scbtn" value="查询" /></li>
					</ul>
				</form>
			</div>
			<div class="pageColumn">
				<div class="pageButton">
					<a href="/cuems/jsp/man/manAdd.jsp"><img
						src="../images/t01.png" title="新增" /></a><span>管理员列表</span>

				</div>
				<table>
					<thead>
						<th width="">管理员ID</th>
						<th width="">管理员姓名</th>
						<th width="">性别</th>
						<th width="">身份证号</th>
						<th width="">出生日期</th>
						<th width="">部门</th>
						<th width="10%">职位</th>
						<th width="10%">联系电话</th>
						<th width="10%">家庭地址</th>
						<th width="10%">操作</th>
					</thead>
					<tbody>
						<c:forEach var="man" items="${pageInfo.list }">
							<tr>
								<td><c:out value="${man.managerid }"></c:out></td>
								<td><c:out value="${man.managername }"></c:out></td>
								<td><c:out value="${man.sex }"></c:out></td>
								<td><c:out value="${man.manager_idcard }"></c:out></td>
								<td>${man.birthdays }</td>
								<td><c:out value="${man.mandepartname }"></c:out></td>
								<td><c:out value="${man.manposition }"></c:out></td>
								<td><c:out value="${man.mantel }"></c:out></td>
								<td><c:out value="${man.manaddress }"></c:out></td>
								<td><a
									href="${ctx}/man/getEditman?managerid=${man.managerid }"><img
										src="../images/icon/edit.png" width="16" height="16" /></a> <a
									onclick="deletes(${man.managerid })"><img
										src="../images/icon/del.png" width="16" height="16" /></a></td>
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
								<a href="/cuems/man/findmaninfo?pn=${pageInfo.pageNum-1}">«</a>
							</c:if> <c:if test="${num eq '2' }">
								<a
									href="${ctx}/man/querymaninfo?pn=${pageInfo.pageNum-1}&managername=${name}&managerid=${id}">«</a>
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
										<a href="/cuems/man/findmaninfo?pn=${page_num}">${page_num}</a>
									</c:if> <c:if test="${num eq '2' }">
										<a
											href="/cuems/man/querymaninfo?pn=${page_num}&managername=${name}&managerid=${id}">${page_num}</a>
									</c:if></li>
							</c:if>
						</c:forEach>


						<%-- <li><a href="${ctx}/user/queryUserList.action?pn=${pageInfo.pageNum}" >1</a></li> --%>
						<li><c:if test="${num eq '1' }">
								<a href="/cuems/man/findmaninfo?pn=${pageInfo.pageNum+1}">»</a>
							</c:if> <c:if test="${num eq '2' }">
								<a
									href="/cuems/man/querymaninfo?pn=${pageInfo.pageNum+1}&managername=${name}&managerid=${id}">»</a>
							</c:if></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
