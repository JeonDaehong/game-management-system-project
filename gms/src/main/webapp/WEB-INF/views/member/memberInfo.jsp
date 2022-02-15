<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE>
<html>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if (data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if (extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	            if (fullRoadAddr !== ''){
	                fullRoadAddr += extraRoadAddr;
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
	            document.getElementById('roadAddress').value = fullRoadAddr;
	            document.getElementById('jibunAddress').value = data.jibunAddress;
	
	        }
	    }).open();
	}
</script>
<style>
	label, td, text, h2 {
		color: white;
	}
	
	td {
		 text-align: center;
	}
</style>
</head>
<body>
	<div class="container">
		<br>
		<h2>${memberInfo.memberId } 님의 '회원 상세 정보'</h2>
		<br>
		<table class="table table-bordered" style="background-color: black;">
			<tr>
				<td align="center">
					<label for="memberId">아이디</label>
				</td>
				<td>
					${memberInfo.memberId}
				</td>
			</tr>
			<tr>
				<td align="center">이름</td>
				<td>
				  ${memberInfo.memberName }
				 </td>
			</tr>
			<tr>
				<td align="center">성별</td>
				<td>
					<c:choose>
						<c:when test="${memberInfo.memberGender eq '101' }">
							남성
						</c:when>
						<c:otherwise>
							여성
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td align="center">생년월일</td>
				<td>
					${memberInfo.memberBirthY } 년 ${memberInfo.memberBirthM } 월 ${memberInfo.memberBirthD } 일 
				   	<c:choose>
					    <c:when test="${memberInfo.memberBirthGn=='positive'}"> 
					  		[양력]
						</c:when>
						<c:otherwise>
							[음력]
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td align="center">전화번호</td>
				<td>
				    ${memberInfo.tel1 } - ${memberInfo.tel2 } - ${memberInfo.tel3 }
				</td>
			</tr>
			<tr>
				<td align="center">핸드폰 번호</td>
				<td>
				    ${memberInfo.hp1 } - ${memberInfo.hp2 } - ${memberInfo.hp3 }
				 <br>
				 <c:choose> 
				   <c:when test="${memberInfo.smsstsYn eq 'Y' }">
				     GMS에서 발송하는 SMS 수신 여부 (o)
					</c:when>
					<c:otherwise>
					  GMS에서 발송하는 SMS 수신 여부 (x)
					</c:otherwise>
				 </c:choose>	
			    </td>
			</tr>
			<tr>
				<td align="center">이메일(e-mail)</td>
				<td>
				   ${memberInfo.email1 } @ ${memberInfo.email2 }
				   <br>  
					<c:choose> 
					   <c:when test="${memberInfo.emailstsYn eq 'Y' }">
					     GMS에서 발송하는 e-mail 수신 여부 (o)
						</c:when>
						<c:otherwise>
						  GMS에서 발송하는 e-mail 수신 여부 (x)
						</c:otherwise>
					 </c:choose>
				</td>
			</tr>
			<tr>
				<td align="center">주소</td>
				<td>
					우편 번호 : ${memberInfo.zipcode }
				   <br><br>
				  <p> 
					  지번 주소: ${memberInfo.roadAddress }
					  <br>
					  도로명 주소: ${memberInfo.jibunAddress }
					  <br>
					  나머지 주소: ${memberInfo.namujiAddress }
					   <span id="guide" style="color:#999"></span>
				   </p>
				</td>
			</tr>
			<tr>
				<td align="center">보유 포인트</td> 
				<td> ${memberInfo.attendance } 포인트 </td>
			</tr>
		</table>
		<div align="right">
			<input type="button" value="수정하기" class="btn btn-outline-primary btn-sm" onClick="location.href='${contextPath}/members/pwdCheck?updateAndDeleteCheck=update'" /> 
			<input type="button" value="삭제하기" class="btn btn-outline-primary btn-sm" onClick="location.href='${contextPath}/members/pwdCheck?updateAndDeleteCheck=delete'" /> 
			<input type="button" value="뒤로가기" class="btn btn-outline-primary btn-sm" onClick="location.href='${contextPath}/main/main'"/>
		</div>
		<br><br>
		<p align="center">
	   		<img src="${contextPath }/resources/assets/images/Logo.png" width=300 height="200">
	   	</p>
	</div>
</body>
</html>
