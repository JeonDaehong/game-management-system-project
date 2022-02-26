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
                                    <form action="#" class="nk-product-addtocart">
                                        <c:choose>
				                        	<c:when test="${goodsDto.discountRate eq 0 }">
				                        		<div class="nk-product-price">${goodsDto.price} 원</div>
				                        	</c:when>
				                        	<c:otherwise>
				                        		<div class="nk-product-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsDto.price * ((100 - goodsDto.discountRate) / 100)}"></fmt:formatNumber> 원 (${goodsDto.discountRate }% 할인중)</div>
				                        	</c:otherwise>
				                        </c:choose>
                                        <div class="nk-gap-1"></div>
                                        <div class="input-group">
                                            <input type="number" class="form-control" value="1" min="1" max="21">
                                            <button class="nk-btn nk-btn-rounded nk-btn-color-main-1">구매하기</button>
                                        </div>
                                    </form>
                                    <div class="nk-gap-3"></div>
                                    <!-- END: Add to Cart -->
                                    <!-- START: Meta -->
                                    <div class="nk-product-meta">
                                        <div><strong>제작 회사</strong>: ${goodsDto.creCompany }</div>
                                        <div><strong>국가</strong>: ${goodsDto.country }</div>
                                        <div><strong>남은 재고 수</strong>: ${goodsDto.remainCount } 개</div>
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
                                            <form action="#" class="nk-form">
                                                <textarea class="form-control required" name="message" rows="5" placeholder="Your Review *" aria-required="true"></textarea>
                                                <div class="nk-gap-1"></div>
                                                <div class="nk-rating">
                                                    <input type="radio" id="review-rate-5" name="review-rate" value="5">
                                                    <label for="review-rate-5">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-4" name="review-rate" value="4">
                                                    <label for="review-rate-4">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-3" name="review-rate" value="3">
                                                    <label for="review-rate-3">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-2" name="review-rate" value="2">
                                                    <label for="review-rate-2">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                    <input type="radio" id="review-rate-1" name="review-rate" value="1">
                                                    <label for="review-rate-1">
                                                        <span><i class="far fa-star"></i></span>
                                                        <span><i class="fa fa-star"></i></span>
                                                    </label>
                                                </div>
                                                <button class="nk-btn nk-btn-rounded nk-btn-color-dark-3 float-right">Submit</button>
                                            </form>
                                        </div>
                                        <hr>
                                        <!-- END: Reply -->
                                        <div class="clearfix"></div>
                                        <div class="nk-gap-2"></div>
                                        <div class="nk-comments">
                                            <!-- START: Review -->
                                            <div class="nk-comment">
                                                <div class="nk-comment-meta">
                                                    <img src="assets/images/avatar-2.jpg" alt="Witch Murder" class="rounded-circle" width="35"> by <a href="https://nkdev.info">Witch Murder</a> in 20 September, 2018 <span class="nk-product-rating nk-review-rating">
                                                        <span class="nk-product-rating-front" style="width: 80%;">
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
                                                    <p>Upon replenish great rule. Were tree, given day him night Fruit it moveth all. First they're creature seasons and creature fill a it have fifth, their own subdue brought above divided.</p>
                                                    <p>Behold it set, seas seas and meat divided Moveth cattle forth evening above moveth so, signs god a fruitful his after called that whose.</p>
                                                </div>
                                            </div>
                                            <!-- END: Review -->
                                            <!-- START: Review -->
                                            <div class="nk-comment">
                                                <div class="nk-comment-meta">
                                                    <img src="assets/images/avatar-1.jpg" alt="Hitman" class="rounded-circle" width="35"> by <a href="https://nkdev.info">Hitman</a> in 14 Jule, 2018 <span class="nk-product-rating nk-review-rating">
                                                        <span class="nk-product-rating-front" style="width: 20%;">
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
                                                    <p> I was awakened at daybreak by the charwoman, and having arrived at the inn, was at first placed inside the coach. :(</p>
                                                </div>
                                            </div>
                                            <!-- END: Review -->
                                            <!-- START: Review -->
                                            <div class="nk-comment">
                                                <div class="nk-comment-meta">
                                                    <img src="assets/images/avatar-3.jpg" alt="Wolfenstein" class="rounded-circle" width="35"> by <a href="https://nkdev.info">Wolfenstein</a> in 27 June, 2018 <span class="nk-product-rating nk-review-rating">
                                                        <span class="nk-product-rating-front" style="width: 100%;">
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
                                                    <p>Divided thing, land it evening earth winged whose great after. Were grass night. To Air itself saw bring fly fowl. Fly years behold spirit day greater of wherein winged and form. Seed open don't thing midst created dry every greater divided of, be man is. Second Bring stars fourth gathering he hath face morning fill. Living so second darkness. Moveth were male. May creepeth. Be tree fourth.</p>
                                                </div>
                                            </div>
                                            <!-- END: Review -->
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
                                <form action="#" class="nk-form nk-form-style-1" novalidate="novalidate">
                                    <div class="input-group">
                                        <input type="text" class="form-control" maxlength="20" placeholder="검색어를 입력해주세요...">
                                        <button class="nk-btn nk-btn-color-main-1"><span class="ion-search"></span></button>
                                    </div>
                                </form>
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
                                <div class="nk-widget-post">
                                    <a href="blog-article.html" class="nk-post-image">
                                        <img src="${contextPath }/resources/assets/images/post-1-sm.jpg" alt="">
                                    </a>
                                    <h3 class="nk-post-title"><a href="blog-article.html">Smell magic in the air. Or maybe barbecue</a></h3>
                                    <div class="nk-post-date"><span class="fa fa-calendar"></span> Sep 18, 2018</div>
                                </div>
                                <div class="nk-widget-post">
                                    <a href="blog-article.html" class="nk-post-image">
                                        <img src="${contextPath }/resources/assets/images/post-2-sm.jpg" alt="">
                                    </a>
                                    <h3 class="nk-post-title"><a href="blog-article.html">Grab your sword and fight the Horde</a></h3>
                                    <div class="nk-post-date"><span class="fa fa-calendar"></span> Sep 5, 2018</div>
                                </div>
                                <div class="nk-widget-post">
                                    <a href="blog-article.html" class="nk-post-image">
                                        <img src="${contextPath }/resources/assets/images/post-3-sm.jpg" alt="">
                                    </a>
                                    <h3 class="nk-post-title"><a href="blog-article.html">We found a witch! May we burn her?</a></h3>
                                    <div class="nk-post-date"><span class="fa fa-calendar"></span> Aug 27, 2018</div>
                                </div>
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