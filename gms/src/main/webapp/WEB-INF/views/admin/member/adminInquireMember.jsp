<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
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
</head>
<body>
	<div class="container">
		<div class="container">
		<br>
    	<ul class="nk-breadcrumbs">
	        <li><a href="${contextPath }/main/main">Home</a></li>
	        <li><span class="fa fa-angle-right"></span></li>
	        <li><span>회원 목록 확인</span></li>
    	</ul>
	</div>
	<div align="right">
		<form action="${contextPath }/adminMember/memberListOption" method="post">
		<select name="option" id="option">
			<option value="memberId" <c:if test="${reOption eq 'memberId' }">selected</c:if>>아이디 순</option>		
			<option value="memberName" <c:if test="${reOption eq 'memberName' }">selected</c:if>>이름 순</option>		
			<option value="joinDate" <c:if test="${reOption eq 'joinDate' }">selected</c:if>>가입일 순</option>		
			<option value="deleteAccount" <c:if test="${reOption eq 'deleteAccount' }">selected</c:if>>탈퇴 신청 순</option>		
		</select>
		<input type="submit" value="조회">
		</form>
	</div>
		<br>
		<table class="table nk-table" style="border-color: red;">
			<tr style="border-color: red;" align="center"> 
				<th style="border-color: red;" align="center"> 회원아이디 </th>
				<th style="border-color: red;" align="center"> 회원이름 </th>
				<th style="border-color: red;" align="center"> 휴대폰번호 </th>
				<th style="border-color: red;" align="center"> 주소(우편번호) </th>
				<th style="border-color: red;" align="center"> 가입일 </th>
				<th style="border-color: red;" align="center"> 탈퇴 신청 날짜</th>
			</tr>
			<c:forEach var="memberDto" items="${memberList }">
				<tr align="center">
					<td style="border-color: red;"> ${memberDto.memberId } </td>
					<td style="border-color: red;"> ${memberDto.memberName } </td>
					<td style="border-color: red;"> ${memberDto.hp1 } - ${memberDto.hp2 } - ${memberDto.hp3 }</td>
					<td style="border-color: red;"> ${memberDto.zipcode } </td>
					<td style="border-color: red;"> <fmt:formatDate value="${memberDto.joinDate }" pattern="yy년 MM월 dd일"/> </td>
					<td style="border-color: red;">
						<c:choose>
							<c:when test="${empty memberDto.deleteAccount }">
								회원 탈퇴를 신청하지 않았습니다.
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${memberDto.deleteAccount }" pattern="yy년 MM월 dd일"/>
							</c:otherwise>
						</c:choose> 
					</td>
				</tr>
			</c:forEach>
		</table>
		<p align="center">
			<br>
			<input type="button" value="Excel로 다운" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminMember/memberExcelExport'">
			<input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminNotice/noticeList'">
		</p>
		<blockquote class="nk-blockquote">
			<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
		</blockquote>
	</div>
</body>