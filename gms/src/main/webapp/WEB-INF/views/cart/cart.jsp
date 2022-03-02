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
	
	$().ready(function(){
		
		var tempPrice = $("#${cartDto.num }price").val();
		var count = $("#${cartDto.num }count").val();
		var price = (tempPrice * count);
		$("#${cartDto.num }total").html = price + ' 원';
		
		$("#${cartDto.num }count").click(function(){
		
			var tempPrice = $("#${cartDto.num }price").val();
			var count = $("#${cartDto.num }count").val();
			var price = (tempPrice * count);
			alert(tempPrice);
			alert(count);
			alert(price);
			$("#${cartDto.num }total").html = price + ' 원';
			
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
                        <form action="${contextPath }/order/goOrder" method="get">
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
			                                    <td class="nk-product-cart-thumb">
			                                        <img src="${contextPath }/gameListThumbnails?goodsFileName=${cartDto.filename}" alt="img" width="115">
			                                    </td>
			                                    <td class="nk-product-cart-title">
			                                        <h5 class="h6">상품명:</h5>
			                                        <div class="nk-gap-1"></div>
			                                        <h2 class="nk-post-title h4">
			                                            ${cartDto.goodsName}
			                                        </h2>
			                                        <input type="hidden" name="cartList[${status.index }].memberId" value="${cartDto.memberId}">
			                                        <input type="hidden" name="cartList[${status.index }].goodsName" value="${cartDto.goodsName }">
			                                        <input type="hidden" name="cartList[${status.index }].filename" value="${cartDto.filename }">
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
			                                        	<input type="hidden" id="${cartDto.num }price" name="cartList[${status.index }].price" value="${cartDto.price}">
			                                            <input type="number" id="${cartDto.num }count" name="cartList[${status.index }].count" class="form-control" value="${cartDto.count }" min="1" max="9" maxlength="1">
			                                        </div>
			                                    </td>
			                                    <td class="nk-product-cart-total">
			                                        <h5 class="h6">총가격:</h5>
			                                        <div class="nk-gap-1"></div>
			                                        <strong><span id="${cartDto.num }total"></span></strong>
			                                        <input type="hidden" id="${cartDto.num }totalPrice">
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
                        <c:if test="${!empty cartList }">
	                    	<p><span id="totalPrice"></span></p>
	                    	<input type="submit" value="일괄 구매하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1 float-right" >
                   		 </c:if>
                        <!-- END: Products in Cart -->
                        </form>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="nk-gap-2"></div>
</body>
</html>