<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${contextPath }/resources/jquery/jquery-3.5.1.min.js"></script>
<script>

	var idCheck = false;
	var idFormCheck = false;
	var pwdCheck = false;
	var pwdFormCheck = false;
	
	var idRegex = /^[a-zA-Z0-9]{5,15}$/;
	var pwRegex = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
	
	$().ready(function() {
	
		// 이메일 뒷 부분 선택 시, 자동으로 바뀜
		$("#select_email").change(function(){
			if ($("#select_email option:selected").val() == 'none') {
				$("#email2").val('');
			} else {
				$("#email2").val($("#select_email option:selected").val());
			}
		});
		
		// 중복확인 버튼 클릭 시 중복 확인
		$("#btnOverlapped").click(function(){
			
		    var memberId = $("#memberId").val();
		   
		    if (memberId == ''){
		   		alert("ID를 입력하세요");
		   		return;
		    }
		    
		    if (idFormCheck == false) {
		    	alert("ID를 양식에 맞게 작성하세요.");
		   		return;
		    }
		   
		    $.ajax({
		       type : "post",
		       url  : "${contextPath}/members/overlapped",
		       data : {"memberId" : memberId},
		       success : function (data){
		          if (data == 'false'){
					  alert("사용할 수 있는 ID입니다.");
					  idCheck = true;
					  document.getElementById('idTarget').innerHTML = '';
		          }
		          else {
		          	  alert("중복된 ID가 있습니다.");
		          	  idCheck = false;
		          }
		       }
		    });
		    
		 });	
		
	});
	
	
	// 아이디 바꿀 시 다시 중복체크
	function idChange() {
		
		if (document.getElementById('memberId').value.match(idRegex)) {
			document.getElementById('idTarget').innerHTML = '';
			idFormCheck = true;
		} else {
			document.getElementById('idTarget').innerHTML = "<span style='color: red;'>* 아이디는 영어와 숫자만으로 5~15자를 입력해주세요.</span>";
			idFormCheck = false;
			idCheck = false;
			return
		}
		
		idCheck = false;
		if (idCheck == false) {
			document.getElementById('idTarget').innerHTML = "<span style='color: red;'>* 아이디 중복확인을 해주세요.</span>";
			return
		}
	}
	
	// 패스워드 양식 체크
	function pwdFormCheckFunction() {
		var pwdForm = document.getElementById('memberPw').value;
		
		if (pwdForm.match(pwRegex)) {
			document.getElementById('pwdTarget').innerHTML = '';
			pwdFormCheck = true;
			return
		} else {
			document.getElementById('pwdTarget').innerHTML = "<span style='color: red;'>* 비밀번호는 영문,숫자,특수문자를 포함한 8~15자리 이상입니다.</span>";
			pwdFormCheck = false;
			return;
		}
	}
	
	// 패스워드 확인 체크
	function pwdCheckFunction() {
		var pwd = document.getElementById('memberPw').value;
		var rePwd = document.getElementById('memberPwCheck').value;
		if (pwdFormCheck) {
			if (pwd == rePwd) {
				document.getElementById('rePwdTarget').innerHTML = '';
				pwdCheck = true;
				return
			} else {
				document.getElementById('rePwdTarget').innerHTML = "<span style='color: red;'>* 비밀번호가 동일하지 않습니다.</span>";;
				pwdCheck = false;
				return
			}
		}
	}
	
	// 회원가입을 위해 필요한 필수 체크 항목 OnSubmit
	function addMemberCheck() {
		
		var consentOrNotCheck = document.getElementById('consentOrNot').checked;
		if (consentOrNotCheck == false) {
			alert('개인정보 약관에 동의를 누르셔야됩니다.');
			document.getElementById('consentOrNot').focus();
			return false;
		}
		
		if (idCheck == false) {
			alert('아이디 중복확인을 해주시기 바랍니다.');
			document.getElementById('btnOverlapped').focus();
			return false;
		}
		
		if (pwdCheck == false) {
			alert('패스워드를 확인 해주시기 바랍니다.');
			document.getElementById('memberPw').scrollIntoView();
			return false;
		}
		
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
	td, th, body, label {
		color: White;
	}
	#joinTable, #agreementTable {
		background-color: black;
	}
	td:first-child {
		text-align: center;
		font-weight: bold;
	}
