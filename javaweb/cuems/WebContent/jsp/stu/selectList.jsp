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
	function add(id) {
		alert(id);

	}
</script>
<style type="text/css">
body {
	background: #FFF
}
</style>
</head>

<body>
	<div id="contentWrap">
		<!--表格控件 -->
		<div id="widget table-widget">
			<div class="pageTitle">选课管理</div>
			<div class="pageColumn">
				<div class="pageButton">
					</a><span>选课列表</span>
				</div>
				<table>
					<thead>
						<th width="">课程id</th>
						<th width="">课程名称</th>
						<th width="">任课教师</th>
						<th width="">课程类型</th>
						<th width="10%">课程性质</th>
						<th width="10%">学分</th>
						<th width="10%">操作</th>
					</thead>
					<tbody>
						<c:forEach items="${pageInfo.list }" var="list">
							<tr>
								<td>${list.courseid }</td>
								<td>${list.coursename }</td>
								<td>${list.teachername }</td>
								<td>${list.coursekind }</td>
								<td>${list.coursetype }</td>
								<td>${list.credit }</td>

								<td><a
									href="${ctx }/stu/addcourse?courseid=${list.courseid }&stuid=${stuid}"><img
										src="${ctx}/images/icon/edit.png" width="16" height="16" /></a></td>
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
						<li class="disabled"><a
							href="${ctx}/stu/selectList?pn=${pageInfo.pageNum-1}&stuid=${stuid}">«</a>

						</li>
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
								<li><a
									href="${ctx}/stu/selectList?pn=${page_num}&stuid=${stuid}">${page_num}</a>

								</li>
							</c:if>
						</c:forEach>


						<%-- <li><a href="${ctx}/user/queryUserList.action?pn=${pageInfo.pageNum}" >1</a></li> --%>
						<li><a
							href="${ctx}/stu/selectList?pn=${pageInfo.pageNum+1}&stuid=${stuid}">»</a>

						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

