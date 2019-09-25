<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<form method="post" action="${ctx}/stu/addStudentinfo" method="post"
		name="ThisForm">
		<div id="contentWrap">
			<!--表格控件 -->
			<div id="widget table-widget">
				<div class="pageTitle">学生信息添加</div>
				<div class="pageInfo">
					<table>
						<tr>
							<td width="20%" align="right">姓名</td>
							<td width="20%"><input type="text" id="stuname"
								name="stuname" value="" /></td>
							<!--  <td width="20%" align="right">姓名</td>
          <td width="20%"><input type="password" id="stupassword" name="stupassword" value="" /></td> -->
						</tr>
						<tr>
							<td align="right">性别</td>
							<td><select id="sex" name="sex">
									<option value="男">男</option>
									<option value="女">女</option>
							</select></td>
							<td width="20%" align="right">身份证号</td>
							<td width="20%"><input type="text" id="stu_idcard"
								name="stu_idcard" value="" /></td>
						</tr>
						<tr>
							<td width="20%" align="right">出生日期</td>
							<td width="20%"><input type="text" id="birthday"
								name="birthdays" value="" /></td>
							<td align="right">院系</td>
							<td><select id="studepartname" name="studepartname">
									<option value="文学院">文学院</option>
									<option value="外国语学院">外国语学院</option>
									<option value="音乐学院">音乐学院</option>
									<option value="体育学院">体育学院</option>
									<option value="数学科学学院">数学科学学院</option>
									<option value="化学化工学院">化学化工学院</option>
									<option value="信息管理学院">信息管理学院</option>
									<option value="经济管理学院">经济管理学院</option>
									<option value="政法学院">政法学院</option>
									<option value="生命科学学院">生命科学学院</option>
									<option value="机电工程学院">机电工程学院</option>
							</select></td>
						</tr>
						<tr>
							<td align="right">专业</td>
							<td><select id="stumajorname" name="stumajorname">
									<option value="汉语言文学">汉语言文学</option>
									<option value="经济学">经济学</option>
									<option value="金融学">金融学</option>
									<option value="田径运动">田径运动</option>
									<option value="统计学">统计学</option>
									<option value="化学工程与工艺">化学工程与工艺</option>
									<option value="计算机科学与技术">计算机科学与技术</option>
									<option value="数学应用学">数学应用学</option>
									<option value="日语">日语</option>
									<option value="软件工程">软件工程</option>
									<option value="音乐教育学">音乐教育学</option>
									<option value="法学">法学</option>
							</select></td>
							<td align="right">层次</td>
							<td><select id="stulevel" name="stulevel">
									<option value="本科">本科</option>
									<option value="专科">专科</option>
							</select></td>
						</tr>
						<tr>
							<td width="20%" align="right">联系电话</td>
							<td width="20%"><input type="text" id="stutel" name="stutel"
								value="" /></td>
							<td width="20%" align="right">家庭住址</td>
							<td width="20%"><input type="text" id="stuaddress"
								name="stuaddress" value="" /></td>
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
