<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
	function deletes(id) {
		window.location.href = "gylist.html";
	}
	$(function() {
		$('tbody tr:odd').addClass("trLight");

		$(".select-all").click(function() {
			if ($(this).attr("checked")) {
				$(".checkBox input[type=checkbox]").each(function() {
					$(this).attr("checked", true);
				});
			} else {
				$(".checkBox input[type=checkbox]").each(function() {
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
	<div id="contentWrap">
		<!--表格控件 -->
		<div id="widget table-widget">
			<div class="pageTitle">教师管理</div>
			<div class="pageColumn">
				<div class="pageButton">
					</a><span>教师列表</span>
				</div>
				<table>
					<thead>
						<th width="">教师ID</th>
						<th width="">教师姓名</th>
						<th width="">性别</th>
						<th width="">身份证号</th>
						<th width="">出生日期</th>
						<th width="">所属院系</th>
						<th width="">专业</th>
						<th width="10%">学历</th>
						<th width="10%">职位</th>
						<th width="10%">联系电话</th>
						<th width="10%">家庭地址</th>
					</thead>
					<tbody>
						<tr>
							<td>${teacher.teacherid }</td>
							<td>${teacher.teachername }</td>
							<td>${teacher.sex }</td>
							<td>${teacher.teacher_idcard }</td>
							<td><spring:bind path="teacher.birthday">${status.value}</spring:bind><br /></td>
							<td>${teacher.teadepartname }</td>
							<td>${teacher.teamajorname }</td>
							<td>${teacher.teadegree }</td>
							<td>${teacher.teaposition }</td>
							<td>${teacher.teatel }</td>
							<td>${teacher.teaaddress }</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
		<!-- #widget -->
		<div id="pagination" style="align: right; margin-top: -10px;">
			<div id='project_pagination' class="pagination pagination-centered">
				<div class="pagination">
					<ul>
						<li class="disabled"><a href="#">«</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">»</a></li>
					</ul>
					<ul>
						<li><span>(1-10/38)</span></li>
						<li><span>显示条数&nbsp;:&nbsp;</span></li>
					</ul>
					<ul>
						<li class="active"><a href="#">10</a></li>
						<li class=""><a href="#">30</a></li>
						<li class=""><a href="#">50</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>