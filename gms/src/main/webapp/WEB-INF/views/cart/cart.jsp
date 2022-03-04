<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<c:if test="${isLogOn ne true }">
	<script>
		alert('로그인 후에 열람하실 수 있습니다.');
		location.href = '${contextPath}/members/login';
	</script>
</c:if>
<script>
	
	// Jquery : 시작 시, 가격 측정 1회
	$().ready(function(){
		
		var cartLength = $("input[name=price]").length;
		
		var priceArr = new Array(cartLength);
		var countArr = new Array(cartLength);
		var totalPriceArr = new Array(cartLength);
		
		var addPrice = 0;
		
		for (var i=0; i<cartLength; i++) {
			
			priceArr[i] = $("input[name=price]").eq(i).val();
			countArr[i] = $("input[name=count]").eq(i).val();
			totalPriceArr[i] = $(".totalPrice").eq(i);
			
			tempPrice = (priceArr[i] * countArr[i]);
			tempPrice = tempPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			totalPriceArr[i].html('<strong>' + tempPrice + ' 원' + '</strong>');
			
			addPrice += (priceArr[i] * countArr[i]);
		}
		
		addPrice = addPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		$('#allTotalPrice').html('<strong> 총 가격 : ' + addPrice + ' 원' + '</strong>');
		
		
		// 각 물품별 개수 변경
		$("input[name=count]").click(function(){
			
			var addPrice = 0;
		
			var cartLength = $("input[name=price]").length;
			
			var priceArr = new Array(cartLength);
			var countArr = new Array(cartLength);
			var totalPriceArr = new Array(cartLength);
			
			for (var i=0; i<cartLength; i++) {
				
				priceArr[i] = $("input[name=price]").eq(i).val();
				countArr[i] = $("input[name=count]").eq(i).val();
				totalPriceArr[i] = $(".totalPrice").eq(i);
				
				tempPrice = (priceArr[i] * countArr[i]);
				tempPrice = tempPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				totalPriceArr[i].html('<strong>' + tempPrice + ' 원' + '</strong>');
				
				addPrice += (priceArr[i] * countArr[i]);
			}
			
			addPrice = addPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			$('#allTotalPrice').html('<strong> 총 가격 : ' + addPrice + ' 원' + '</strong>');
			
		});
		
		
		// 물품 구매 버튼
		$("#buyButton").click(function(){
			
			var cartString = '';
			
			var cartLength = $("input[name=price]").length;
			
			var buyCheckArr = new Array(cartLength);
			var priceArr = new Array(cartLength);
			var countArr = new Array(cartLength);
			var memberIdArr = new Array(cartLength);
			var goodsNameArr = new Array(cartLength);
			
			for (var i=0; i<cartLength; i++) {
				
				buyCheckArr[i] = $("input:checkbox[name=buyCheck]:checked").eq(i).val();
				
				if (buyCheckArr[i] != null) {
				
					memberIdArr[i] = $("input[name=memberId]").eq(i).val();
					goodsNameArr[i] = $("input[name=goodsName]").eq(i).val();
					priceArr[i] = $("input[name=price]").eq(i).val();
					countArr[i] = $("input[name=count]").eq(i).val();
					
					cartString += memberIdArr[i] + '/' + goodsNameArr[i] + '/' + priceArr[i] + '/' + countArr[i] + ',';
			
				}
				
			}
			
			if (cartString == '') {
				alert('주문할 상품이 없습니다. (상품을 체크해주세요.)');
				return
			}
			
			cartString = cartString.substring(0, cartString.length - 1);
			
			// ajax로 카트 물품 넘겨주기
			$.ajax({
				
				type : 'GET',
				url  : '${contextPath}/order/goOrder',
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				data : {"cartString" : cartString},
				success : function(data) {
					location.href = '${contextPath}/order/orderForm?cartString=' + data;
				}
				
				
			});
			
		});
		
	});
	
</script>
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
                    <li><span>Cart</span></li>
                </ul>
            </div>
            <div class="nk-gap-1"></div>
            <!-- END: Breadcrumbs -->
            <div class="container">
                <div class="nk-store nk-store-cart">
                    <div class="table-responsive">
                        <!-- START: Products in Cart -->
                        <table class="table nk-store-cart-products">
                            <tbody>
                            	<c:choose>
                            		<c:when test="${empty cartList }">
                            			<tr>
                            				
                            				<td class="nk-product-cart-thumb" align="center">
                            					현재 카트에 담겨있는 상품이 없습니다.
                            				</td>
                            			</tr>
                            		</c:when>
                            		<c:otherwise>
                            			<c:forEach var="cartDto" items="${cartList }" varStatus="status">
                            				<tr>
                            					<td class="nk-product-cart-title">
                            						<h5 class="h6">체크:</h5>
                            						<div class="nk-gap-1"></div>
                            						<input type="checkbox" name="buyCheck" value="${cartDto.num }">
                            					</td>
			                                    <td class="nk-product-cart-thumb">
			                                        <img src="${contextPath }/gameListThumbnails?goodsFileName=${cartDto.filename}" alt="img" width="115">
			                                    </td>
			                                    <td class="nk-product-cart-title">
			                                        <h5 class="h6">상품명:</h5>
			                                        <div class="nk-gap-1"></div>
			                                        <h2 class="nk-post-title h4">
			                                            ${cartDto.goodsName}
			                                        </h2>
			                                        <input type="hidden" name="memberId" value="${cartDto.memberId}">
			                                        <input type="hidden" name="goodsName" value="${cartDto.goodsName }">
			                                        <input type="hidden" name="filename" value="${cartDto.filename }">
			                                    </td>
			                                    <td class="nk-product-cart-price">
			                                        <h5 class="h6">가격:</h5>
			                                        <div class="nk-gap-1"></div>
			                                        <strong>${cartDto.price} 원</strong>
			                                    </td>
			                                    <td class="nk-product-cart-quantity">
			                                        <h5 class="h6">개수:</h5>
			                                        <div class="nk-gap-1"></div>
			                                        <div class="nk-form">
			                                        	<input type="hidden" name="price" value="${cartDto.price}">
			                                            <input type="number" name="count" class="form-control" value="${cartDto.count }" min="1" max="9" maxlength="1">
			                                        </div>
			                                    </td>
			                                    <td class="nk-product-cart-total">
			                                        <h5 class="h6">총가격:</h5>
			                                        <div class="nk-gap-1"></div>
			                                        <div class="totalPrice"><strong><fmt:formatNumber type="number" maxFractionDigits="0" value="${cartDto.price}"></fmt:formatNumber> 원</strong></div>
			                                    </td>
			                                    <td class="nk-product-cart-remove">
			                                    	<a href="${contextPath}/cart/cartDelete?memberId=${cartDto.memberId}&goodsName=${cartDto.goodsName}"><span class="ion-android-close"></span></a>
			                                    </td>
			                                </tr>
                            			</c:forEach>
                            		</c:otherwise>
                            	</c:choose>
                            </tbody>
                        </table>
                        <hr>
                        <c:if test="${!empty cartList }">
	                    	<p align="right"><span id="allTotalPrice"></span></p>
	                    	<input type="button" id="buyButton" value="일괄 구매하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1 float-right">
                   		 </c:if>
                        <!-- END: Products in Cart -->
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="nk-gap-2"></div>
</body>
</html>