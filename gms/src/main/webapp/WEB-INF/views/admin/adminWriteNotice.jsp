<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script>

	function formValidationCheck(){
		
		var subjectValue = document.getElementById('subject');
		if (subjectValue.value == ""){
			alert("제목은 반드시 입력해야 합니다.");
			subjectValue.focus();
			return false;
		}
		
		var contentValue = document.getElementById('content');
		if (contentValue.value == ""){
			alert("내용은 반드시 입력해야 합니다.");
			contentValue.focus();
			return false;
		}
		
		return true;
		
	}
</script>
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
		<br><br>
		<h1 class="nk-decorated-h-3"><span>공지사항 작성</span></h1>
		<br>
		<form action="${contextPath }/adminNotice/noticeWriter" method="post" onsubmit="return formValidationCheck()">
			<table class="table nk-table" style="border-color: red;">
				<tr style="border-color: red;">
					<td style="border-color: red;">제목</td>
					<td style="border-color: red;"><input name="subject" id="subject" type="text" class="form-control" style="border-color: white;" /></td>
				</tr>
				<tr>
					<td style="border-color: red;">공지 내용</td>
					<td style="border-color: red;" align="center">
						<textarea rows="10" cols="100" name="content" id="content" class="form-control" style="border-color: white;"></textarea>
					</td>
				</tr>
			</table>
			<p align="center">
				<br>
				<input type="hidden" name="writer" value="admin">
				<input type="submit" value="등록하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;&nbsp;
				<input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="${contextPath}/adminNotice/noticeWriter">
			</p>
		</form>
		<blockquote class="nk-blockquote">
			<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
		</blockquote>
	</div>
</body>