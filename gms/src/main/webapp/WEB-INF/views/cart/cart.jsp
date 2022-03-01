<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${isLogOn ne true }">
	<script>
		alert('로그인 후에 열람하실 수 있습니다.');
		location.href = '${contextPath}/members/login';
	</script>
</c:if>
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
                            			<c:forEach var="cartDto" items="${cartList }">
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
			                                        	<input type="hidden" id="${cartDto.num }price" value="${cartDto.price}">
			                                            <input type="number" id="${cartDto.num }number" name="isNumber" class="form-control" value="1" min="1" max="9" maxlength="1" onclick="countUpDown()">
			                                        </div>
			                                    </td>
			                                    <td class="nk-product-cart-total">
			                                        <h5 class="h6">총가격:</h5>
			                                        <div class="nk-gap-1"></div>
			                                        <strong><span id="${cartDto.num }total"></span></strong>
			                                        <input type="hidden" id="${cartDto.num }totalPrice" value="0">
			                                    </td>
			                                    <td class="nk-product-cart-remove">
			                                    	<a href="#"><span class="ion-android-close"></span></a>
			                                    	<script>
				                                    	var tempPrice = document.getElementById('${cartDto.num }price').value;
														var count = document.getElementById('${cartDto.num }number').value;
														var price = (tempPrice * count);
														document.getElementById('${cartDto.num }total').innerHTML = price + ' 원';
														document.getElementById('${cartDto.num }}totalPrice').value = price;
			                                    	
														function countUpDown() {
															var tempPrice = document.getElementById('${cartDto.num }price').value;
															var count = document.getElementById('${cartDto.num }number').value;
															var price = (tempPrice * count);
															document.getElementById('${cartDto.num }total').innerHTML = price + ' 원';
															document.getElementById('${cartDto.num }}totalPrice').value = price;
														}
													</script>
			                                    </td>
			                                </tr>
                            			</c:forEach>
                            		</c:otherwise>
                            	</c:choose>
                            </tbody>
                        </table>
                        <!-- END: Products in Cart -->
                        </div>
                    </div>
                    <c:if test="${!empty cartList }">
                    	<p><span id="totalPrice"></span></p>
                    	<form>
                    	<input type="hidden" name="totalPrice" value="0">
                    	<c:forEach var="cartDto" items="${cartList }">
                    		<input type="hidden" name="goodsName" value="${cartDto.goodsName }">
                    	</c:forEach>
                    	<a class="nk-btn nk-btn-rounded nk-btn-color-main-1 float-right" href="store-checkout.html">일괄 구매하기</a>
                   		</form>
                    </c:if>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="nk-gap-2"></div>
</body>
</html>