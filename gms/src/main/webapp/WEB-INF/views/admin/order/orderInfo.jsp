<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${sessionScope.loginId ne 'admin' }">
	<script>
		alert('ADMIN만 접근 가능한 페이지입니다.');
		location.href = '${contextPath}/main/main';
	</script>
</c:if>
<style>

	td:first-child {
		text-align: center;
		font-weight: bold;
	}
	
	th, td {
		color: white;
	}
	
	textarea {
		background-color: black;
		color: white;
	}
	
	#subject {
		color: white;
	}
	
</style>
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="container">
		<br>
    	<ul class="nk-breadcrumbs">
	        <li><a href="${contextPath }/main/main">Home</a></li>
	        <li><span class="fa fa-angle-right"></span></li>
	        <li><span>전체 주문 목록 (Detail)</span></li>
    	</ul>
	</div>
		<br>
		<table class="table nk-table" style="border-color: red;">
			<tr style="border-color: red;" align="center"> 
				<th style="border-color: red;" align="center"> 주문한 게임(상품) </th>
				<td style="border-color: red;">
					<c:forEach var="orderDto" items="${orderList }">
						${orderDto.goodsName } / ${orderDto.count }개 : <fmt:formatNumber type="number" value="${orderDto.price * orderDto.count }" /> 원
						<br>
					</c:forEach>
				</td>
			</tr>
			<tr style="border-color: red;" align="center"> 
				<th style="border-color: red;" align="center"> 기사님께 전하는 말 </th>
				<td style="border-color: red;">
					${content }
				</td>
			</tr>
		</table>
		<p align="center">
			<br>
			<input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/order/myOrder?memberId=${sessionScope.loginId }'">
		</p>
		<blockquote class="nk-blockquote">
			<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
		</blockquote>
	</div>
</body>
</html>