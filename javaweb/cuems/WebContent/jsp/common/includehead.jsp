<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高校教务管理系统</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	//menu on and off
	$('.btn').click(function(){
		$('.menu').toggle();
		
		if($(".menu").is(":hidden")){
			$('.page iframe').width($(window).width()-15+5);
			}else{
			$('.page iframe').width($(window).width()-15-168);
				}
		});
		
	$('.subMenu a[href="#"]').click(function(){
		$(this).next('ul').toggle();
		return false;
		});
		
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
	$(".active a").click(function(){
		$(this).attr('href', '#'); 
	});
});
</script>
<style type="text/css">
body {
	background:#FFF
}
</style>
</head>
<body>
    
</body>
</html>