</style>
</head>
<body>
	<div class="container">
		<form action="${contextPath}/members/join" method="post" onsubmit="return addMemberCheck()">
		<br>
		<h3>회원가입</h3>
		<br>
		<table id="agreementTable" class="table table-bordered">
			<tr>
				<th> * 개인정보 수집 및 이용 (필수)</th>
			</tr>
			<tr>
				<td>
					<table class="table table-bordered" style="background-color: gray; border-color: white; ">
						<tr>
							<th>목적</th>
							<th>항목</th>
							<th>보유기간</th>
						</tr>
						<tr>
							<td>이용자 식별</td>
							<td>아이디(이메일), 닉네임, 성명, 생일, 철생연도를 포함한 기타 회원가입시 작성한 정보</td>
							<td>회원탈퇴 후 5일까지</td>
						</tr>
						<tr>
							<td>서비스 이용 및 문의상담</td>
							<td>아이디(이메일)</td>
							<td>회원탈퇴 후 5일까지</td>
						</tr>
						<tr>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="left">
					<input id="consentOrNot" type="checkbox" name="consentOrNot" value="Y"/> 개인정보 수집 및 이용에 동의합니다.
	           	</td>
			</tr>
			<tr>
				<td>
					<span style="color: red;">※ 해당 서비스 제공을 위해서 필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스를 이용하실 수 있습니다.</span>
				</td>
			</tr>
		</table>
		<br>
		<br>
		<table id="joinTable" class="table table-bordered">
			<colgroup>
				<col width="20%" >
				<col width="80%">
			</colgroup>
			<tr>
				<th colspan="2"> * 회원 정보 입력</th>
			</tr>
			<tr>
				<td>
					<label for="memberId">아이디</label>
				</td>
				<td>
		            <input type="text" class="form-control" style="display:inline; width:300px;" 
		            	name="memberId" onchange="idChange()" id="memberId" maxlength="15" placeholder="아이디를 입력하세요. (최대 15자)" />&emsp;
		            <input type="button" id="btnOverlapped" class="btn btn-outline-primary btn-sm" value="중복확인" />
		            <p id="idTarget"></p>
		        </td>
		    </tr>
	        <tr>
		        <td>
		        	 <label class="small mb-1" for="memberPw" >비밀번호</label>
		        </td>
		        <td>
		        	<input class="form-control" onchange="pwdFormCheckFunction()" id="memberPw" name="memberPw" type="password" maxlength="15" placeholder="비밀번호를 입력하세요. (최대 15자)" />
		        	<p id="pwdTarget"></p>
		        </td>
	        </tr>
	        <tr>
		        <td>
		        	 <label class="small mb-1">비밀번호 확인</label>
		        </td>
		        <td>
		        	<input class="form-control" id="memberPwCheck" type="password" onchange="pwdCheckFunction()" placeholder="비밀번호를 입력하세요." />
		        	<p id="rePwdTarget"></p>
		        </td>
	        </tr>         
	        <tr>
		        <td>
		        	<label class="small mb-1" for="memberName">이름</label>
		        </td>
		        <td>
		        	<input type="text" class="form-control" name="memberName"  id="memberName" maxlength="15" placeholder="이름을 입력하세요." />
		        </td>
	        </tr>                
		    <tr>
		        <td>
		        	<label for="g1">성별</label>
		        </td>
		        <td>
		        	<input type="radio" id="g1" name="memberGender" value="101" checked /> 남성 &emsp;&emsp;&emsp;
					<input type="radio" id="g2" name="memberGender" value="102" /> 여성
		        </td>
	        </tr>                              
	        <tr>
		        <td>
		        	<label class="small mb-1" for="memberBirthY">생년월일</label>
		        </td>
		        <td>
	                <select class="form-control" id="memberBirthY" name="memberBirthY" style="display:inline; width:70px; padding:0" >
					<c:forEach var="year" begin="1" end="100">
						<c:choose>
							<c:when test="${year==100}">
								<option value="${1922+year}" selected>${ 1922+year}</option>
							</c:when>
							<c:otherwise>
								<option value="${1922+year}">${ 1922+year}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</select> 년 
					<select class="form-control" name="memberBirthM" id="memberBirthM" style="display:inline; width:50px; padding:0">
					  <c:forEach var="month" begin="1" end="12">
					    <c:choose>
					        <c:when test="${month==1}">
							   <option value="${month}" selected>${month }</option>
							</c:when>
							<c:otherwise>
							  <option value="${month}">${month}</option>
							</c:otherwise>
						</c:choose>
					  </c:forEach>
					</select> 월  
					<select class="form-control" name="memberBirthD" id="memberBirthD" style="display:inline; width:50px; padding:0">
					<c:forEach var="day" begin="1" end="31">
					   <c:choose>
						    <c:when test="${day==1}">
							   <option value="${day}" selected>${day}</option>
							</c:when>
							<c:otherwise>
							  <option value="${day}">${day}</option>
							</c:otherwise>
						</c:choose>
					 </c:forEach>
					</select> 일 &nbsp;
					<div class="custom-control custom-radio" style="display:inline;">
						<input class="custom-control-input" type="radio" id="memberBirthGn2" name="memberBirthGn" value="positive" checked />
						<label class="custom-control-label" for="memberBirthGn2">양력</label>
					</div>  
					<div class="custom-control custom-radio" style="display:inline;">
						<input class="custom-control-input" type="radio" id="memberBirthGn1" name="memberBirthGn" value="lunar" />
						<label class="custom-control-label" for="memberBirthGn1">음력</label>
		            </div>  
		        </td>
	        </tr>                        
	        <tr>
		        <td>
		        	<label class="small mb-1" for="tel1">집 전화번호</label>
		        </td>
		        <td>
		        	<select class="form-control" id="tel1" name="tel1" style="display:inline; width:70px; padding:0">
						<option>없음</option>
						<option value="02" selected>02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="044">044</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>													
					 </select> - 
			 		<input class="form-control" size="10px" type="text" id="tel2" name="tel2" maxlength="4" style="display:inline; width:100px; padding:0" > - 
			 		<input class="form-control" size="10px" type="text" id="tel3" name="tel3" maxlength="4" style="display:inline; width:100px; padding:0">
		        </td>
	        </tr>                         
	        <tr>
		        <td>
		        	<label class="small mb-1" for="hp1">핸드폰 번호</label>
		        </td>
		        <td>
		        	<select class="form-control" id="hp1" name="hp1" style="display:inline; width:70px; padding:0">
						<option>없음</option>
						<option selected value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select> - 
					<input class="form-control"  size="10px" id="hp2" type="text" name="hp2" maxlength="4" style="display:inline; width:100px; padding:0"> - 
					<input class="form-control"  size="10px" id="hp3" type="text" name="hp3" maxlength="4" style="display:inline; width:100px; padding:0"><br><br>
					<input id="smsstsYn" type="checkbox" name="smsstsYn"  value="Y" checked/> GMS에서 발송하는 SMS 소식을 수신합니다.
		        </td>
	        </tr>                         
	        <tr>
		        <td>
		        	<label class="small mb-1" for="email1">이메일</label>
		        </td>
		        <td>
		        	<input class="form-control"  size="10px"  type="text" id="email1" name="email1" maxlength="20" style="display:inline; width:100px; padding:0"> @ 
						<input class="form-control"  size="10px"  type="text" id="email2" name="email2" style="display:inline; width:100px; padding:0">
						<select class="form-control" id="select_email" name="email3" style="display:inline; width:100px; padding:0">
							 <option value="none" selected>직접입력</option>
							 <option value="gmail.com">gmail.com</option>
							 <option value="naver.com">naver.com</option>
							 <option value="daum.net">daum.net</option>
							 <option value="nate.com">nate.com</option>
						</select><br><br>
	                    <input id="emailstsYn" type="checkbox" name="emailstsYn"  value="Y" checked/> GMS에서 발송하는 E-mail을 수신합니다.
		        </td>
	        </tr>                              
	        <tr>
		        <td>
		        	<label class="small mb-1" for="zipcode">주소</label>
		        </td>
		        <td>
		        	<input class="form-control"  size="70px"  type="text" placeholder="  우편번호 입력" id="zipcode" name="zipcode" style="display:inline; width:150px; padding:0">
	                <input type="button" class="btn btn-outline-primary btn-sm" onclick="javascript:execDaumPostcode()" value="검색">
	                <div></div><br>
	                도로명 주소 : <input type="text" class="form-control" id="roadAddress"  name="roadAddress" > <br>
					지번 주소 : <input type="text" class="form-control" id="jibunAddress" name="jibunAddress" > <br>
					나머지 주소: <input type="text" class="form-control" id="mamujiAddress" name="namujiAddress"/>
		        </td>
	        </tr>                              
	        <tr>
		        <td colspan="2">
		        	<input type="submit" value="회원가입하기" class="btn btn-primary btn-block" >
		        </td>
		    </tr>
		    <tr>
		        <td colspan="2" align="center">
		        	이미 회원가입이 되어있다면 ? <a href="${contextPath}/members/login"><strong>로그인하기</strong></a>
		        </td>
	        </tr>                            
	     </table>
	     </form>
     </div>
</body>
</html>