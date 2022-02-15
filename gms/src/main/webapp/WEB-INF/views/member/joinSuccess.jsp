<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<style>
	p {
		color: white;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<img src="${contextPath }/resources/assets/images/Logo.png">
		<p>축하합니다. 회원가입이 완료되었습니다.</p>
		<p>서비스를 이용하시려면, 로그인을 해주시기 바랍니다.</p>
		<p>
			<a href="${contextPath}/main/main" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">메인으로</a>
			<a href="${contextPath}/members/login" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">로그인</a>
		</p>
	</div>
</body>
</html>