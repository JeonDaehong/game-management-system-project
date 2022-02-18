<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script>

	function formValidationCheck(){
		
		var smallImageFileName = document.getElementById('smallImageFileName');
		if (smallImageFileName.value == ""){
			alert("상품 이미지는 반드시 첨부해야 합니다.");
			smallImageFileName.focus();
			return false;
		}
		
		var bigImageFileName = document.getElementById('bigImageFileName');
		if (bigImageFileName.value == ""){
			alert("상품 이미지는 반드시 첨부해야 합니다.");
			bigImageFileName.focus();
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
		<div class="container">
		<br>
    	<ul class="nk-breadcrumbs">
	        <li><a href="${contextPath }/main/main">Home</a></li>
	        <li><span class="fa fa-angle-right"></span></li>
	        <li><a href="${contextPath }/imageBoard/imageBoardList">GALLERY</a></li>
	        <li><span class="fa fa-angle-right"></span></li>
	        <li><span>이미지 업로드</span></li>
    	</ul>
	</div>
		<br>
		<form action="${contextPath }/imageBoard/imageBoardWrite" method="post" enctype="multipart/form-data" onsubmit="return formValidationCheck()">
			<table class="table nk-table" style="border-color: red;">
				<tr style="border-color: red;">
					<td style="border-color: red;"> 이미지 1 : (300 x 265 / .png 파일만)</td>
					<td style="border-color: red;" align="center">
						<input id="smallImageFileName" name="smallImageFileName" type="file" />
					</td>
				</tr>
				<tr>
					<td style="border-color: red;"> 이미지 2 : (1015 x 572 / .png 파일만) </td>
					<td style="border-color: red;" align="center">
						<input id="bigImageFileName" name="bigImageFileName" type="file" /> 
					</td>
				</tr>
				<tr>
					<td colspan="2" style="border-color: red;" align="center">
						<span style="color: red;"> * 같은 이미지를 크기에 맞게 수정 후 업로드 해주시기 바랍니다. </span>
						<br><br>
						이미지 1 : 썸네일용 작은 이미지
						<br>
						이미지 2 : 클릭 시 보이는 큰 이미지
					</td>
				</tr>
			</table>
			<p align="center">
				<br>
				<input type="hidden" name="writer" value="admin">
				<input type="submit" value="등록하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;&nbsp;
				<input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath }/imageBoard/imageBoardList'">
			</p>
		</form>
		<blockquote class="nk-blockquote">
			<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
		</blockquote>
	</div>
</body>