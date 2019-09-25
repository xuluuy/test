<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {
	background: #FFF
}
</style>
<script type="text/javascript">
	 
 
 function checkPwd()
 {
   var pwd1 = document.getElementById("password_old").value;
  var pwd2 = document.getElementById("password_1").value;
  var pwd3 = document.getElementById("password_2").value;
  if(pwd1&&pwd2&&pwd3 )
  {if(pwd2.trim() == pwd1.trim()){
    alert('新密码与原密码一致！');
    return false;
  }else{
    if( pwd2.trim() == pwd3.trim() )
    {
     return true;
    }
    else
    {
     alert('两次密码不一致');    
     return false;
    }
    }
   }
  else
   {
    alert('需输入内容');   
    return false;
   }
 }

	</script>
</head>
<body>
	<%
		Object message = request.getAttribute("messages");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
          alert(<%=message%>);
	</script>
	<%
		}
	%>
	<form action="<%=basePath%>password/change" method="post"
		onsubmit="return checkPwd();">
		<div class="pageTitle">
			密码修改

			<div style="float: right">
				<c:if test="${usertype eq 'S'}">
					<a href="<%=basePath%>jsp/stuindex.jsp" style="margin: 20px">返回</a>
				</c:if>
				<c:if test="${usertype eq 'T'}">
					<a href="<%=basePath%>jsp/teaindex.jsp" style="margin: 20px">返回</a>
				</c:if>
				<c:if test="${usertype eq 'M'}">
					<a href="<%=basePath%>jsp/index.jsp" style="margin: 20px">返回</a>
				</c:if>
			</div>
		</div>
		<div align="center" class="pageInfo" style="padding: 60px">
			<input id="userid" type="hidden" title="" value="${userid}"
				name="userid"> <input id="usertype" type="hidden" title=""
				value="${usertype}" name="usertype">
			<table style="margin: 50px">
				<tbody>
					<tr>
						<td style="width: 230px" align="center">
							<div class="">当前密码:</div>
						</td>
						<td>
							<div>
								<input id="password_old" type="password" title="" value=""
									name="password_old" class="scinput" />
							</div>
						</td>
					</tr>
					<tr>
						<td style="width: 230px" align="center">
							<div class="">新密码:</div>
						</td>
						<td>
							<div>
								<input id="password_1" type="password" title="" value=""
									name="password_1" class="scinput" />
							</div>
						</td>
					</tr>
					<tr>
						<td style="width: 230px" align="center">
							<div class="">确认新密码:</div>
						</td>
						<td>
							<div>
								<input id="password_2" type="password" title="" value=""
									name="password_2" class="scinput" />
							</div>
						</td>
					</tr>
				</tbody>
			</table>


			<button type="submit" class="scbtn">确定</button>
			<button type="reset" class="scbtn">重置</button>
			<br>



		</div>
	</form>
</body>
</html>