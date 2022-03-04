<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<script>

	$().ready(function(){
		
		$("#genreButton").click(function(){
		
			var priceFilter = $("#priceFilter").val();
			var priceNum = priceFilter.split(',');
			var minNum = priceNum[0];
			var maxNum = priceNum[1];
			var genre = $("#genre").val();
			var hiddenType = $("#hiddenType").val();
			var url = "${contextPath}/goods/goodsList?";
				url += "genre="+genre;
				url += "&minNum="+minNum;
				url += "&maxNum="+maxNum;
				url += "&type="+hiddenType;
		
			 
			location.href=url;
			
		});
		
		
		$("#searchWordClick").click(function(){
			
			var searchWord = $("#searchWord").val();
			var url = "${contextPath}/goods/goodsList?";
				url += "searchKeyword="+searchWord;
		
			if (searchWord == "") {
				alert('검색어를 입력해주시기 바랍니다.');
			} else {
				location.href=url;
			}
		});
		
		
		
		
	});

</script>
</head>
<body>
	<div class="nk-main">
	    <!-- START: Breadcrumbs -->
	    <div class="nk-gap-1"></div>
	    <div class="container">
	        <ul class="nk-breadcrumbs">
	            <li><a href="${contextPath }/main/main">Home</a></li>
	            <li><span class="fa fa-angle-right"></span></li>
	            <li>
	            	<span>Game Store
	            		<c:choose>
	            			<c:when test="${type eq 'total' }">
	            				(전체)
	            			</c:when>
	            			<c:when test="${type eq 'pc' }">
	            				(PC)
	            			</c:when>
	            			<c:when test="${type eq 'ps5' }">
	            				(PS5)
	            			</c:when>
	            			<c:otherwise>
	            				(XBOX)
	            			</c:otherwise>
	            		</c:choose>
	            	</span>
	            </li>
	        </ul>
	    </div>
	    <div class="nk-gap-1"></div>
	    <!-- END: Breadcrumbs -->
	    <div class="container">
	        <!-- START: Categories -->
	        <div class="row vertical-gap">
	            <div class="col-lg-4">
	                <div class="nk-feature-1">
	                    <div class="nk-feature-icon">
	                        <img src="${contextPath }/resources/assets/images/icon-mouse.svg" alt="">
	                    </div>
	                    <div class="nk-feature-cont">
	                        <h3 class="nk-feature-title"><a href="${contextPath }/goods/goodsList?type=pc">PC</a></h3>
	                        <h3 class="nk-feature-title text-main-1"><a href="#">View Games</a></h3>
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4">
	                <div class="nk-feature-1">
	                    <div class="nk-feature-icon">
	                        <img src="${contextPath }/resources/assets/images/icon-gamepad.svg" alt="">
	                    </div>
	                    <div class="nk-feature-cont">
	                        <h3 class="nk-feature-title"><a href="${contextPath }/goods/goodsList?type=ps5">PS5</a></h3>
	                        <h3 class="nk-feature-title text-main-1"><a href="#">View Games</a></h3>
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4">
	                <div class="nk-feature-1">
	                    <div class="nk-feature-icon">
	                        <img src="${contextPath }/resources/assets/images/icon-gamepad-2.svg" alt="">
	                    </div>
	                    <div class="nk-feature-cont">
	                        <h3 class="nk-feature-title"><a href="${contextPath }/goods/goodsList?type=xbox">Xbox</a></h3>
	                        <h3 class="nk-feature-title text-main-1"><a href="#">View Games</a></h3>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- END: Categories -->
	        <!-- START: Products Filter -->
	        <div class="nk-gap-2"></div>
	        <div class="row vertical-gap">
	            <div class="col-lg-8">
	                <div class="row vertical-gap">
	                    <div class="col-md-4">
	                        <select id="genre" class="form-control">
	                            <option value="total">장르 선택</option>
	                            <option value="rpg" <c:if test="${genre eq 'rpg' }">selected</c:if>>RPG</option>
	                            <option value="fps" <c:if test="${genre eq 'fps' }">selected</c:if>>FPS</option>
	                            <option value="advencher" <c:if test="${genre eq 'advencher' }">selected</c:if>>어드벤쳐</option>
	                            <option value="rts" <c:if test="${genre eq 'rts' }">selected</c:if>>RTS</option>
	                            <option value="fear" <c:if test="${genre eq 'fear' }">selected</c:if>>공포</option>
	                            <option value="datingSimulation" <c:if test="${genre eq 'datingSimulation' }">selected</c:if>>연애 시뮬레이션</option>
	                            <option value="etc" <c:if test="${genre eq 'etc' }">selected</c:if>>기타 장르</option>
	                        </select>
	                    </div>
	                    <div class="col-md-8">
	                        <div class="nk-input-slider-inline">
	                            <div class="nk-input-slider">
	                                <div class="nk-input-slider-content text-white"> 가격: <strong class="text-main-1"> <span class="nk-input-slider-value-0"></span></strong>원 - <strong class="text-main-1"> <span class="nk-input-slider-value-1"></span></strong>원
	                                </div>
	                                <div class="nk-input-slider-input">
	                                    <input type="text" id="priceFilter" name="price-filter" data-slider-min="0" data-slider-max="99900" data-slider-step="1" data-slider-value="[${minNum }, ${maxNum }]" data-slider-tooltip="hide">
	                                </div>
	                            </div>
	                            <div>
	                            	<input type="hidden" id="hiddenType" value="${type }">
	                                <input type="button" id="genreButton" value="적용" class="nk-btn nk-btn-rounded nk-btn-color-white">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4">
                    <div class="input-group">
                        <input type="text" class="form-control" id="searchWord" placeholder="검색어를 입력해주세요 . . .">
                        <button class="nk-btn nk-btn-color-main-1" id="searchWordClick"><span class="ion-search"></span></button>
                    </div>
	            </div>
	        </div>
	        <!-- END: Products Filter -->
	        <div class="nk-gap-2"></div>
	        <c:choose>
	        	<c:when test="${empty goodsList }">
		            <div align="center">
		            	<br>
	                    <h3>현재 등록된 상품이 없습니다.</h3>
	                    Admin 계정이시라면, 상품을 등록해주세요.
			        </div>
	        	</c:when>
	        	<c:otherwise>
	        		<div class="row vertical-gap">
	        		<c:forEach var="goodsDto" items="${goodsList }">
	        		 <!-- START: Products -->
				            <div class="col-lg-6">
				                <div class="nk-product-cat-2">
				                    <a class="nk-product-image" href="${contextPath }/goods/goodsInfo?num=${goodsDto.num}">
				                        <img src="${contextPath }/gameListThumbnails?goodsFileName=${goodsDto.fileName}" alt="GameImage">
				                    </a>
				                    <div class="nk-product-cont">
				                        <h3 class="nk-product-title h4"><a href="${contextPath }/goods/goodsInfo?num=${goodsDto.num}">${goodsDto.goodsName }</a></h3>
				                        타입 : ${goodsDto.goodsType } / 장르 : ${goodsDto.goodsGenre } &nbsp;
				                        <span class="nk-product-rating">
				                            <span class="nk-product-rating-front" style="width: ${goodsDto.score}%;">
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                            </span>
				                            <span class="nk-product-rating-back">
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                            </span>
				                        </span>
				                        <div class="nk-gap-1"></div> ${goodsDto.cutContent } <div class="nk-gap-1"></div>
				                        정상가: <fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsDto.price}"/> 원
				                        <c:choose>
				                        	<c:when test="${goodsDto.discountRate eq 0 }">
				                        		<div class="nk-product-price" >현재가: <fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsDto.price}"/> 원</div>
				                        	</c:when>
				                        	<c:otherwise>
				                        		<div class="nk-product-price">현재가: <fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsDto.price * ((100 - goodsDto.discountRate) / 100)}"></fmt:formatNumber> 원 (${goodsDto.discountRate }% 할인중)</div>
				                        	</c:otherwise>
				                        </c:choose>
				                        <div class="nk-gap-1"></div>
				                        <form action="${contextPath }/cart/inCart" method="post">
				                        <a href="${contextPath }/goods/goodsInfo?num=${goodsDto.num}" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">상품보기</a>
					                        <input type="hidden" name="price" value="${goodsDto.price}">
					                        <input type="hidden" name="discountRate" value="${goodsDto.discountRate}">
					                        <input type="hidden" name="fileName" value="${goodsDto.fileName}">
					                        <input type="hidden" name="goodsName" value="${goodsDto.goodsName}">
					                        <input type="hidden" name="memberId" value="${sessionScope.loginId}">
					                        <input type="submit" value="장바구니" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">
				                    	</form>
				                    </div>
				                </div>
				            </div>
				        <!-- END: Products -->
				    </c:forEach>
				    </div>
	        	</c:otherwise>
	        </c:choose>
	        <!-- START: Pagination -->
	        <br>
	        <div class="nk-pagination nk-pagination-center">
	             <nav>
	             	<c:if test="${totalBoardCount gt 0 }">
	            			<c:if test="${startPage gt 10 }">
	              			<a href="${contextPath }/goods/goodsList?currentPageNumber=${startPage - 10}&onePageViewCount=${onePageViewCount}&searchKeyword=${searchKeyword}&genre=${genre}&type=${type}&minNum=${minNum}&maxNum=${maxNum}" > &lt; &nbsp; Previous</a>
	            			</c:if>
	            			<c:forEach var="i" begin="${startPage}" end="${endPage }" >
	              			<a href="${contextPath }/goods/goodsList?currentPageNumber=${i}&onePageViewCount=${onePageViewCount}&searchKeyword=${searchKeyword}&genre=${genre}&type=${type}&minNum=${minNum}&maxNum=${maxNum}" <c:if test="${currentPageNumber eq i }">class="nk-pagination-current"</c:if> >${i}</a>
	              		</c:forEach>
	            			<c:if test="${endPage le totalBoardCount && endPage ge 10}"> 
	              			<a href="${contextPath }/goods/goodsList?currentPageNumber=${startPage + 10}&onePageViewCount=${onePageViewCount}&searchKeyword=${searchKeyword}&genre=${genre}&type=${type}&minNum=${minNum}&maxNum=${maxNum}" >Next &nbsp; &gt;</a>
	            			</c:if>
	             	</c:if>
	             </nav>
         	</div>
	        <!-- END: Pagination -->
	        <!-- START: Most Popular -->
	        <div class="nk-gap-3"></div>
	        <h3 class="nk-decorated-h-2"><span><span class="text-main-1">TOP 6 Popular</span> Games</span></h3>
	        <div class="nk-gap"></div>
	        <div class="row vertical-gap">
	        	<c:choose>
	        		<c:when test="${empty popularGoodsList }">
	        			<div class="col-lg-4 col-md-6">
			                <div class="nk-product-cat">
			                    <a class="nk-product-image" href="store-product.html">
			                        <img src="${contextPath }/resources/assets/images/product-11-xs.jpg" alt="She gave my mother">
			                    </a>
			                    <div class="nk-product-cont">
			                        <h3 class="nk-product-title h5"><a href="store-product.html">She gave my mother</a></h3>
			                        <div class="nk-gap-1"></div>
			                        <span class="nk-product-rating">
			                            <span class="nk-product-rating-front" style="width: 50%;">
			                                <i class="fa fa-star"></i>
			                                <i class="fa fa-star"></i>
			                                <i class="fa fa-star"></i>
			                                <i class="fa fa-star"></i>
			                                <i class="fa fa-star"></i>
			                            </span>
			                            <span class="nk-product-rating-back">
			                                <i class="far fa-star"></i>
			                                <i class="far fa-star"></i>
			                                <i class="far fa-star"></i>
			                                <i class="far fa-star"></i>
			                                <i class="far fa-star"></i>
			                            </span>
			                        </span>
			                        <div class="nk-gap-1"></div>
			                        <div class="nk-product-price">€ 14.00</div>
			                    </div>
			                </div>
			            </div>
	        		</c:when>
	        		<c:otherwise>
	        			<c:forEach var="popularGoodsDto" items="${popularGoodsList }" begin="0" end="${endPopularGoods }">
		        			<div class="col-lg-4 col-md-6">
				                <div class="nk-product-cat">
				                    <a class="nk-product-image" href="${contextPath }/goods/goodsInfo?num=${popularGoodsDto.num}">
				                        <img src="${contextPath }/gameListThumbnails?goodsFileName=${popularGoodsDto.fileName}" alt="img">
				                    </a>
				                    <div class="nk-product-cont">
				                        <h3 class="nk-product-title h5"><a href="${contextPath }/goods/goodsInfo?num=${popularGoodsDto.num}">${popularGoodsDto.goodsName }</a></h3>
				                        <div class="nk-gap-1"></div>
				                        <span class="nk-product-rating">
				                            <span class="nk-product-rating-front" style="width: ${popularGoodsDto.score}%;">
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                                <i class="fa fa-star"></i>
				                            </span>
				                            <span class="nk-product-rating-back">
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                                <i class="far fa-star"></i>
				                            </span>
				                        </span>
				                        <div class="nk-gap-1"></div>
				                        <c:choose>
				                        	<c:when test="${popularGoodsDto.discountRate eq 0 }">
				                        		<div class="nk-product-price">${popularGoodsDto.price} 원</div>
				                        	</c:when>
				                        	<c:otherwise>
				                        		<div class="nk-product-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${popularGoodsDto.price * ((100 - popularGoodsDto.discountRate) / 100)}"></fmt:formatNumber> 원 (${popularGoodsDto.discountRate }% 할인중)</div>
				                        	</c:otherwise>
				                        </c:choose>
				                    </div>
				                </div>
				            </div>
			            </c:forEach>
	        		</c:otherwise>
	        	</c:choose>
	            <!-- END: Most Popular -->
	        </div>
	    </div>
	</div>
	<div class="nk-gap-2"></div>
</body>
</html>