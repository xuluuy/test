<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
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
	<form method="post" action="${ctx }/man/updateclass" method="post"
		name="ThisForm">
		<input type="hidden" name="classid" value="${classinfo.classid }" />
		<div id="contentWrap">
			<!--表格控件 -->
			<div id="widget table-widget">
				<div class="pageTitle">课表信息修改</div>
				<div class="pageInfo">
					<table>
						<tr>
							<td width="20%" align="right">学号</td>
							<td width="20%"><input type="text" id="stuid" name="stuid"
								value="${classinfo.stuid }" /></td>
						</tr>
						<tr>
							<td width="20%" align="right">开课名称</td>
							<td width="20%"><input type="text" id="classname"
								name="classname" value="${classinfo.classname }" /></td>
						</tr>
						<tr>
							<td align="right">开课时间</td>
							<td><input type="text" id="classdate" name="classdate"
								value="${classinfo.classdate }" /></td>
						</tr>
						<tr>
							<td align="right">开课节次</td>
							<td><input type="text" id="classjieci" name="classjieci"
								value="${classinfo.classjieci }" /></td>
						</tr>
						<tr>
							<td width="20%" align="right">开课地点</td>
							<td width="20%"><input type="text" id="classplace"
								name="classplace" value="${classinfo.classplace }" /></td>
						</tr>
						<tr>
							<td colspan="4" align="center"><input type="submit"
								value="确定" /></td>
						</tr>
					</table>
				</div>
			</div>
			<!-- #widget -->
		</div>
	</form>
</body>
</html>