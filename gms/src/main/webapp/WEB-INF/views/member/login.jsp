<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<script src="${contextPath }/resources/jquery/jquery-3.5.1.min.js"></script>
<c:if test='${invalidMember eq true}'>
	<script>
		$().ready(function(){
			alert("아이디와 비밀번호를 확인하세요.");
		});
	</script>
</c:if>
<script>
	function loginCheck() {
		
		
		if (document.getElementById('memberId').value == '') {
			alert('ID를 입력해주세요.');
			document.getElementById('memberId').focus();
			return false;
		}
		
		if (document.getElementById('memberPw').value == '') {
			alert('패스워드를 입력해주세요.');
			document.getElementById('memberPw').focus();
			return false;
		}
		
		return true;
	}
</script>
<style>
	label, h1, p, td {
		color: white;
	}
</style>
<title>Login to GMS 1.0</title>
</head>
<body>
	<div class="container">
		<br>
		<h1>Login to GMS 1.0</h1>
		<br>
		<form action="${contextPath}/members/login" method="post" onsubmit="return loginCheck()">
			<table class="table" border="1" style="background-color: black;">
				<colgroup>
					<col width="20%">
					<col width="60%">
				</colgroup>
				<tr>
					<td align="center"><label for="memberId">아이디</label></td>
					<td><input class="form-control" id="memberId" name="memberId" type="text" placeholder="아이디를 입력하세요." /></td>
				</tr>
				<tr align="center">
					<td><label for="memberPw">비밀번호</label></td>
					<td><input class="form-control" id="memberPw" name="memberPw" type="password" placeholder="비밀번호를 입력하세요." /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" class="btn btn-primary btn-sm" value="로그인"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						아직 회원이 아니신가요 ? &emsp;
						<input type="button" class="btn btn-primary btn-sm" value="회원가입" onclick="location.href='${contextPath}/members/join'">
					</td>
				</tr>
			</table>
			<p align="center">
	   			<img src="${contextPath }/resources/assets/images/Logo.png" width="300" >
	   		</p>
		</form>
	</div>
</body>
</html>