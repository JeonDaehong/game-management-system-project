<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
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
	        <li><a href="${contextPath }/adminNotice/noticeList">Notice</a></li>
	        <li><span class="fa fa-angle-right"></span></li>
	        <li><span>공지사항 삭제</span></li>
    	</ul>
	</div>
		<br>
		<form action="${contextPath }/adminNotice/noticeDelete" method="post">
			<table class="table nk-table" style="border-color: red;">
				<tr>
					<td style="border-color: red;" colspan="2"> '${noticeDto.subject }' 공지사항을 정말로 삭제하시겠습니까? </td>
				</tr>
			</table>
			<p align="center">
				<br>
				<input type="hidden" name="num" value="${noticeDto.num }">
				<input type="submit" value="삭제하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;&nbsp;
				<input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminNotice/noticeInfo?num=${noticeDto.num }'">
			</p>
		</form>
		<blockquote class="nk-blockquote">
			<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
		</blockquote>
	</div>
</body>