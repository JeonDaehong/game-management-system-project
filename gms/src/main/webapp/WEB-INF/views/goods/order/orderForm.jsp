<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${contextPath }/resources/jquery/jquery-3.5.1.min.js"></script>
<script>
	$().ready(function(){
		
		$("#myName").click(function(){
			$("#sender").val('${memberDto.memberName}');
		});
		
		$("#yourName").click(function(){
			$("#recipient").val('${memberDto.memberName}');
		});
		
		$("#myEmail").click(function(){
			$("#email").val('${memberDto.email1}@${memberDto.email1}');
		});
		
		$("#myHp").click(function(){
			$("#hp").val('${memberDto.hp1}-${memberDto.hp2}-${memberDto.hp3}');
		});
		
		$("#myAddress").click(function(){
			$("#zipcode").val('${memberDto.zipcode}');
			$("#jibunAddress").val('${memberDto.jibunAddress}');
			$("#roadAddress").val('${memberDto.roadAddress}');
			$("#namujiAddress").val('${memberDto.namujiAddress}');
		});
		
	});
</script>
<script>
	
	function checkOrdering() {
		
		if (document.getElementById('sender').value == '') {
			alert('보내는 사람을 입력 해주시기 바랍니다.');
			document.getElementById('sender').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('recipient').value == '') {
			alert('받는 사람을 입력 해주시기 바랍니다.');
			document.getElementById('recipient').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('email').value == '') {
			alert('이메일을 입력 해주시기 바랍니다.');
			document.getElementById('email').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('hp').value == '') {
			alert('휴대폰 번호를 입력 해주시기 바랍니다.');
			document.getElementById('hp').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('zipcode').value == '') {
			alert('우편번호를 입력 해주시기 바랍니다.');
			document.getElementById('zipcode').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('jibunAddress').value == '') {
			alert('지번주소를 입력 해주시기 바랍니다.');
			document.getElementById('jibunAddress').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('roadAddress').value == '') {
			alert('도로명주소를 입력 해주시기 바랍니다.');
			document.getElementById('roadAddress').scrollIntoView();
			return false;
		}
		
		if (document.getElementById('"namujiAddress"').value == '') {
			alert('나머지주소를 입력 해주시기 바랍니다.');
			document.getElementById('"namujiAddress"').scrollIntoView();
			return false;
		}
		
		return true;
	};
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="nk-main">
            <!-- START: Breadcrumbs -->
            <div class="nk-gap-1"></div>
            <div class="container">
                <ul class="nk-breadcrumbs">
                    <li><a href="${contextPath }/main/main">Home</a></li>
                    <li><span class="fa fa-angle-right"></span></li>
                    <li><a href="${contextPath }/goods/goodsList">Store</a></li>
                    <li><span class="fa fa-angle-right"></span></li>
                    <li><a href="${contextPath }/cart/inCart?memberId=${sessionScope.loginId}">Cart</a></li>
                    <li><span class="fa fa-angle-right"></span></li>
                    <li><span>Check Out</span></li>
                </ul>
            </div>
            <div class="nk-gap-1"></div>
            <!-- END: Breadcrumbs -->
            <div class="container">
                <div class="nk-store nk-store-checkout">
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">Address </span> Details</span></h3>
                    <!-- START: Billing Details -->
                    <div class="nk-gap"></div>
                    <form action="${contextPath }/order/goOrderForm" method="post" onsubmit="return checkOrdering()" class="nk-form">
                        <div class="row vertical-gap">
                            <div class="col-lg-6">
                                <div class="row vertical-gap">
                                    <div class="col-sm-6">
                                        <label for="fname">보내는 사람 <span class="text-main-1">*</span>: &nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-outline-primary btn-sm" id="myName" value="내 이름"> </label>
                                        <input type="text" class="form-control required" name="sender" id="sender" placeholder="보내는 사람 입력">
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="lname">받는 사람 <span class="text-main-1">*</span>: &nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-outline-primary btn-sm" id="yourName" value="본인"></label>
                                        <input type="text" class="form-control required" name="recipient" id="recipient" placeholder="받는 사람 입력">
                                    </div>
                                </div>
                                <div class="nk-gap-1"></div>
                                <div class="row vertical-gap">
                                    <div class="col-sm-6">
                                        <label for="email">이메일 <span class="text-main-1">*</span>: &nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-outline-primary btn-sm" id="myEmail" value="내 이메일"></label>
                                        <input type="email" class="form-control required" name="email" id="email" placeholder="이메일 입력">
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="phone">전화번호 <span class="text-main-1">*</span>: &nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-outline-primary btn-sm" id="myHp" value="내 번호"></label>
                                        <input type="tel" class="form-control required" name="hp" id="hp" placeholder="번호 입력">
                                    </div>
                                </div>
                                <div class="nk-gap-1"></div>
                            </div>
                            <div class="col-lg-6">
                            <div class="row vertical-gap">
                               <div class="col-sm-6">
                                    <label for="state">우편번호 <span class="text-main-1">*</span>: &nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-outline-primary btn-sm" id="myAddress" value="내 주소"> <input type="button" class="btn btn-outline-primary btn-sm" onclick="javascript:execDaumPostcode()" value="검색"></label>
                                    <input type="text" class="form-control required" placeholder="우편번호 입력" id="zipcode" name="zipcode">
                                </div>
                                <div class="col-sm-6">
                                    <label for="zip">지번주소 <span class="text-main-1">*</span>:</label>
                                    <input type="text" class="form-control required" id="jibunAddress" name="jibunAddress" placeholder="지번 주소 입력">
                                </div>
                                </div>
                                <div class="nk-gap-1"></div>
                                	<div class="row vertical-gap">
	                                <div class="col-sm-6">
	                                    <label for="state">도로명주소 <span class="text-main-1">*</span>:</label>
	                                    <input type="text" class="form-control required" id="roadAddress" name="roadAddress" placeholder="도로명 주소 입력">
	                                </div>
	                                <div class="col-sm-6">
	                                    <label for="zip">나머지주소 <span class="text-main-1">*</span>:</label>
	                                    <input type="text" class="form-control required" id="namujiAddress" name="namujiAddress" placeholder="나머지 주소 입력"/>
	                                </div>
	                                </div>
                                <div class="nk-gap-1"></div>
                            </div>
                        </div>
                    <!-- END: Billing Details -->
                     <div class="nk-gap-1"></div>
                     <label for="notes">기사님께 전하는 말: <span class="text-main-1">*</span></label>
                     <textarea class="form-control" name="content" id="content" maxlength="100" placeholder="오실 때 조심히 와주세요..." rows="6"></textarea>
                    <!-- START: Order Products -->
                    <div class="nk-gap-3"></div>
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">주문</span> 목록</span></h3>
                    <div class="nk-gap"></div>
                    <div class="table-responsive">
                        <table class="nk-table nk-table-sm">
                            <thead class="thead-default">
                                <tr>
                                    <th class="nk-product-cart-title">게임(상품)명</th>
                                    <th class="nk-product-cart-total">가격</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="cartDto" items="${cartList }">
	                                <tr>
	                                    <td class="nk-product-cart-title"> ${cartDto.goodsName } &times; ${cartDto.count } </td>
	                                    <td class="nk-product-cart-total"> <fmt:formatNumber type="number" maxFractionDigits="0" value="${cartDto.price * cartDto.count }" /> 원</td>
	                                </tr>
                                </c:forEach>
                                <tr class="nk-store-cart-totals-total">
                                    <td> Total </td>
                                    <td> <fmt:formatNumber type="number" maxFractionDigits="0" value="${totalPrice}" /> 원</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- END: Order Products -->
                    <div class="nk-gap-2"></div>
                    <input type="hidden" name="cartString" value="${cartString }">
                    <input type="hidden" name="totalPrice" value="${totalPrice}">
                    <input type="hidden" name="memberId" value="${sessionScope.loginId }">
                    <input type="submit" value="최종 주문하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1">
                    </form>
                </div>
            </div>
            <div class="nk-gap-2"></div>
</body>
</html>