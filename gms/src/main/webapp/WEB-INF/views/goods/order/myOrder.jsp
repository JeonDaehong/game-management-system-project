<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${isLogOn ne true }">
	<script>
		alert('로그인 후에 열람하실 수 있습니다.');
		location.href = '${contextPath}/members/login';
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
	        <li><span>내 주문 목록</span></li>
    	</ul>
	</div>
		<br>
		<table class="table nk-table" style="border-color: red;">
			<colgroup>
				<col style="width:20">
				<col style="width:80">
			</colgroup>
			<tr style="border-color: red;" align="center"> 
				<th style="border-color: red;" align="center"> 주문날짜 </th>
				<th style="border-color: red;" align="center"> 보낸사람 </th>
				<th style="border-color: red;" align="center"> 받는사람 </th>
				<th style="border-color: red;" align="center"> 상품명 </th>
				<th style="border-color: red;" align="center"> 금액 </th>
				<th style="border-color: red;" align="center"> 주소</th>
				<th style="border-color: red;" align="center"> 배송상태</th>
			</tr>
			<c:choose>
				<c:when test="${empty myOrderList }">
					<tr align="center">
						<td colspan="7" style="border-color: red;"> 현재 주문한 상품이 없습니다. </td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="myOrderDto" items="${myOrderList }">
						<tr align="center">
							<td style="border-color: red;"> <fmt:formatDate value="${myOrderDto.buyTime }" pattern="yy년 MM월 dd일 (HH:mm:ss)"/> </td>
							<td style="border-color: red;"> ${myOrderDto.sender } </td>
							<td style="border-color: red;"> ${myOrderDto.recipient } </td>
							<td style="border-color: red;"> <a href="${contextPath }/order/myOrderInfo?orderString=${myOrderDto.orderString}&content=${myOrderDto.content}">${myOrderDto.goodsName }</a></td>
							<td style="border-color: red;"> <fmt:formatNumber type="number" maxFractionDigits="0" value="${myOrderDto.price }"/> 원 </td>
							<td style="border-color: red;"> ${myOrderDto.zipcode } : ${myOrderDto.namujiAddress } </td>
							<td style="border-color: red;">
								<c:if test="${myOrderDto.situation eq 'preparing'}">배송 준비중</c:if>
								<c:if test="${myOrderDto.situation eq 'shipping'}">배송 중</c:if>
								<c:if test="${myOrderDto.situation eq 'completed'}">배송 완료</c:if>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
		<p align="center">
			<br>
			<input type="button" value="메인으로" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/main/main'">
		</p>
		<blockquote class="nk-blockquote">
			<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
		</blockquote>
	</div>
</body>
</html>