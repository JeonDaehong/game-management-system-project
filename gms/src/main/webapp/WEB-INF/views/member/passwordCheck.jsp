<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="${contextPath }/resources/jquery/jquery-3.5.1.min.js"></script>
<c:if test='${invalidMember eq true}'>
	<script>
		$().ready(function(){
			alert("비밀번호가 올바르지 않습니다.");
		});
	</script>
</c:if>
<script>
	function loginCheck() {
		
		if (document.getElementById('memberPw').value == '') {
			alert('패스워드를 입력해주세요.');
			document.getElementById('memberPw').focus();
			return false;
		}
		
		return true;
	}
</script>
<style>
	label, h1, p {
		color: white;
	}
</style>
</head>
<body>
	<div class="container">
		<br>
		<h1>비밀번호 재확인</h1>
		<br>
		<form action="${contextPath}/members/pwdCheck" method="post" onsubmit="return loginCheck()">
			<table class="table" border="1" style="background-color: black;">
				<colgroup>
					<col width="20%">
					<col width="60%">
				</colgroup>
				<tr>
					<td align="center"><label for="memberId">아이디</label></td>
					<td><input class="form-control" id="memberId" name="memberId" type="text" value="${sessionScope.loginId }" readonly /></td>
				</tr>
				<tr align="center">
					<td><label for="memberPw">비밀번호</label></td>
					<td><input class="form-control" id="memberPw" name="memberPw" type="password" placeholder="비밀번호를 입력하세요." /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="hidden" id="updateAndDeleteCheck" name="updateAndDeleteCheck" value="${updateAndDeleteCheck }">
						<c:choose>
							<c:when test='${updateAndDeleteCheck eq "update"}'>
								<input type="submit" class="btn btn-primary btn-sm" value="회원정보 수정">
							</c:when>
							<c:otherwise>
								<input type="submit" class="btn btn-primary btn-sm" value="계정 삭제하기">
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</table>
		</form>
		<p align="center">
	   		<img src="${contextPath }/resources/assets/images/Logo.png" width=300 height="200">
	   	</p>
   	</div>
</body>
</html>