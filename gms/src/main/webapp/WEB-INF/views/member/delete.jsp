<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script>
	function loginCheck() {
		
		if (document.getElementById('deleteChcek').value != '삭제합니다.') {
			alert('해당 문구를 마침표까지 명확하게 따라 적어주시기 바랍니다.');
			document.getElementById('deleteChcek').focus();
			return false;
		}
		
		return true;
	}
</script>
<style>
	label, h1, p, h4, th {
		color: white;
	}
</style>
</head>
<body>
	<div class="container">
		<br>
		<h1>계정 삭제</h1>
		<br>
		<form action="${contextPath}/members/delete" method="post" onsubmit="return loginCheck()">
			<table class="table" border="1" style="background-color: black;">
				<tr align="center">
					<th>
						<br>
						<h4>정말로 계정을 삭제하시겠습니까?</h4>
						<br>
						<span style="color: red;">* 삭제 후, 5일동안은 DB에 보관됩니다. (약관 내용 참조)</span>
						<br>
						<span style="color: red;">* 삭제 후, 다시 복구는 불가능합니다. (적립 포인트 손실)</span>
						<br><br>
						"삭제합니다."
						<br>
						""를 제외하고, 명확하게 적어주시기 바랍니다.
						<br>
					</th>
				</tr>
				<tr>
					<td>
						<input type="text" id="deleteChcek" class="form-control" placeholder="삭제합니다.">
					</td>
				</tr>
			</table>
			<div align="right">
				<input type="hidden" name="memberId" value="${memberInfo.memberId }">
				<input type="submit" value="삭제하기" class="btn btn-primary btn-sm">
				<input type="button" value="취소하기" class="btn btn-primary btn-sm" onClick="location.href='${contextPath}/main/main'"/>
			</div>
		</form>
		<p align="center">
	 		<img src="${contextPath }/resources/assets/images/Logo.png" width=300 height="200">
	 	</p>
	 </div>
</body>
</html>