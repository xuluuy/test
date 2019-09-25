<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	 var i = confirm("是否确认删除");
		if(i){
      $.get("${ctx}/man/deleteclass",{classid:id},function(m){              
           if(m){  
                alert("删除成功！");                      
                window.location="${ctx}/man/classlist";                                         
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
			<div class="pageTitle">课表管理</div>
			<form action="${ctx}/man/queryclass">
				<ul class="seachform">
					<li><label>课表ID</label><input name="classid" id="classid"
						type="text" class="scinput" value="${id}" /></li>
					<li><label>开课名称</label><input name="classname" id="classname"
						type="text" class="scinput" value="${name }" /></li>
					<li><label>&nbsp;</label><input name="" type="submit"
						class="scbtn" value="查询" /></li>
				</ul>
			</form>
			<div class="pageColumn">
				<div class="pageButton">
					<a href="${ctx}/jsp/man/manAdd.jsp"><img
						src="${ctx}/images/t01.png" title="新增" /></a><span>课表列表</span>
				</div>
				<table>
					<thead>
						<th width="">课表ID</th>
						<th width="">学生学号</th>
						<th width="">开课名称</th>
						<th width="">开课时间</th>
						<th width="">节次</th>
						<th width="">开课地点</th>
						<th width="">教师ID</th>
						<th width="">操作</th>
					</thead>
					<tbody>
						<c:forEach var="cl" items="${pageInfo.list }">
							<tr>
								<td>${cl.classid }</td>
								<td>${cl.stuid }</td>
								<td>${cl.classname }</td>
								<c:if test="${cl.classdate eq '1' }">
									<td>周一</td>
								</c:if>
								<c:if test="${cl.classdate eq '2' }">
									<td>周二</td>
								</c:if>
								<c:if test="${cl.classdate eq '3' }">
									<td>周三</td>
								</c:if>
								<c:if test="${cl.classdate eq '4' }">
									<td>周四</td>
								</c:if>
								<c:if test="${cl.classdate eq '5' }">
									<td>周五</td>
								</c:if>
								<td>${cl.classjieci }</td>
								<td>${cl.classplace }</td>
								<td>${cl.teacherid }</td>
								<td><a
									href="${ctx }/man/geteditclass?classid=${cl.classid}"><img
										src="${ctx}/images/icon/edit.png" width="16" height="16" /></a> <a
									onclick="deletes(${cl.classid})"><img
										src="${ctx}/images/icon/del.png" width="16" height="16" /></a></td>
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
								<a href="${ctx}/man/classlist?pn=${pageInfo.pageNum-1}">«</a>
							</c:if> <c:if test="${num eq '2' }">
								<a
									href="${ctx}/man/queryclass?pn=${pageInfo.pageNum-1}&classname=${name}&classid=${id}">«</a>
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
										<a href="${ctx}/man/classlist?pn=${page_num}">${page_num}</a>
									</c:if> <c:if test="${num eq '2' }">
										<a
											href="${ctx}/man/queryclass?pn=${page_num}&classname=${name}&classid=${id}">${page_num}</a>
									</c:if></li>
							</c:if>
						</c:forEach>


						<%-- <li><a href="${ctx}/user/queryUserList.action?pn=${pageInfo.pageNum}" >1</a></li> --%>
						<li><c:if test="${num eq '1' }">
								<a href="${ctx}/man/classlist?pn=${pageInfo.pageNum+1}">»</a>
							</c:if> <c:if test="${num eq '2' }">
								<a
									href="${ctx}/man/queryclass?pn=${pageInfo.pageNum+1}&classname=${name}&classid=${id}">»</a>
							</c:if></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
</body>
</html>

