<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script>

	function formValidationCheck(){
		
		var fileName = document.getElementById('fileName');
		if (fileName.value == ""){
			alert("이미지는 반드시 첨부해야 합니다.");
			fileName.focus();
			return false;
		}
		
		var pngCheck = fileName.value.slice(-3);
		if (pngCheck != "png" && pngCheck != "PNG" && pngCheck != "jpg" && pngCheck != "JPG"){
			alert("이미지는 png, PNG, jpg, JPG 파일만 업로드가 가능합니다.");
			fileName.focus();
			return false;
		}
		
		var subject = document.getElementById('subject');	
		if (subject.value == ""){
			alert("이름은 반드시 작성해야 합니다.");
			subject.focus();
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
					<td style="border-color: red;"> 이미지 </td>
					<td style="border-color: red;" align="center">
						<input id="fileName" name="fileName" type="file" />
						(권장 : 900 x 750)
					</td>
				</tr>
				<tr style="border-color: red;">
					<td style="border-color: red;"> 제목 </td>
					<td style="border-color: red;" align="center" >
						<input id="subject" name="subject" type="text" maxlength="20" placeholder="최대 20자" class="form-control" style="border-color: white;"/>
					</td>
				</tr>
				<tr style="border-color: red;">
					<td style="border-color: red;"> 설명 </td>
					<td style="border-color: red;" align="center">
						<textarea maxlength="200" rows="10" cols="100" name="content" id="content" class="form-control" style="border-color: white;" placeholder="최대200자"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="border-color: red;" align="center">
						<span style="color: red;"> * 이미지를 업로드 해주시기 바랍니다. </span>
						<br>
						<span style="color: red;"> * 이미지는 png / PNG / jpg / JPG 파일만 업로드가 가능합니다. </span>
					</td>
				</tr>
			</table>
			<p align="center">
				<br>
				<input type="hidden" name="memberId" value="${sessionScope.loginId }">
				<input type="submit" value="등록하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;&nbsp;
				<input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath }/imageBoard/imageBoardList'">
			</p>
		</form>
		<blockquote class="nk-blockquote">
			<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
		</blockquote>
	</div>
</body>