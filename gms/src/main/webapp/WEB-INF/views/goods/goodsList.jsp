<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="nk-main">
	    <!-- START: Breadcrumbs -->
	    <div class="nk-gap-1"></div>
	    <div class="container">
	        <ul class="nk-breadcrumbs">
	            <li><a href="${contextPath }/main/main">Home</a></li>
	            <li><span class="fa fa-angle-right"></span></li>
	            <li><span>Games Store</span></li>
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
	                        <h3 class="nk-feature-title"><a href="#">PC</a></h3>
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
	                        <h3 class="nk-feature-title"><a href="#">PS5</a></h3>
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
	                        <h3 class="nk-feature-title"><a href="#">Xbox</a></h3>
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
	                        <select class="form-control">
	                            <option value="" disabled selected>Select Platform</option>
	                            <option value="pc">PC</option>
	                            <option value="ps5">PS5</option>
	                            <option value="xbox">Xbox</option>
	                        </select>
	                    </div>
	                    <div class="col-md-8">
	                        <div class="nk-input-slider-inline">
	                            <div class="nk-input-slider">
	                                <div class="nk-input-slider-content text-white"> 가격: <strong class="text-main-1"> <span class="nk-input-slider-value-0"></span></strong>원 - <strong class="text-main-1"> <span class="nk-input-slider-value-1"></span></strong>원
	                                </div>
	                                <div class="nk-input-slider-input">
	                                    <input type="text" name="price-filter" data-slider-min="0" data-slider-max="99900" data-slider-step="1" data-slider-value="[10000, 50000]" data-slider-tooltip="hide">
	                                </div>
	                            </div>
	                            <div>
	                                <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-white">적용</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4">
	                <form action="#" class="nk-form" novalidate="novalidate">
	                    <div class="input-group">
	                        <input type="text" class="form-control" placeholder="검색어를 입력해주세요 . . .">
	                        <button class="nk-btn nk-btn-color-main-1"><span class="ion-search"></span></button>
	                    </div>
	                </form>
	            </div>
	        </div>
	        <!-- END: Products Filter -->
	        <div class="nk-gap-2"></div>
	        <!-- START: Products -->
	        <div class="row vertical-gap">
	            <div class="col-lg-6">
	                <div class="nk-product-cat-2">
	                    <a class="nk-product-image" href="store-product.html">
	                        <img src="${contextPath }/resources/assets/images/product-1-md.jpg" alt="So saying he unbuckled">
	                    </a>
	                    <div class="nk-product-cont">
	                        <h3 class="nk-product-title h5"><a href="store-product.html">So saying he unbuckled</a></h3>
	                        <div class="nk-gap-1"></div>
	                        <span class="nk-product-rating">
	                            <span class="nk-product-rating-front" style="width: ;">
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
	                        <div class="nk-gap-1"></div> Just then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden <div class="nk-gap-2"></div>
	                        <div class="nk-product-price">€ 23.00</div>
	                        <div class="nk-gap-1"></div>
	                        <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Add to Cart</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- END: Products -->
	        <!-- START: Pagination -->
	        <div class="nk-gap-3"></div>
	        <div class="nk-pagination nk-pagination-center">
	            <a href="#" class="nk-pagination-prev">
	                <span class="ion-ios-arrow-back"></span>
	            </a>
	            <nav>
	                <a class="nk-pagination-current" href="#">1</a>
	                <a href="#">2</a>
	                <a href="#">3</a>
	                <a href="#">4</a>
	                <span>...</span>
	                <a href="#">14</a>
	            </nav>
	            <a href="#" class="nk-pagination-next">
	                <span class="ion-ios-arrow-forward"></span>
	            </a>
	        </div>
	        <!-- END: Pagination -->
	        <!-- START: Most Popular -->
	        <div class="nk-gap-3"></div>
	        <h3 class="nk-decorated-h-2"><span><span class="text-main-1">Popular</span> Games</span></h3>
	        <div class="nk-gap"></div>
	        <div class="row vertical-gap">
	            <div class="col-lg-4 col-md-6">
	                <div class="nk-product-cat">
	                    <a class="nk-product-image" href="store-product.html">
	                        <img src="${contextPath }/resources/assets/images/product-11-xs.jpg" alt="She gave my mother">
	                    </a>
	                    <div class="nk-product-cont">
	                        <h3 class="nk-product-title h5"><a href="store-product.html">She gave my mother</a></h3>
	                        <div class="nk-gap-1"></div>
	                        <span class="nk-product-rating">
	                            <span class="nk-product-rating-front" style="width: 60%;">
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
	            <!-- END: Most Popular -->
	        </div>
	    </div>
	</div>
	<div class="nk-gap-2"></div>
</body>
</html>