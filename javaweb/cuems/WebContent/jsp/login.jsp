<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>高校教务管理系统</title>
<link href="<%=path%>/css/login.css" rel="stylesheet" rev="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript" src="<%=path%>/js/jQuery1.7.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.SuperSlide.js"></script>
<script type="text/javascript"
	src="<%=path%>/js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="<%=path%>/js/fun.base.js"></script>
<script type="text/javascript" src="<%=path%>/js/script.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var $tab_li = $('#tab ul li');
	$tab_li.hover(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var index = $tab_li.index(this);
		$('div.tab_box > div').eq(index).show().siblings().hide();
	});	
});
</script>
<script type="text/javascript">
$(function(){
/*学生登录信息验证*/
$("#stu_username_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入学号'){
 $(this).val('');
 }
});
$("#stu_username_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入学号');
 }
});
$("#stu_password_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入密码'){
 $(this).val('');
 }
});
$("#stu_password_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入密码');
 }
});
$("#stu_code_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入验证码'){
 $(this).val('');
 }
});
$("#stu_code_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入验证码');
 }
});
/*导师登录信息验证*/
$("#tea_username_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入教工号'){
 $(this).val('');
 }
});
$("#tea_username_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入教工号');
 }
});
$("#tea_password_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入密码'){
 $(this).val('');
 }
});
$("#tea_password_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入密码');
 }
});
$("#tea_code_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入验证码'){
 $(this).val('');
 }
});
$("#tea_code_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入验证码');
 }
});
/*教务登录信息验证*/
$("#sec_username_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入教务号'){
 $(this).val('');
 }
});
$("#sec_username_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入教务号');
 }
});
$("#sec_password_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入密码'){
 $(this).val('');
 }
});
$("#sec_password_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入密码');
 }
});
$("#sec_code_hide").focus(function(){
 var username = $(this).val();
 if(username=='输入验证码'){
 $(this).val('');
 }
});
$("#sec_code_hide").focusout(function(){
 var username = $(this).val();
 if(username==''){
 $(this).val('输入验证码');
 }
});
});
</script>
</head>

<body>
	<%
		Object message = request.getAttribute("success");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
          alert(<%=message%>);
	</script>
	<%
		}
	%>
	<div class="login">
		<div id="tab">
			<ul class="tab_menu">
				<li class="selected">学生登录</li>
				<li>教师登录</li>
				<li>管理员登录</li>
			</ul>
			<div class="tab_box">
				<!-- 学生登录开始 -->
				<div>
					<div class="stu_error_box" style="color: red">${message }</div>
					<form action="<%=path%>/stulogin" method="post"
						class="stu_login_error">
						<div id="username">
							<label>学&nbsp;&nbsp;&nbsp;号：</label> <input type="text"
								id="stu_username_hide" name="stuid" value="输入学号" />
						</div>
						<div id="password">
							<label>密&nbsp;&nbsp;&nbsp;码：</label> <input type="password"
								id="stu_password_hide" name="stupassword" value="输入密码" />
						</div>
						<div id="code">
							<br />
							<h3 style="color: blue; font-style: italic;">Welcome to
								login</h3>
						</div>
						<div id="remember">
							<!-- <input type="checkbox" name="remember">
          <label>记住密码</label> -->
						</div>
						<div id="login">
							<button type="submit"></button>
						</div>
					</form>
				</div>
				<!-- 学生登录结束-->
				<!-- 教师登录开始-->
				<div class="hide">
					<div class="tea_error_box" style="color: red">${message }</div>
					<form action="<%=path%>/tealogin.action" method="post"
						class="tea_login_error">
						<div id="username">
							<label>教工号：</label> <input type="text" id="tea_username_hide"
								name="teacherid" value="输入教工号" />
							<!--ajaxurl="demo/valid.jsp"-->
						</div>
						<div id="password">
							<label>密&nbsp;&nbsp;&nbsp;码：</label> <input type="password"
								id="tea_password_hide" name="teapassword" value="输入密码" />
						</div>
						<div id="code">
							<div id="code">
								<br />
								<h3 style="color: blue; font-style: italic;">Welcome to
									login</h3>
							</div>
						</div>
						<div id="remember">
							<!-- <input type="checkbox" name="remember">
          <label>记住密码</label> -->
						</div>
						<div id="login">
							<button type="submit"></button>
						</div>
					</form>
				</div>
				<!-- 教师登录结束-->
				<!-- 管理员登录开始-->
				<div class="hide">
					<div class="sec_error_box" style="color: red">${message }</div>
					<form action="<%=path%>/manlogin" method="post"
						class="sec_login_error">
						<div id="username">
							<label>教务号：</label> <input type="text" id="sec_username_hide"
								name="managerid" value="输入教务号" />
							<!--ajaxurl="demo/valid.jsp"-->
						</div>
						<div id="password">
							<label>密&nbsp;&nbsp;&nbsp;码：</label> <input type="password"
								id="sec_password_hide" name="manpassword" value="输入密码" />
						</div>
						<div id="code">
							<div id="code">
								<br />
								<h3 style="color: blue; font-style: italic;">Welcome to
									login</h3>
							</div>
						</div>
						<div id="remember">
							<!-- <input type="checkbox" name="remember">
          <label>记住密码</label> -->
						</div>
						<div id="login">
							<button type="submit"></button>
						</div>
					</form>
				</div>
				<!-- 管理员登录结束-->
			</div>
		</div>
		<div class="air-balloon ab-1 png"></div>
		<div class="air-balloon ab-2 png"></div>
		<div class="footer"></div>
	</div>
</body>
</html>


