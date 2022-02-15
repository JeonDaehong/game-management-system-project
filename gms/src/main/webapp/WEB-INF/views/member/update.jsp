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
	
	// 필수 체크 항목 OnSubmit
	function addMemberCheck() {
		
		if (document.getElementById('memberName').value == '') {
			alert('이름을 입력 해주시기 바랍니다.');
			document.getElementById('memberName').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('memberBirthY').value == '') {
			alert('생년월일을 입력 해주시기 바랍니다.');
			document.getElementById('memberBirthY').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('memberBirthM').value == '') {
			alert('생년월일을 입력 해주시기 바랍니다.');
			document.getElementById('memberBirthY').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('memberBirthD').value == '') {
			alert('생년월일을 입력 해주시기 바랍니다.');
			document.getElementById('memberBirthY').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('tel1').value == '') {
			alert('전화번호를 입력 해주시기 바랍니다.');
			document.getElementById('tel1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('tel2').value == '') {
			alert('전화번호를 입력 해주시기 바랍니다.');
			document.getElementById('tel1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('tel3').value == '') {
			alert('전화번호를 입력 해주시기 바랍니다.');
			document.getElementById('tel1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('hp1').value == '') {
			alert('휴대번호를 입력 해주시기 바랍니다.');
			document.getElementById('hp1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('hp2').value == '') {
			alert('휴대번호를 입력 해주시기 바랍니다.');
			document.getElementById('hp1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('hp3').value == '') {
			alert('휴대번호를 입력 해주시기 바랍니다.');
			document.getElementById('hp1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('email1').value == '') {
			alert('이메일을 입력 해주시기 바랍니다.');
			document.getElementById('email1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('email2').value == '') {
			alert('이메일을 입력 해주시기 바랍니다.');
			document.getElementById('email1').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('zipcode').value == '') {
			alert('우편번호를 입력 해주시기 바랍니다.');
			document.getElementById('zipcode').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('roadAddress').value == '') {
			alert('도로명주소를 입력 해주시기 바랍니다.');
			document.getElementById('roadAddress').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('jibunAddress').value == '') {
			alert('지번주소를 입력 해주시기 바랍니다.');
			document.getElementById('jibunAddress').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('mamujiAddress').value == '') {
			alert('상세주소 입력 해주시기 바랍니다.');
			document.getElementById('mamujiAddress').scrollIntoView();
			return false;
		}
		
		return true;
	}
</script>
<style>
	label, td, text, h2 {
		color: white;
	}
</style>
</head>
<body>
	<div class="container">
		<br>
		<h2>회원 정보 수정</h2>
		<br>
		<form action="${contextPath }/members/update" method="post">	
			<table class="table table-bordered" style="background-color: black;">
					<tr>
						<td align="center">
							<label for="memberId">아이디</label>
						</td>
						<td>
							<input name="memberId" id="memberId" type="text" class="form-control"  value="${memberInfo.memberId}"  readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td align="center">이름</td>
						<td>
						  <input name="memberName" type="text" class="form-control" value="${memberInfo.memberName }" />
						 </td>
					</tr>
					<tr>
						<td align="center">성별</td>
						<td>
					   	  <input type="radio" name="memberGender" value="101" <c:if test="${memberInfo.memberGender eq '101' }">checked </c:if> /> 남성 &emsp;&emsp;&emsp;
					      <input type="radio" name="memberGender" value="102" <c:if test="${memberInfo.memberGender eq '102' }">checked </c:if> /> 여성
						</td>
					</tr>
					<tr>
						<td align="center">생년월일</td>
						<td>
						   <select class="form-control" name="memberBirthY" style="display:inline; width:70px; padding:0" >
						     <c:forEach var="i" begin="1" end="100">
						       <c:choose>
						         <c:when test="${memberInfo.memberBirthY==1920+i }">
								   <option value="${1920+i}" selected>${1920+i} </option>
								</c:when>
								<c:otherwise>
								  <option value="${1920+i}" >${1920+i} </option>
								</c:otherwise>
								</c:choose>
						   	</c:forEach>
						</select>년 
						<select class="form-control"  name="memberBirthM" style="display:inline; width:70px; padding:0">
							<c:forEach var="i" begin="1" end="12">
						       <c:choose>
						         <c:when test="${memberInfo.memberBirthM == i}">
								   <option value="${i}" selected>${i}</option>
								</c:when>
								<c:otherwise>
								  <option value="${i}">${i}</option>
								</c:otherwise>
								</c:choose>
						   	</c:forEach>
						</select>월 
						<select class="form-control" name="memberBirthD" style="display:inline; width:70px; padding:0">
								<c:forEach var="i" begin="1" end="31">
						       <c:choose>
						         <c:when test="${memberInfo.memberBirthD == i}">
								   <option value="${i}" selected>${i}</option>
								</c:when>
								<c:otherwise>
								  <option value="${i}">${i}</option>
								</c:otherwise>
								</c:choose>
						   	</c:forEach>
						</select>일 &emsp;&emsp;
						   	<c:choose>
							    <c:when test="${memberInfo.memberBirthGn=='positive'}"> 
							  		<input type="radio" name="memberBirthGn" value="positive" checked /> 양력 &emsp; 
									<input type="radio" name="memberBirthGn" value="lunar" /> 음력
								</c:when>
								<c:otherwise>
									<input type="radio" name="memberBirthGn" value="positive" /> 양력 &emsp;
									<input type="radio" name="memberBirthGn" value="lunar" checked  /> 음력
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td align="center">전화번호</td>
						<td>
						    <select class="form-control" name="tel1" style="display:inline; width:70px; padding:0">
								<option>없음</option>
								<option <c:if test="${memberInfo.tel1 eq '02'}"> selected </c:if> value="02">02</option>
								<option <c:if test="${memberInfo.tel1 eq '031'}"> selected </c:if> value="031">031</option>
								<option <c:if test="${memberInfo.tel1 eq '032'}"> selected </c:if> value="032">032</option>
								<option <c:if test="${memberInfo.tel1 eq '033'}"> selected </c:if> value="033">033</option>
								<option <c:if test="${memberInfo.tel1 eq '041'}"> selected </c:if> value="041">041</option>
								<option <c:if test="${memberInfo.tel1 eq '042'}"> selected </c:if> value="042">042</option>
								<option <c:if test="${memberInfo.tel1 eq '043'}"> selected </c:if> value="043">043</option>
								<option <c:if test="${memberInfo.tel1 eq '044'}"> selected </c:if> value="044">044</option>
								<option <c:if test="${memberInfo.tel1 eq '051'}"> selected </c:if> value="051">051</option>
								<option <c:if test="${memberInfo.tel1 eq '052'}"> selected </c:if> value="052">052</option>
								<option <c:if test="${memberInfo.tel1 eq '053'}"> selected </c:if> value="053">053</option>
								<option <c:if test="${memberInfo.tel1 eq '054'}"> selected </c:if> value="054">054</option>
								<option <c:if test="${memberInfo.tel1 eq '055'}"> selected </c:if> value="055">055</option>
								<option <c:if test="${memberInfo.tel1 eq '061'}"> selected </c:if> value="061">061</option>
								<option <c:if test="${memberInfo.tel1 eq '062'}"> selected </c:if> value="062">062</option>
								<option <c:if test="${memberInfo.tel1 eq '063'}"> selected </c:if> value="063">063</option>
								<option <c:if test="${memberInfo.tel1 eq '064'}"> selected </c:if> value="064">064</option>
								<option <c:if test="${memberInfo.tel1 eq '070'}"> selected </c:if> value="070">070</option>
						</select> 
						    - <input type="text" class="form-control"  name="tel2" value="${memberInfo.tel2 }" maxlength="4" style="display:inline; width:70px; padding:0"> 
						    - <input type="text" class="form-control"  name="tel3" value="${memberInfo.tel3 }" maxlength="4" style="display:inline; width:70px; padding:0">
						</td>
					</tr>
					<tr>
						<td align="center">핸드폰 번호</td>
						<td>
						   <select class="form-control" name="hp1" style="display:inline; width:70px; padding:0">
								<option>없음</option>
								<option <c:if test="${memberInfo.hp1 eq '010'}"> selected </c:if> value="010">010</option>
								<option <c:if test="${memberInfo.hp1 eq '011'}"> selected </c:if> value="011">011</option>
								<option <c:if test="${memberInfo.hp1 eq '016'}"> selected </c:if> value="016">016</option>
								<option <c:if test="${memberInfo.hp1 eq '017'}"> selected </c:if> value="017">017</option>
								<option <c:if test="${memberInfo.hp1 eq '018'}"> selected </c:if> value="018">018</option>
								<option <c:if test="${memberInfo.hp1 eq '019'}"> selected </c:if> value="019">019</option>
						</select> 
						 - <input type="text" name="hp2" class="form-control" value="${memberInfo.hp2 }" maxlength="4" style="display:inline; width:70px; padding:0"> 
						 - <input type="text"name="hp3" class="form-control" value="${memberInfo.hp3 }" maxlength="4" style="display:inline; width:70px; padding:0"><br>
						 <br>
						 <c:choose> 
						   <c:when test="${memberInfo.smsstsYn eq 'Y' }">
						     <input type="checkbox" name="smsstsYn" id="smsstsYn" value="Y" checked /> GMS에서 발송하는 SMS 소식을 수신합니다.
							</c:when>
							<c:otherwise>
							  <input type="checkbox" name="smsstsYn" id="smsstsYn" value="Y"  /> GMS에서 발송하는 SMS 소식을 수신합니다.
							</c:otherwise>
						 </c:choose>	
					    </td>
					</tr>
					<tr>
						<td align="center">이메일(e-mail)</td>
						<td>
						   <input type="text" class="form-control" name="email1" value="${memberInfo.email1 }" style="display:inline; width:100px; padding:0"/> @ 
						   <input type="text" class="form-control"  name="email2" value="${memberInfo.email2 }" style="display:inline; width:100px; padding:0"/> <br><br>  
							<c:choose> 
							   <c:when test="${memberInfo.emailstsYn eq 'Y' }">
							     <input type="checkbox" name="emailstsYn" id="emailstsYn" value="Y" checked /> GMS에서 발송하는 e-mail을 수신합니다.
								</c:when>
								<c:otherwise>
								  <input type="checkbox" name="emailstsYn" id="emailstsYn" value="Y"  /> GMS에서 발송하는 e-mail을 수신합니다.
								</c:otherwise>
							 </c:choose>
						</td>
					</tr>
					<tr>
						<td align="center">주소</td>
						<td>
						   <input type="text" id="zipcode" name="zipcode" class="form-control"  value="${memberInfo.zipcode }" size="70px" style="display:inline; width:150px; padding:0"> 
						    <input type="button" class="btn btn-outline-primary btn-sm" onclick="javascript:execDaumPostcode()" value="검색">
						  <br><br>
						  <p> 
							  지번 주소:<br><input type="text" id="roadAddress"  name="roadAddress" class="form-control" value="${memberInfo.roadAddress }"><br>
							  도로명 주소: <input type="text" id="jibunAddress" name="jibunAddress" class="form-control" value="${memberInfo.jibunAddress }"><br>
							  나머지 주소: <input type="text"  name="namujiAddress" class="form-control" value="${memberInfo.namujiAddress }" />
							   <span id="guide" style="color:#999"></span>
						   </p>
						</td>
					</tr>
			</table>
			<div align="right">
				<input type="hidden" name="attendance" id="attendance" value="${memberInfo.attendance }">
				<input type="hidden" name="memberPw" id="memberPw" value="${memberInfo.memberPw }">
				<input type="hidden" name="attendanceCheck" id="attendanceCheck" value="${memberInfo.attendanceCheck }">
				<input type="hidden" name="consentOrNot" id="consentOrNot" value="${memberInfo.consentOrNot }">
				<input type="submit" value="수정하기" class="btn btn-outline-primary btn-sm">
				<input type="button" value="취소하기" class="btn btn-outline-primary btn-sm" onClick="location.href='${contextPath}/main/main'"/>
			</div>
		</form>	
			<p align="center">
	   			<img src="${contextPath }/resources/assets/images/Logo.png" width=300 height="200">
	   		</p>
	</div>
</body>
</html>
