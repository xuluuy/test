<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE HTML>
<html>
<script type="text/javascript">
	$(function() {
		//setMenuHeight
		$("#modifyPassword").click(function() {
			$("#showModify").dialog({
				title : '修改密码',
				width : 430,
				height : 230,
				buttons : {
					"确定" : function() {
					},
					"取消" : function() {
						$(this).dialog('close');
					}
				}
			});
		});
		$('.menu').height($(window).height() - 51 - 27 - 26 - 5);
		$('.sidebar').height($(window).height() - 51 - 27 - 26 - 5);
		$('.page').height($(window).height() - 51 - 27 - 26 - 5);
		$('.page iframe').width($(window).width() - 15 - 168);
	});
</script>
<body style="overflow-y: hidden">
	<div id="wrap">
		<div id="header">
			<div class="logo fleft"></div>
			<div class="topright">
				<ul>
					<li><span style="color: #fff">欢迎你：${manager.managername}</span></li>
					<li><span><img src="${ctx}/images/index-logout.png"
							class="helpimg" height="16" width="16" /></span><a
						href="${ctx}/logout.action">注销</a></li>
					<li><span><img src="${ctx}/images/t07.png"
							class="helpimg" height="16" width="16" /></span><a
						href="${ctx}/jsp/changepassword.jsp">修改密码</a></li>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="subnav">
				<div class="subnavLeft fleft"></div>
				<div class="fleft"></div>
				<div class="subnavRight fright"></div>
			</div>
		</div>
		<!--#header -->
		<div id="content">
			<div class="space"></div>
			<div class="menu fleft">
				<ul>
					<li class="subMenuTitle">菜单</li>
					<!-- 管理员：用户信息管理、学生信息管理、教师信息管理、课程信息管理、课表信息管理、教学任务管理、学生成绩管理 -->
					<ul>
						<li><a href="${ctx}/man/findmaninfo" target="right">用户信息管理</a></li>
						<li><a href="${ctx}/stu/findstudentinfo" target="right">学生信息管理</a></li>
						<li><a href="${ctx}/teaquerylist.action" target="right">教师信息管理</a></li>
						<li><a href="${ctx}/courquerylist.action" target="right">课程信息管理</a></li>
						<li><a href="${ctx}/courselectlist.action" target="right">选课信息管理</a></li>
						<li><a href="${ctx}/man/classlist" target="right">课表信息管理</a></li>
						<li><a href="${ctx}/taskquerylist.action" target="right">教学任务管理</a></li>
						<li><a href="${ctx}/gradequerylist.action" target="right">学生成绩管理</a></li>
					</ul>
				</ul>
			</div>
			<div class="sidebar fleft">
				<div class="btn"></div>
			</div>
			<div class="page">
				<iframe width="100%" scrolling="auto" height="100%"
					frameborder="false" allowtransparency="true"
					style="border: medium none;" src="${ctx}/jsp/main.jsp"
					id="rightMain" name="right"></iframe>
			</div>
		</div>
		<!--#content -->
		<div class="clear"></div>
		<div id="footer">CopyRight &copy; 2017-2018</div>
		<!--#footer -->
	</div>
	<!--#wrap -->
</body>
</html>
