<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery.min.js"></script>
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
	<form method="post" action="${ctx}/man/updateManager" method="post"
		name="ThisForm">
		<input type="hidden" name="managerid" value="${manager.managerid }" />
		<div id="contentWrap">
			<!--表格控件 -->
			<div id="widget table-widget">
				<div class="pageTitle">管理员修改</div>
				<div class="pageInfo">
					<table>
						<tr>
							<td width="20%" align="right">姓名</td>
							<td width="20%"><input type="text" id="manname"
								name="managername" value="${manager.managername }" /></td>
							<td align="right">性别</td>
							<td><select id="sex" name="sex">
									<option value=${manager.sex }
										<c:if test="${manager.sex eq '男' }">selected=""</c:if>>
										男</option>
									<option value=${manager.sex }
										<c:if test="${manager.sex eq '女' }">selected=""</c:if>>
										女</option>
							</select></td>
						</tr>
						<tr>
							<td width="20%" align="right">身份证号</td>
							<td width="20%"><input type="text" id="idcard"
								name="manager_idcard" value="${manager.manager_idcard }" /></td>
							<td width="20%" align="right">出生日期</td>
							<td width="20%"><input type="text" id="birthdays"
								name="birthdays" value="${manager.birthdays }" /></td>
						</tr>
						<tr>
							<td align="right">所属部门</td>
							<td><select id="mandepartname" name="mandepartname">
									<option value="教务处"
										<c:if test="${manager.mandepartname eq '教务处' }">selected=""</c:if>>教务处</option>
									<option value="行政管理"
										<c:if test="${manager.mandepartname eq '行政管理' }">selected=""</c:if>>行政管理</option>
									<option value="团支部"
										<c:if test="${manager.mandepartname eq '团支部' }">selected=""</c:if>>团支部</option>
									<option value="学生处"
										<c:if test="${manager.mandepartname eq '学生处' }">selected=""</c:if>>学生处</option>
									<option value="其他部门"
										<c:if test="${manager.mandepartname eq '其他部门' }">selected=""</c:if>>其他部门</option>
							</select></td>
							<td width="20%" align="right">职位</td>
							<td><select id="manposition" name="manposition">
									<option value="主任"
										<c:if test="${manager.manposition eq '主任' }">selected=""</c:if>>主任</option>
									<option value="副主任"
										<c:if test="${manager.manposition eq '副主任' }">selected=""</c:if>>副主任</option>
							</select></td>
						</tr>
						<tr>
							<td width="20%" align="right">联系电话</td>
							<td width="20%"><input type="text" id="mantel" name="mantel"
								value="${manager.mantel }" /></td>
							<td width="20%" align="right">家庭住址</td>
							<td width="20%"><input type="text" id="manaddress"
								name="manaddress" value="${manager.manaddress }" /></td>
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

