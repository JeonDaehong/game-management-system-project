<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<c:if test="${isLogOn ne true }">
	<script>
		alert('로그인 후에 열람하실 수 있습니다.');
		location.href = '${contextPath}/members/login';
	</script>
</c:if>
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
                    <li><a href="${contextPath }/goods/goodsList">Game Store</a></li>
                    <li><span class="fa fa-angle-right"></span></li>
                    <li><span>${goodsDto.goodsName }</span></li>
                </ul>
            </div>
            <div class="nk-gap-1"></div>
            <!-- END: Breadcrumbs -->
            <div class="container">
                <div class="row vertical-gap">
                    <div class="col-lg-8">
                        <div class="nk-store-product">
                            <div class="row vertical-gap">
                                <div class="col-md-6">
                                    <!-- START: Product Photos -->
                                    <div class="nk-popup-gallery">
                                        <div class="nk-gallery-item-box">
                                            <a href="${contextPath }/gameInfoThumbnails?goodsFileName=${goodsDto.secondFileName}" class="nk-gallery-item" data-size="1200x554">
                                                <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                <img src="${contextPath }/gameInfoThumbnails?goodsFileName=${goodsDto.fileName}" alt="img">
                                            </a>
                                        </div>
                                        <div class="nk-gap-1"></div>
                                        <div class="row vertical-gap sm-gap">
                                            <div class="col-6 col-md-4">
                                                <div class="nk-gallery-item-box">
                                                    <a href="${contextPath }/gameInfoThumbnails?goodsFileName=${goodsDto.fileName}" class="nk-gallery-item" data-size="622x942">
                                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                        <img src="${contextPath }/gameInfoThumbnails?goodsFileName=${goodsDto.secondFileName}" alt="img">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-6 col-md-4">
                                                <div class="nk-gallery-item-box">
                                                    <a href="${contextPath }/bigThumbnails?goodsFileName=${goodsDto.thirdFileName}" class="nk-gallery-item" data-size="1920x907">
                                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                        <img src="${contextPath }/gameInfoThumbnails?goodsFileName=${goodsDto.thirdFileName}" alt="img">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-6 col-md-4">
                                                <div class="nk-gallery-item-box">
                                                    <a href="${contextPath }/bigThumbnails?goodsFileName=${goodsDto.fourthFileName}" class="nk-gallery-item" data-size="1500x750">
                                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                        <img src="${contextPath }/gameInfoThumbnails?goodsFileName=${goodsDto.fourthFileName}" alt="img">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END: Product Photos -->
                                </div>
                                <div class="col-md-6">
                                    <h2 class="nk-product-title h3">${goodsDto.goodsName } </h2>
                                    <div class="nk-product-description">
                                        <p>${goodsDto.cutContent }</p>
                                    </div>
                                    <!-- START: Add to Cart -->
                                    <div class="nk-gap-2"></div>
                                    <form action="${contextPath }/cart/inCart" method="post" class="nk-product-addtocart">
                                        <c:choose>
				                        	<c:when test="${goodsDto.discountRate eq 0 }">
				                        		<div class="nk-product-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsDto.price}"/> 원</div>
				                        	</c:when>
				                        	<c:otherwise>
				                        		<div class="nk-product-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsDto.price * ((100 - goodsDto.discountRate) / 100)}"></fmt:formatNumber> 원 (${goodsDto.discountRate }% 할인중)</div>
				                        	</c:otherwise>
				                        </c:choose>
                                        <div class="nk-gap-1"></div>
					                        <input type="hidden" name="price" value="${goodsDto.price}">
					                        <input type="hidden" name="discountRate" value="${goodsDto.discountRate}">
					                        <input type="hidden" name="fileName" value="${goodsDto.fileName}">
					                        <input type="hidden" name="goodsName" value="${goodsDto.goodsName}">
					                        <input type="hidden" name="memberId" value="${sessionScope.loginId}">
					                        <input type="submit" value="장바구니 " size="7" class="nk-btn nk-btn-rounded nk-btn-color-main-1">
                                        
                                    </form>
                                    <div class="nk-gap-3"></div>
                                    <!-- END: Add to Cart -->
                                    <!-- START: Meta -->
                                    <div class="nk-product-meta">
                                        <div><strong>제작 회사</strong>: ${goodsDto.creCompany }</div>
                                        <div><strong>국가</strong>: ${goodsDto.country }</div>
                                    </div>
                                    <!-- END: Meta -->
                                </div>
                            </div>
                            <br>
                            <blockquote class="nk-blockquote">
                                <div class="nk-blockquote-icon"><span>"</span></div>
                            </blockquote>
                            <div class="nk-gap-1"></div>
                            <!-- START: Tabs -->
                            <div class="nk-tabs">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#tab-description" role="tab" data-toggle="tab">상품정보</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#tab-reviews" role="tab" data-toggle="tab">추천&리뷰(${goodsDto.scoreCount })</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <!-- START: Tab Description -->
                                    <div role="tabpanel" class="tab-pane fade show active" id="tab-description">
                                        <div class="nk-gap"></div>
                                        <strong class="text-white">출시일 : <fmt:formatDate value="${goodsDto.creDate }" pattern="yyyy/MM/dd"/> </strong>
                                        <div class="nk-gap"></div>
                                        <p>${goodsDto.content }</p>
                                        <div class="nk-product-info-row row vertical-gap">
                                            <div class="col-md-5">
                                                <div class="nk-product-pegi">
                                                    <div class="nk-gap"></div>
                                                    <img src="${contextPath }/gameListThumbnails?goodsFileName=${goodsDto.fileName}" alt="img">
                                                    <div class="nk-product-pegi-cont">
                                                        <strong class="text-white">게임명/타입: </strong>
                                                        <div class="nk-gap"></div> ${goodsDto.goodsName }/${goodsDto.goodsType }
                                                    </div>
                                                    <div class="nk-gap"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="nk-gap"></div>
                                                <strong class="text-white">장르:</strong>
                                                <div class="nk-gap"></div> ${goodsDto.goodsGenre } <div class="nk-gap"></div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="nk-gap"></div>
                                                <strong class="text-white">평점:</strong>
                                                <div class="nk-gap"></div>
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
                                                <div class="nk-gap"></div>
                                            </div>
                                        </div>
                                        <c:if test="${sessionScope.loginId eq 'admin' }">
	                                         <div align="center">
	                                         	<br><br>
	                                         	<button class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminGoods/goodsUpdate?num=${goodsDto.num }'">Admin:수정하기</button> &nbsp;
	                                         	<button class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminGoods/goodsDelete?num=${goodsDto.num }&fileName=${goodsDto.fileName }&secondFileName=${goodsDto.secondFileName }&thirdFileName=${goodsDto.thirdFileName }&fourthFileName=${goodsDto.fourthFileName }'">Admin:삭제하기</button>
	                                         </div>
	                                         <div class="nk-gap"></div>
                                        </c:if>
                                    </div>
                                    <!-- END: Tab Description -->
                                    <!-- START: Tab Reviews -->
                                    <div role="tabpanel" class="tab-pane fade" id="tab-reviews">
                                        <div class="nk-gap-2"></div>
                                        <!-- START: Reply -->
                                        <h3 class="h4">추천 & 리뷰</h3>
                                        <div class="nk-reply">
                                            <form action="${contextPath }/goods/insertReply" method="post" class="nk-form">
                                                <textarea class="form-control required" name="content" id="content" rows="5" placeholder="리뷰를 작성해주세요 *" aria-required="true"></textarea>
                                                <div class="nk-gap-1"></div>
                                                <div class="nk-rating">
                                                    <input type="radio" id="review-rate-5" name="score" value="100">
                                                    <label for="review-rate-5">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-4" name="score" value="80">
                                                    <label for="review-rate-4">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-3" name="score" value="60">
                                                    <label for="review-rate-3">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-2" name="score" value="40">
                                                    <label for="review-rate-2">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-1" name="score" value="20">
                                                    <label for="review-rate-1">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                </div>
                                                <input type="hidden" name="goodsNum" value="${goodsDto.num }">
                                                <input type="hidden" name="writer" value="${sessionScope.loginId }">
                                                <input type="submit" value="리뷰 작성" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 float-right">
                                            </form>
                                        </div>
                                        <hr>
                                        <!-- END: Reply -->
                                        <div class="clearfix"></div>
                                        <div class="nk-gap-2"></div>
                                        <div class="nk-comments">
                                        	<c:choose>
                                        		<c:when test="${empty replyList }">
                                        			<div align="center">
                                        				현재 리뷰가 없습니다. 첫번째 리뷰의 주인공이 되어보세요.
                                        			</div>
                                        		</c:when>
                                        		<c:otherwise>
                                        			<c:forEach var="replyDto" items="${replyList }">
	                                        			<!-- START: Review -->
			                                            <div class="nk-comment">
			                                                <div class="nk-comment-meta">
			                                                	<div align="right">
					                                                <c:if test="${replyDto.writer eq sessionScope.loginId or sessionScope.loginId eq 'admin' }">
						                                    			&nbsp;&nbsp;&nbsp;<input type="button" value="댓글삭제" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/goods/goodsReplyDelete?num=${replyDto.num }&goodsNum=${replyDto.goodsNum }'">
						                                    			<br>
						                                    		</c:if>
				                                    			</div>
			                                                    <img src="${contextPath }/resources/assets/images/avatar-2.jpg" alt="img" class="rounded-circle" width="35"> by <span style="color: pink;">${replyDto.writer}</span> in <span style="color: yellow;"><fmt:formatDate value="${replyDto.regDate }" pattern="yyyy-MM-dd"/></span>
			                                                    <span class="nk-product-rating nk-review-rating">
			                                                        <span class="nk-product-rating-front" style="width: ${replyDto.score}%;">
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
			                                                </div>
			                                                <div class="nk-comment-text">
			                                                    <p>${replyDto.content }</p>
			                                                </div>
			                                            </div>
			                                            <!-- END: Review -->
		                                            </c:forEach>
                                        		</c:otherwise>
                                        	</c:choose>
                                        	<div class="nk-pagination nk-pagination-center">
						                        <nav>
						                        	<c:if test="${totalBoardCount gt 0 }">
						                       			<c:if test="${startPage gt 10 }">
						                         			<a href="${contextPath }/goods/goodsInfo?num=${boardDto.num }&currentPageNumber=${startPage - 10}&onePageViewCount=${onePageViewCount}" > &lt; &nbsp; Previous</a>
						                       			</c:if>
						                       			<c:forEach var="i" begin="${startPage}" end="${endPage }" >
						                         			<a href="${contextPath }/goods/goodsInfo?num=${boardDto.num }&currentPageNumber=${i}&onePageViewCount=${onePageViewCount}" <c:if test="${currentPageNumber eq i }">class="nk-pagination-current"</c:if> >${i}</a>
						                         		</c:forEach>
						                       			<c:if test="${endPage le totalBoardCount && endPage ge 10}"> 
						                         			<a href="${contextPath }/goods/goodsInfo?num=${boardDto.num }&currentPageNumber=${startPage + 10}&onePageViewCount=${onePageViewCount}" >Next &nbsp; &gt;</a>
						                       			</c:if>
						                        	</c:if>
						                        </nav>
						                    </div>
                                        </div>
                                    </div>
                                    <!-- END: Tab Reviews -->
                                </div>
                            </div>
                            <!-- END: Tabs -->
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <!--
                START: Sidebar

                Additional Classes:
                    .nk-sidebar-left
                    .nk-sidebar-right
                    .nk-sidebar-sticky
            -->
                        <aside class="nk-sidebar nk-sidebar-right nk-sidebar-sticky">
                        <div class="nk-widget">
                            <div class="nk-widget-content">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="sideSearchKeyword" maxlength="20" placeholder="검색어를 입력해주세요...">
                                    <button class="nk-btn nk-btn-color-main-1" id="getSideSearchBoard"><span class="ion-search"></span></button>
                                </div>
                            </div>
                        </div>
                        <div class="nk-widget nk-widget-highlighted">
                            <h4 class="nk-widget-title"><span><span class="text-main-1">Popular</span> Video</span></h4>
                            <div class="nk-widget-content">
                                <div class="nk-plain-video" data-video="https://www.youtube.com/watch?v=VTS8ZqgIg98"></div>
                            </div>
                        </div>
                        <div class="nk-widget nk-widget-highlighted">
                            <h4 class="nk-widget-title"><span><span class="text-main-1">Top 3</span> Game</span></h4>
                            <div class="nk-widget-content">
                            	<c:choose>
                            		<c:when test="${empty sidePopularGoodsList }">
                            			<div class="nk-widget-post">
		                                    <a href="blog-article.html" class="nk-post-image">
		                                        <img src="${contextPath }/resources/assets/images/post-1-sm.jpg" alt="">
		                                    </a>
		                                    <h3 class="nk-post-title"><a href="blog-article.html">Smell magic in the air. Or maybe barbecue</a></h3>
		                                    <div class="nk-post-date"><span class="fa fa-calendar"></span> Sep 18, 2018</div>
		                                </div>
                            		</c:when>
                            		<c:otherwise>
                            			<c:forEach var="sidePopularGoodsDto" items="${sidePopularGoodsList }" begin="0" end="${endSidePopularGoods }">
	                            			<div class="nk-widget-post">
			                                    <a href="blog-article.html" class="nk-post-image">
			                                        <img src="${contextPath }/smaillThumbnails?goodsFileName=${sidePopularGoodsDto.fileName}" alt="">
			                                    </a>
			                                    <h3 class="nk-post-title"><a href="blog-article.html">${sidePopularGoodsDto.goodsName }</a></h3>
			                                    <div class="nk-post-date"><span class="fa fa-calendar"></span><fmt:formatDate value="${sidePopularGoodsDto.creDate }" pattern="yyyy-MM-dd"/></div>
			                                </div>
		                                </c:forEach>
                            		</c:otherwise>
                            	</c:choose>
                            </div>
                        </div>
                        <div class="nk-widget nk-widget-highlighted">
                            <h4 class="nk-widget-title"><span><span class="text-main-1">POPULAR</span> IMAGE</span></h4>
                            <div class="nk-widget-content">
                                <div class="nk-popup-gallery">
                                    <div class="row sm-gap vertical-gap">
                                    	<c:choose>
                                    		<c:when test="${empty popularImgList }">
                                    			<div class="col-sm-6">
		                                            <div class="nk-gallery-item-box">
		                                                <a href="${contextPath }/resources/assets/images/gallery-1.jpg" class="nk-gallery-item" data-size="1016x572">
		                                                    <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
		                                                    <img src="${contextPath }/resources/assets/images/gallery-1-thumb.jpg" alt="">
		                                                </a>
		                                                <div class="nk-gallery-item-description">
		                                                    <h4>이미지가 없을 경우, 화면이 깨지지 않게, 보호해주는 이미지입니다.</h4> 이미지가 없을 경우, 화면이 깨지지 않게, 보호해주는 이미지입니다.
		                                                </div>
		                                            </div>
		                                        </div>
                                    		</c:when>
                                    		<c:otherwise>
                                    			<c:forEach var="imgDto" items="${popularImgList }" begin="0" end="${endPopularImg}">
                                    				<div class="col-lg-4 col-md-6">
					                                    <div class="nk-gallery-item-box">
					                                        <a href="${contextPath }/bigThumbnails?goodsFileName=${imgDto.fileName}" class="nk-gallery-item" data-size="1016x572">
					                                            <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
					                                            <img src="${contextPath }/smaillThumbnails?goodsFileName=${imgDto.fileName}" alt="IMG">
					                                        </a>
					                                        <div class="nk-gallery-item-description">
					                                            <h4>${imgDto.subject }</h4> ${imgDto.content }
					                                            <br><br>
					                                            <form action="${contextPath }/imageBoard/imageDelete" method="post" enctype="multipart/form-data">
						                                            <p>
						                                            	<input type="hidden" name="memberId" value="${sessionScope.loginId }">
						                                            	<input type="hidden" name="fileName" value="${imgDto.fileName }">
						                                            	<input type="submit" value="삭제하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;
						                                            	<input type="button" value="추천하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/imageBoard/imageSuggestion?memberId=${sessionScope.loginId }&fileName=${imgDto.fileName }'">
						                                            </p>
					                                        	</form>
					                                        </div>
					                                    </div>
					                                </div>
                                    			</c:forEach>
                                    		</c:otherwise>
                                    	</c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                        <!-- END: Sidebar -->
                    </div>
                </div>
            </div>
        </div>
    <div class="nk-gap-2"></div>
</body>
</html>