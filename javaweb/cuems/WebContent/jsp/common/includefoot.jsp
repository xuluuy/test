<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- page模型，里面存有分页所需要的信息 -->
<c:set var="page" value="${sessionScope.page}" />
<!-- 项目路径 -->
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- 主体页面传过来的url -->
<c:set var="url" value="${param.url}" />
<!-- 可以带页面参数 -->
<c:set var="urlParams" value="${param.urlParams}" />
<!-- 项目路径+本次访问的控制器路径 -->
<c:set var="pathurl" value="${path}/${url}" />

<div id="pagination" style="align:right;margin-top:-10px;">
	<div id='project_pagination' class="pagination pagination-centered">
		<div class="pagination">
			<ul>
				<!-- 如果hasPrePage值为真则显示按钮“«”，提供向前翻页功能-->
				<li >
					<c:if test="${page.hasPrePage==true}"> 
						<a href="${pathurl}?pageAction=previous${urlParams}" >«</a>
					</c:if>
				</li>
				<!-- 显示分页条 -->
				<!-- 第一个页码 -->
				<li <c:if test="${page.currentPage eq 1}">class="active"</c:if>>
					<a href="${pathurl}?&pageAction=first${urlParams}" >1</a>
				</li>
				<!-- 设置跳出循环标识：0继续循环 1跳出循环 -->
				<c:set var="isDoing" value="0"/> 
				<!-- 循环页码：开始值为2，结束值为页码总数，每次循环制赋值给i，每次循环状态存放在step里 --> 
				<c:forEach begin="2" end="${page.totalPage}"  var="i" varStatus="step" >
					<!-- 循环标识不为1，进入循环 -->
					<c:if test="${isDone != 1}">
						<!-- 显示页码 -->
						<li <c:if test="${page.currentPage eq i}">class="active"</c:if>>
							<a href="${pathurl}?&pageAction=GOPAGE&pageKey=<c:out value="${i}">
							</c:out>${urlParams}" ><c:out value="${i}"></c:out></a>
						</li>
						<!-- 循环次数大于4时，设置循环标识，跳出循环，防止页码过多显示不美观 -->
						<%-- <c:if test="${step.count > 4}">
							<!-- 设置跳出循环标识 -->
							<c:set var="isDone" value="1" ></c:set>
							<!-- 如果当前循环不是最后一次循环，则打印“...” -->
							<c:if test="${!step.last}">
								<li><a href="#" ><c:out value="..."></c:out></a></li>
							</c:if>
						</c:if> --%>
					</c:if>
				</c:forEach>
				<li>
					<c:if test="${page.hasNextPage==true }">
						<a href="${pathurl}?&pageAction=next${urlParams}">»</a>
					</c:if>
				</li>
			</ul>
			<ul>
				<li><span>(${page.beginIndex+1}-${page.endinIndex}/${page.totalCount})</span></li>
				<li><span>显示条数&nbsp;:&nbsp;</span></li>
			</ul>
			<ul>
				<li <c:if test="${page.everyPage == 10}">class="active"</c:if>>
					<a href="${pathurl}?&pageAction=setpage&pageKey=10${urlParams}">10</a>
				</li>
				<li <c:if test="${page.everyPage == 30}">class="active"</c:if>>
					<a href="${pathurl}?&pageAction=setpage&pageKey=30${urlParams}">30</a>
				</li>
				<li <c:if test="${page.everyPage == 50}">class="active"</c:if>>
					<a href="${pathurl}?&pageAction=setpage&pageKey=50${urlParams}">50</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">

</script>
