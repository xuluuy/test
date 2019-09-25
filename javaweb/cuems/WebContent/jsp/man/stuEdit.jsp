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
	<form method="post" action="${ctx}/stu/updateStu" name="ThisForm">
		<input type="hidden" name="stuid" value="${student.stuid }" />
		<div id="contentWrap">
			<!--表格控件 -->
			<div id="widget table-widget">
				<div class="pageTitle">学生信息编辑</div>
				<div class="pageInfo">
					<table>
						<tr>
							<td width="20%" align="right">姓名</td>
							<td width="20%"><input type="text" id="stuname"
								name="stuname" value="${student.stuname }" /></td>
							<td width="20%" align="right">密码</td>
							<td width="20%"><input type="text" id="stupassword"
								name="stupassword" value="${student.stupassword }" /></td>
						</tr>
						<tr>
							<td align="right">性别</td>
							<td><select id="sex" name="sex">
									<option value=${student.sex }
										<c:if test="${student.sex eq '男' }">selected=""</c:if>>
										男</option>
									<option value=${student.sex }
										<c:if test="${student.sex eq '女' }">selected=""</c:if>>
										女</option>
							</select></td>
							<td width="20%" align="right">身份证号</td>
							<td width="20%"><input type="text" id="stu_idcard"
								name="stu_idcard" value="${student.stu_idcard }" /></td>
						</tr>
						<tr>
							<td width="20%" align="right">出生日期</td>
							<td width="20%"><input type="text" id="birthdays"
								name="birthdays" value="${student.birthdays }" /></td>
							<td align="right">院系</td>
							<td><select id="studepartname" name="studepartname">
									<option value="文学院"
										<c:if test="${student.studepartname eq '文学院' }">selected=""</c:if>>文学院</option>
									<option value="外国语学院"
										<c:if test="${student.studepartname eq '外国语学院' }">selected=""</c:if>>外国语学院</option>
									<option value="音乐学院"
										<c:if test="${student.studepartname eq '音乐学院' }">selected=""</c:if>>音乐学院</option>
									<option value="体育学院"
										<c:if test="${student.studepartname eq '体育学院' }">selected=""</c:if>>体育学院</option>
									<option value="数学科学学院"
										<c:if test="${student.studepartname eq '数学科学学院' }">selected=""</c:if>>数学科学学院</option>
									<option value="化学化工学院"
										<c:if test="${student.studepartname eq '化学化工学院' }">selected=""</c:if>>化学化工学院</option>
									<option value="信息管理学院"
										<c:if test="${student.studepartname eq '信息管理学院' }">selected=""</c:if>>信息管理学院</option>
									<option value="经济管理学院"
										<c:if test="${student.studepartname eq '经济管理学院' }">selected=""</c:if>>经济管理学院</option>
									<option value="政法学院"
										<c:if test="${student.studepartname eq '政法学院' }">selected=""</c:if>>政法学院</option>
									<option value="生命科学学院"
										<c:if test="${student.studepartname eq '生命科学学院' }">selected=""</c:if>>生命科学学院</option>
									<option value="机电工程学院"
										<c:if test="${student.studepartname eq '机电工程学院' }">selected=""</c:if>>机电工程学院</option>
							</select></td>
						</tr>
						<tr>
							<td align="right">专业</td>
							<td><select id="stumajorname" name="stumajorname">
									<option value="汉语言文学"
										<c:if test="${student.stumajorname eq '汉语言文学' }">selected=""</c:if>>汉语言文学</option>
									<option value="经济学"
										<c:if test="${student.stumajorname eq '经济学' }">selected=""</c:if>>经济学</option>
									<option value="金融学"
										<c:if test="${student.stumajorname eq '金融学' }">selected=""</c:if>>金融学</option>
									<option value="田径运动"
										<c:if test="${student.stumajorname eq '田径运动' }">selected=""</c:if>>田径运动</option>
									<option value="统计学"
										<c:if test="${student.stumajorname eq '统计学' }">selected=""</c:if>>统计学</option>
									<option value="化学工程与工艺"
										<c:if test="${student.stumajorname eq '化学工程与工艺' }">selected=""</c:if>>化学工程与工艺</option>
									<option value="计算机科学与技术"
										<c:if test="${student.stumajorname eq '计算机科学与技术' }">selected=""</c:if>>计算机科学与技术</option>
									<option value="数学应用学"
										<c:if test="${student.stumajorname eq '数学应用学' }">selected=""</c:if>>数学应用学</option>
									<option value="日语"
										<c:if test="${student.stumajorname eq '日语' }">selected=""</c:if>>日语</option>
									<option value="软件工程"
										<c:if test="${student.stumajorname eq '软件工程' }">selected=""</c:if>>软件工程</option>
									<option value="音乐教育学"
										<c:if test="${student.stumajorname eq '音乐教育学' }">selected=""</c:if>>音乐教育学</option>
									<option value="法学"
										<c:if test="${student.stumajorname eq '法学' }">selected=""</c:if>>法学</option>
							</select></td>
							<td align="right">层次</td>
							<td><select id="stulevel" name="stulevel">
									<option value="本科"
										<c:if test="${student.stulevel eq '本科' }">selected=""</c:if>>本科</option>
									<option value="专科"
										<c:if test="${student.stulevel eq '专科' }">selected=""</c:if>>专科</option>
							</select></td>
						</tr>
						<tr>
							<td width="20%" align="right">联系电话</td>
							<td width="20%"><input type="text" id="stutel" name="stutel"
								value="${student.stutel }" /></td>
							<td width="20%" align="right">家庭住址</td>
							<td width="20%"><input type="text" id="stuaddress"
								name="stuaddress" value="${student.stuaddress }" /></td>
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
