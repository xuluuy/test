<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/jsp/common/includehead.jsp"%>   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>
<script type="text/javascript">

function deletes(id){
 window.location.href="gylist.html";
}
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
	background:#FFF
}
</style>
</head>

<body>


<!-- 课程表对话框 -->


			<div class="modal-body">
				<div class="table-div">
					<h2 style="text-align: center;">课程表</h2>
					<table class="table table-bordered table-striped table-hover" style="height: 450px" border="1">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">星期一</th>
								<th scope="col">星期二</th>
								<th scope="col">星期三</th>
								<th scope="col">星期四</th>
								<th scope="col">星期五</th>
							</tr>
						</thead>

						<tbody style="text-align: center;">
							<tr style="height: 80px">
								<th scope="row">1-2节
								</th>
								<td id="table_1_1"></td>
								<td id="table_2_1"></td>
								<td id="table_3_1"></td>
								<td id="table_4_1"></td>
								<td id="table_5_1"></td>

							</tr>
							<tr style="height: 80px">
								<th scope="row">3-4节
								</th>
								<td id="table_1_2"></td>
								<td id="table_2_2"></td>
								<td id="table_3_2"></td>
								<td id="table_4_2"></td>
								<td id="table_5_2"></td>
							</tr>
							<tr style="height: 80px">
								<th scope="row">5-6节
								</th>
								<td id="table_1_3"></td>
								<td id="table_2_3"></td>
								<td id="table_3_3"></td>
								<td id="table_4_3"></td>
								<td id="table_5_3"></td>
							</tr>
							<tr style="height: 80px">
								<th scope="row">7-8节
								</th>
								<td id="table_1_4"></td>
								<td id="table_2_4"></td>
								<td id="table_3_4"></td>
								<td id="table_4_4"></td>
								<td id="table_5_4">
								</td>
							</tr>
							<tr style="height: 80px">
								<th scope="row">9-10节
								</th>
								<td id="table_1_5"></td>
								<td id="table_2_5"></td>
								<td id="table_3_5"></td>
								<td id="table_4_5"></td>
								<td id="table_5_5">
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>

		
<!-- 课程表对话框end -->
</body>
</html>