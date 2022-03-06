<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="${contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<c:if test='${deleteIdCheck eq true}'>
	<script>
		$().ready(function(){
			alert("해당 계정은 현재 삭제중인 계정이므로, 접근하실 수 없습니다. (완전 삭제까지 최대 5일)");
		});
	</script>
	${deleteIdCheck = false }
</c:if>
<title>Game Managememt System 1.0</title>
</head>
<body>
    <div class="nk-main">
        <div class="nk-gap-2"></div>
        <div class="container">
            <!-- START: Image Slider -->
            <div class="nk-image-slider" data-autoplay="8000">
            	<c:choose>
            		<c:when test="${empty basicGoodsList }">
            			<div class="nk-image-slider-item">
		                    <img src="${contextPath }/resources/assets/images/LostArkImg.png" alt="LostArkImg.png" class="nk-image-slider-img" data-thumb="${contextPath }/resources/assets/images/LostArkImg.png">
		                    <div class="nk-image-slider-content">
		                        <h3 class="h4">로스트 아크</h3>
		                        <p class="text-white">스마일게이트에서 만든 신작 쿼터뷰 MMORPG로 총 6개의 클래스와 클래스별로 전직 가능한 직업군이 별도로 존재하며 레이드, 채집, 생활 등 다양한 콘텐츠를 가지고 있다...</p>
		                        <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Read More</a>
		                    </div>
		                </div>
            		</c:when>
            		<c:otherwise>
            			<c:forEach var="basicGoodsDto" items="${basicGoodsList }" begin="0" end="${endBasicGoods }">
            				<div class="nk-image-slider-item">
			                    <img src="${contextPath }/boardThumbnails?goodsFileName=${basicGoodsDto.thirdFileName}" alt="Img" class="nk-image-slider-img" data-thumb="${contextPath }/boardThumbnails?goodsFileName=${basicGoodsDto.thirdFileName}">
			                    <div class="nk-image-slider-content">
			                        <h3 class="h4">${basicGoodsDto.goodsName }</h3>
			                        <p class="text-white">${basicGoodsDto.cutContent }</p>
			                        <a href="${contextPath }/goods/goodsInfo?num=${basicGoodsDto.num }" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">구매하기</a>
			                    </div>
			                </div>
            			</c:forEach>
            		</c:otherwise>
            	</c:choose>
            </div>
            <!-- END: Image Slider -->
            <!-- START: Categories -->
            <div class="nk-gap-2"></div>
            <div class="row vertical-gap">
                <div class="col-lg-4">
                    <div class="nk-feature-1">
                        <div class="nk-feature-icon">
                            <img src="${contextPath }/resources/assets/images/icon-mouse.svg" alt="">
                        </div>
                        <div class="nk-feature-cont">
                            <h3 class="nk-feature-title"><a href="${contextPath }/goods/goodsList?type=pc">PC</a></h3>
                            <h4 class="nk-feature-title text-main-1"><a href="${contextPath }/goods/goodsList?type=pc">View Games</a></h4>
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
                            <h4 class="nk-feature-title text-main-1"><a href="${contextPath }/goods/goodsList?type=ps5">View Games</a></h4>
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
                            <h4 class="nk-feature-title text-main-1"><a href="${contextPath }/goods/goodsList?type=xbox">View Games</a></h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: Categories -->
            <!-- START: Latest News -->
            <div class="nk-gap-2"></div>
            <h3 class="nk-decorated-h-2"><span><span class="text-main-1">최신 & 인기</span> 게임</span></h3>
            <div class="nk-gap"></div>
            <div class="nk-news-box">
                <div class="nk-news-box-list">
                    <div class="nano">
                        <div class="nano-content">
                        	<c:choose>
                        		<c:when test="${empty basicGoodsList }">
                        			<div class="nk-news-box-item nk-news-box-item-active">
		                                <div class="nk-news-box-item-img">
		                                    <img src="${contextPath }/resources/assets/images/post-1-sm.jpg" alt="Smell magic in the air. Or maybe barbecue">
		                                </div>
		                                <img src="${contextPath }/resources/assets/images/post-1.jpg" alt="Smell magic in the air. Or maybe barbecue" class="nk-news-box-item-full-img">
		                                <h3 class="nk-news-box-item-title">Smell magic in the air. Or maybe barbecue</h3>
		                                <span class="nk-news-box-item-categories">
		                                    <span class="bg-main-4">MMO</span>
		                                </span>
		                                <div class="nk-news-box-item-text">
		                                    <p>With what mingled joy and sorrow do I take up the pen to write to my dearest friend! Oh, what a change between to-day and yesterday! Now I am friendless and alone...</p>
		                                </div>
		                                <a href="blog-article.html" class="nk-news-box-item-url">Read More</a>
		                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> Sep 18, 2018</div>
		                            </div>
		                            <div class="nk-news-box-item">
		                                <div class="nk-news-box-item-img">
		                                    <img src="${contextPath }/resources/assets/images/post-2-sm.jpg" alt="Grab your sword and fight the Horde">
		                                </div>
		                                <img src="${contextPath }/resources/assets/images/post-2.jpg" alt="Grab your sword and fight the Horde" class="nk-news-box-item-full-img">
		                                <h3 class="nk-news-box-item-title">Grab your sword and fight the Horde</h3>
		                                <span class="nk-news-box-item-categories">
		                                    <span class="bg-main-1">Action</span>
		                                </span>
		                                <div class="nk-news-box-item-text">
		                                    <p>For good, too; though, in consequence of my previous emotions, I was still occasionally seized with a stormy sob . After we had jogged on for some little time, I asked the carrier...</p>
		                                </div>
		                                <a href="blog-article.html" class="nk-news-box-item-url">Read More</a>
		                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> Sep 5, 2018</div>
		                            </div>
                        		</c:when>
                        		<c:otherwise>
                        			<c:choose>
                        				<c:when test="${endBasicGoods eq 1 }">
                        					<c:forEach var="basicGoodsDto" items="${basicGoodsList}">
	                        					<div class="nk-news-box-item nk-news-box-item-active">
					                                <div class="nk-news-box-item-img">
					                                    <img src="${contextPath }/smaillThumbnails?goodsFileName=${basicGoodsDto.fileName}" alt="Game Image">
					                                </div>
					                                <img src="${contextPath }/boardThumbnails?goodsFileName=${basicGoodsDto.thirdFileName}" alt="Game Image" class="nk-news-box-item-full-img">
					                                <h3 class="nk-news-box-item-title">${basicGoodsDto.goodsName}</h3>
					                                <span class="nk-news-box-item-categories">
					                                    <span class="bg-main-4">
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'rpg' }">RPG</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'fps' }">FPS</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'advencher' }">어드벤쳐</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'rts' }">RTS</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'fear' }">공포</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'datingSimulation' }">연애</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'etc' }">기타</c:if>
					                                    </span>
					                                </span>
					                                <div class="nk-news-box-item-text">
					                                    <p>${basicGoodsDto.cutContent }</p>
					                                </div>
					                                <a href="${contextPath }/goods/goodsInfo?num=${basicGoodsDto.num}" class="nk-news-box-item-url">Read More</a>
					                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span><fmt:formatDate value="${basicGoodsDto.creDate }" pattern="yyyy-MM-dd"/></div>
					                            </div>
				                            </c:forEach>
                        				</c:when>
                        				<c:otherwise>
				                            <c:forEach var="basicGoodsDto" items="${basicGoodsList }" begin="0" end="${endBasicGoods }" varStatus="status">
				                            	<c:choose>
				                            		<c:when test="${status.first }">
				                            			<div class="nk-news-box-item nk-news-box-item-active">
				                            		</c:when>
				                            		<c:otherwise>
				                            			<div class="nk-news-box-item">
				                            		</c:otherwise>
				                            	</c:choose>
				                            	<div class="nk-news-box-item-img">
					                                    <img src="${contextPath }/smaillThumbnails?goodsFileName=${basicGoodsDto.fileName}" alt="Game Image">
					                                </div>
					                                <img src="${contextPath }/boardThumbnails?goodsFileName=${basicGoodsDto.thirdFileName}" alt="Game Image" class="nk-news-box-item-full-img">
					                                <h3 class="nk-news-box-item-title">${basicGoodsDto.goodsName}</h3>
					                                <span class="nk-news-box-item-categories">
					                                    <span class="bg-main-4">
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'rpg' }">RPG</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'fps' }">FPS</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'advencher' }">어드벤쳐</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'rts' }">RTS</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'fear' }">공포</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'datingSimulation' }">연애</c:if>
					                                    	<c:if test="${basicGoodsDto.goodsGenre eq 'etc' }">기타</c:if>
					                                    </span>
					                                </span>
					                                <div class="nk-news-box-item-text">
					                                    <p>${basicGoodsDto.cutContent }</p>
					                                </div>
					                                <a href="${contextPath }/goods/goodsInfo?num=${basicGoodsDto.num}" class="nk-news-box-item-url">Read More</a>
					                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> <fmt:formatDate value="${basicGoodsDto.creDate }" pattern="yyyy-MM-dd"/></div>
					                            </div>
				                            </c:forEach>
                        				</c:otherwise>
                        			</c:choose>
                        		</c:otherwise>
                        	</c:choose>
                        </div>
                    </div>
                </div>
                <div class="nk-news-box-each-info">
                    <div class="nano">
                        <div class="nano-content">
                            <!-- There will be inserted info about selected news-->
                            <div class="nk-news-box-item-image">
                                <img src="${contextPath }/resources/assets/images/post-1.jpg" alt="">
                                <span class="nk-news-box-item-categories">
                                    <span class="bg-main-4">MMO</span>
                                </span>
                            </div>
                            <h3 class="nk-news-box-item-title">Smell magic in the air. Or maybe barbecue</h3>
                            <div class="nk-news-box-item-text">
                                <p>With what mingled joy and sorrow do I take up the pen to write to my dearest friend! Oh, what a change between to-day and yesterday! Now I am friendless and alone...</p>
                            </div>
                            <a href="blog-article.html" class="nk-news-box-item-more">Read More</a>
                            <div class="nk-news-box-item-date">
                                <span class="fa fa-calendar"></span> Sep 18, 2018
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-gap-2"></div>
            <div class="nk-blog-grid">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                    	<c:choose>
                    		<c:when test="${empty popularGoodsList }">
                    			 <!-- START: Post -->
                       			 <div class="nk-blog-post">
		                            <a href="blog-article.html" class="nk-post-img">
		                                <img src="${contextPath }/resources/assets/images/post-5-mid.jpg" alt="He made his passenger captain of one">
		                                <span class="nk-post-comments-count">13</span>
		                                <span class="nk-post-categories">
		                                    <span class="bg-main-5">Indie</span>
		                                </span>
		                            </a>
		                            <div class="nk-gap"></div>
		                            <h2 class="nk-post-title h4"><a href="blog-article.html">He made his passenger captain of one</a></h2>
		                            <div class="nk-post-text">
		                                <p>Just then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
		                            </div>
		                            <div class="nk-gap"></div>
		                            <a href="blog-article.html" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
		                            <div class="nk-post-date float-right"><span class="fa fa-calendar"></span> Jul 23, 2018</div>
		                        </div>
		                        <!-- END: Post -->
			                    </div>
			                    <div class="col-md-6 col-lg-3">
                    		</c:when>
                    		<c:otherwise>
                    			<c:forEach var="popularGoodsDto" items="${popularGoodsList }" begin="0" end="${endPopularGoods }">
	                    			<!-- START: Post -->
	                       			 <div class="nk-blog-post">
			                            <a href="${contextPath }/goods/goodsInfo?num=${popularGoodsDto.num}" class="nk-post-img">
			                                <img src="${contextPath }/smaillThumbnails?goodsFileName=${popularGoodsDto.thirdFileName}" alt="img">
			                                <span class="nk-post-comments-count">${popularGoodsDto.scoreCount }</span>
			                                <span class="nk-post-categories">
			                                    <span class="bg-main-5">
			                                    	<c:if test="${popularGoodsDto.goodsGenre eq 'rpg' }">RPG</c:if>
			                                    	<c:if test="${popularGoodsDto.goodsGenre eq 'fps' }">FPS</c:if>
			                                    	<c:if test="${popularGoodsDto.goodsGenre eq 'advencher' }">어드벤쳐</c:if>
			                                    	<c:if test="${popularGoodsDto.goodsGenre eq 'rts' }">RTS</c:if>
			                                    	<c:if test="${popularGoodsDto.goodsGenre eq 'fear' }">공포</c:if>
			                                    	<c:if test="${popularGoodsDto.goodsGenre eq 'datingSimulation' }">연애</c:if>
			                                    	<c:if test="${popularGoodsDto.goodsGenre eq 'etc' }">기타</c:if>
			                                    </span>
			                                </span>
			                            </a>
			                            <div class="nk-gap"></div>
			                            <h2 class="nk-post-title h4"><a href="blog-article.html">${popularGoodsDto.goodsName }</a></h2>
			                            <div class="nk-post-text">
			                                <p>${popularGoodsDto.cutContent }</p>
			                            </div>
			                            <div class="nk-gap"></div>
			                            <a href="${contextPath }/goods/goodsInfo?num=${popularGoodsDto.num}" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
			                            <div class="nk-post-date float-right"><span class="fa fa-calendar"></span><fmt:formatDate value="${popularGoodsDto.creDate }" pattern="yyyy-MM-dd"/></div>
			                        </div>
			                        <!-- END: Post -->
				                    </div>
				                    <div class="col-md-6 col-lg-3">
			                    </c:forEach>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                </div>
            </div>
            <!-- END: Latest News -->
            <div class="nk-gap-2"></div>
            <div class="row vertical-gap">
                <div class="col-lg-8">
                    <!-- START: Latest Posts -->
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">자유</span> 게시판</span></h3>
                    <div class="nk-gap"></div>
                    <div class="nk-blog-grid">
                        <div class="row">
                            <div class="col-md-6">
                            	<c:choose>
                            		<c:when test="${empty boardList }">
                            			<div class="nk-blog-post">
		                                    <a href="blog-article.html" class="nk-post-img">
		                                        <img src="${contextPath }/resources/assets/images/post-4-mid-square.jpg" alt="Image">
		                                        <span class="nk-post-comments-count">13</span>
		                                    </a>
		                                    <div class="nk-gap"></div>
		                                    <h2 class="nk-post-title h4"><a href="blog-article.html">자유게시판에 글이 없어, 화면 크기를 보호하기 위해 임시로 만들어졌습니다.</a></h2>
		                                    <div class="nk-post-by">
		                                        <img src="${contextPath }/resources/assets/images/avatar-3.jpg" alt="Wolfenstein" class="rounded-circle" width="35"> by <a href="https://nkdev.info">Wolfenstein</a> in Jul 23, 2018
		                                    </div>
		                                    <div class="nk-gap"></div>
		                                    <div class="nk-post-text">
		                                        <p>자유게시판에 글이 없어, 화면 크기를 보호하기 위해 임시로 만들어졌습니다.....</p>
		                                    </div>
		                                    <div class="nk-gap"></div>
		                                    <a href="blog-article.html" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
		                                </div>
                            		</c:when>
                            		<c:otherwise>
                            			<c:forEach var="boardDto" items="${boardList }" begin="0" end="${endBoard }">
                            			<!-- START: Post -->
		                                <div class="nk-blog-post">
		                                    <a href="${contextPath }/boards/boardInfo?num=${boardDto.num}" class="nk-post-img">
		                                        <img src="${contextPath }/boardThumbnails?goodsFileName=${boardDto.fileName}" alt="Image">
		                                        <span class="nk-post-comments-count">${boardDto.commentCount }</span>
		                                    </a>
		                                    <div class="nk-gap"></div>
		                                    <h2 class="nk-post-title h4"><a href="${contextPath }/boards/boardInfo?num=${boardDto.num}">${boardDto.subject }</a></h2>
		                                    <div class="nk-post-by">
		                                        by <span style="color: pink;">${boardDto.writer }</span> in <span style="color: yellow;"><fmt:formatDate value="${boardDto.regDate }" pattern="yyyy-MM-dd"/></span> / 조회수 : ${boardDto.readCount }
		                                    </div>
		                                    <div class="nk-gap"></div>
		                                    <div class="nk-post-text">
		                                        <p>${boardDto.cutContent }</p>
		                                    </div>
		                                    <div class="nk-gap"></div>
		                                    <a href="${contextPath }/boards/boardInfo?num=${boardDto.num}" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
		                                </div>
		                                <!-- END: Post -->
		                               	 	<c:if test="${endBoard eq 1}">
			                                	</div>
	                            				<div class="col-md-6">
		                                	</c:if>
		                                </c:forEach>
                            		</c:otherwise>
                            	</c:choose>
                            </div>
                        </div>
                    </div>
                    <!-- END: Latest Posts -->
                    <!-- START: Tabbed News  -->
                    <div class="nk-gap-3"></div>
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">최신</span> 공지사항</span></h3>
                    <div class="nk-tabs">
                        <!--
                Additional Classes:
                    .nav-tabs-fill
            -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show active" id="tabs-1-1">
                                <!-- START: Action Tab -->
                                <c:choose>
                                	<c:when test="${empty noticeList }">
		                                <div class="nk-blog-post">
		                                    <div class="nk-gap-1"></div>
		                                    <h2 class="nk-post-title h4"><a href="blog-article.html">공지사항이 없습니다.</a></h2>
		                                    <div class="nk-post-date mt-10 mb-10">
		                                        <span class="fa fa-calendar"></span> Sep 5, 2018 <span class="fa fa-comments"></span> <a href="#">7 comments</a>
		                                    </div>
		                                    <div class="nk-post-text">
		                                        <p>현재 공지사항이 없습니다. 공지사항이 없는 경우, Front 비율을 유지하기 위해 임시로 생성된 공지사항입니다.</p>
		                                    </div>
		                                </div>
	                                </c:when>
	                                <c:otherwise>
	                                	<c:forEach var="noticeDto" items="${noticeList }" begin="0" end="${endNotice }">
		                                    <div class="nk-blog-post">
			                                    <div class="nk-gap-1"></div>
			                                    <h2 class="nk-post-title h4"><a href="${contextPath }/adminNotice/noticeInfo?num=${noticeDto.num }"><span class="ion-ios-game-controller-b"></span>&nbsp; ${noticeDto.subject }</a></h2>
			                                    <div class="nk-post-date mt-10 mb-10">
			                                        <span class="fa fa-calendar"></span> <fmt:formatDate value="${noticeDto.regDate }" pattern="yyyy-MM-dd"/> / 조회수 : ${noticeDto.readCount }
			                                    </div>
			                                    <div class="nk-post-text">
			                                        <p>${noticeDto.cutContent }</p>
			                                    </div>
			                                    <hr style="background-color: gray;">
			                                </div>
		                                </c:forEach>
	                                </c:otherwise>
                                </c:choose>
                                <!-- END: Action Tab -->
                                <div class="nk-gap"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tabs-1-2">
                                <div class="nk-gap"></div>
                                <!-- START: MMO Tab -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-1-fw.jpg" alt="Smell magic in the air. Or maybe barbecue">
                                        <span class="nk-post-categories">
                                            <span class="bg-main-4">MMO</span>
                                        </span>
                                    </a>
                                    <div class="nk-gap-1"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">Smell magic in the air. Or maybe barbecue</a></h2>
                                    <div class="nk-post-date mt-10 mb-10">
                                        <span class="fa fa-calendar"></span> Sep 18, 2018 <span class="fa fa-comments"></span> <a href="#">4 comments</a>
                                    </div>
                                    <div class="nk-post-text">
                                        <p>With what mingled joy and sorrow do I take up the pen to write to my dearest friend! Oh, what a change between to-day and yesterday! Now I am friendless and alone...</p>
                                    </div>
                                </div>
                                <div class="nk-blog-post">
                                    <div class="row vertical-gap">
                                        <div class="col-lg-3 col-md-5">
                                            <a href="blog-article.html" class="nk-post-img">
                                                <img src="${contextPath }/resources/assets/images/post-5-mid-square.jpg" alt="He made his passenger captain of one">
                                                <span class="nk-post-categories">
                                                    <span class="bg-main-4">MMO</span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="col-lg-9 col-md-7">
                                            <h2 class="nk-post-title h4"><a href="blog-article.html">He made his passenger captain of one</a></h2>
                                            <div class="nk-post-date mt-10 mb-10">
                                                <span class="fa fa-calendar"></span> Jul 23, 2018 <span class="fa fa-comments"></span> <a href="#">13 comments</a>
                                            </div>
                                            <div class="nk-post-text">
                                                <p>Just then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END: MMO Tab -->
                                <div class="nk-gap"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tabs-1-3">
                                <div class="nk-gap"></div>
                                <!-- START: Strategy Tab -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-3-fw.jpg" alt="We found a witch! May we burn her?">
                                        <span class="nk-post-categories">
                                            <span class="bg-main-3">Strategy</span>
                                        </span>
                                    </a>
                                    <div class="nk-gap-1"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">We found a witch! May we burn her?</a></h2>
                                    <div class="nk-post-date mt-10 mb-10">
                                        <span class="fa fa-calendar"></span> Aug 27, 2018 <span class="fa fa-comments"></span> <a href="#">7 comments</a>
                                    </div>
                                    <div class="nk-post-text">
                                        <p>And she went on planning to herself how she would manage it. `They must go by the carrier,' she thought; `and how funny it'll seem, sending presents to one's own feet!...</p>
                                    </div>
                                </div>
                                <div class="nk-blog-post">
                                    <div class="row vertical-gap">
                                        <div class="col-lg-3 col-md-5">
                                            <a href="blog-article.html" class="nk-post-img">
                                                <img src="${contextPath }/resources/assets/images/post-4-mid-square.jpg" alt="For good, too though, in consequence">
                                                <span class="nk-post-categories">
                                                    <span class="bg-main-3">Strategy</span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="col-lg-9 col-md-7">
                                            <h2 class="nk-post-title h4"><a href="blog-article.html">For good, too though, in consequence</a></h2>
                                            <div class="nk-post-date mt-10 mb-10">
                                                <span class="fa fa-calendar"></span> Aug 14, 2018 <span class="fa fa-comments"></span> <a href="#">23 comments</a>
                                            </div>
                                            <div class="nk-post-text">
                                                <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END: Strategy Tab -->
                                <div class="nk-gap"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tabs-1-4">
                                <div class="nk-gap"></div>
                                <!-- START: Adventure Tab -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-6-fw.jpg" alt="At first, for some time, I was not able to answer">
                                        <span class="nk-post-categories">
                                            <span class="bg-main-2">Adventure</span>
                                        </span>
                                    </a>
                                    <div class="nk-gap-1"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">At first, for some time, I was not able to answer</a></h2>
                                    <div class="nk-post-date mt-10 mb-10">
                                        <span class="fa fa-calendar"></span> Jul 3, 2018 <span class="fa fa-comments"></span> <a href="#">0 comments</a>
                                    </div>
                                    <div class="nk-post-text">
                                        <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                                    </div>
                                </div>
                                <!-- END: Adventure Tab -->
                                <div class="nk-gap"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tabs-1-5">
                                <div class="nk-gap"></div>
                                <!-- START: Racing Tab -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-7-fw.jpg" alt="At length one of them called out in a clear">
                                        <span class="nk-post-categories">
                                            <span class="bg-main-5">Racing</span>
                                        </span>
                                    </a>
                                    <div class="nk-gap-1"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">At length one of them called out in a clear</a></h2>
                                    <div class="nk-post-date mt-10 mb-10">
                                        <span class="fa fa-calendar"></span> Jul 3, 2018 <span class="fa fa-comments"></span> <a href="#">0 comments</a>
                                    </div>
                                    <div class="nk-post-text">
                                        <p>TJust then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                                    </div>
                                </div>
                                <div class="nk-blog-post">
                                    <div class="row vertical-gap">
                                        <div class="col-lg-3 col-md-5">
                                            <a href="blog-article.html" class="nk-post-img">
                                                <img src="${contextPath }/resources/assets/images/post-3-mid-square.jpg" alt="We found a witch! May we burn her?">
                                                <span class="nk-post-categories">
                                                    <span class="bg-main-5">Racing</span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="col-lg-9 col-md-7">
                                            <h2 class="nk-post-title h4"><a href="blog-article.html">We found a witch! May we burn her?</a></h2>
                                            <div class="nk-post-date mt-10 mb-10">
                                                <span class="fa fa-calendar"></span> Aug 27, 2018 <span class="fa fa-comments"></span> <a href="#">7 comments</a>
                                            </div>
                                            <div class="nk-post-text">
                                                <p>And she went on planning to herself how she would manage it. `They must go by the carrier,' she thought; `and how funny it'll seem, sending presents to one's own feet!...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="nk-blog-post">
                                    <div class="row vertical-gap">
                                        <div class="col-lg-3 col-md-5">
                                            <a href="blog-article.html" class="nk-post-img">
                                                <img src="${contextPath }/resources/assets/images/post-4-mid-square.jpg" alt="For good, too though, in consequence">
                                                <span class="nk-post-categories">
                                                    <span class="bg-main-5">Racing</span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="col-lg-9 col-md-7">
                                            <h2 class="nk-post-title h4"><a href="blog-article.html">For good, too though, in consequence</a></h2>
                                            <div class="nk-post-date mt-10 mb-10">
                                                <span class="fa fa-calendar"></span> Aug 14, 2018 <span class="fa fa-comments"></span> <a href="#">23 comments</a>
                                            </div>
                                            <div class="nk-post-text">
                                                <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END: Racing Tab -->
                                <div class="nk-gap"></div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tabs-1-6">
                                <div class="nk-gap"></div>
                                <!-- START: Indie Tab -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-5-fw.jpg" alt="He made his passenger captain of one">
                                        <span class="nk-post-categories">
                                            <span class="bg-main-2">Indie</span>
                                        </span>
                                    </a>
                                    <div class="nk-gap-1"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">He made his passenger captain of one</a></h2>
                                    <div class="nk-post-date mt-10 mb-10">
                                        <span class="fa fa-calendar"></span> Jul 23, 2018 <span class="fa fa-comments"></span> <a href="#">13 comments</a>
                                    </div>
                                    <div class="nk-post-text">
                                        <p>Just then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                                    </div>
                                </div>
                                <!-- END: Indie Tab -->
                                <div class="nk-gap"></div>
                            </div>
                        </div>
                    </div>
                    <!-- END: Tabbed News -->
                    <!-- START: Latest Pictures -->
                    <div class="nk-gap"></div>
                    <h2 class="nk-decorated-h-2 h3"><span><span class="text-main-1">이미지</span> 갤러리</span></h2>
                    <div class="nk-gap"></div>
                    <div class="nk-popup-gallery">
                        <div class="row vertical-gap">
                        	<c:choose>
                        		<c:when test="${empty imgList }">
                        			<div class="col-lg-4 col-md-6">
		                                <div class="nk-gallery-item-box">
		                                    <a href="${contextPath }/resources/assets/images/gallery-1.jpg" class="nk-gallery-item" data-size="1016x572">
		                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
		                                        <img src="${contextPath }/resources/assets/images/gallery-1-thumb.jpg" alt="">
		                                    </a>
		                                    <div class="nk-gallery-item-description">
		                                        <h4>아무것도 없을 경우 화면이 망가지지 않게 하는 이미지입니다.</h4> 아무것도 없을 경우 화면이 망가지지 않게 하는 이미지입니다. 아무것도 없을 경우 화면이 망가지지 않게 하는 이미지입니다.
		                                    </div>
		                                </div>
		                            </div>
                        		</c:when>
                        		<c:otherwise>
                        			<c:forEach var="imgDto" items="${imgList }" begin="0" end="${endImg }">
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
                        <br>
                    </div>
                    <!-- END: Latest Pictures -->
                    <!-- START: Best Selling -->
                    <div class="nk-gap-3"></div>
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">할인</span> 게임</span></h3>
                    <div class="nk-gap"></div>
                    <div class="row vertical-gap">
                    	<c:choose>
                    		<c:when test="${empty discountGoodsList }">
                    			<div class="col-md-6">
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
		                                    <div class="nk-gap-1"></div>
		                                    <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Add to Cart</a>
		                                </div>
		                            </div>
		                        </div>
                    		</c:when>
                    		<c:otherwise>
                    			<c:forEach var="discountGoodsDto" items="${discountGoodsList }" begin="0" end="${endDiscountGoods }">
                    				<div class="col-md-6">
			                            <div class="nk-product-cat">
			                                <a class="nk-product-image" href="${contextPath }/goods/goodsInfo?num=${discountGoodsDto.num}">
			                                    <img src="${contextPath }/smaillThumbnails?goodsFileName=${discountGoodsDto.fileName}" alt="Img">
			                                </a>
			                                <div class="nk-product-cont">
			                                    <h3 class="nk-product-title h5"><a href="store-product.html">${discountGoodsDto.goodsName }</a></h3>
			                                    <div class="nk-gap-1"></div>
			                                    <span class="nk-product-rating">
			                                        <span class="nk-product-rating-front" style="width: ${discountGoodsDto.score}%;">
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
			                                    <div class="nk-product-price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${discountGoodsDto.price * ((100 - discountGoodsDto.discountRate) / 100)}"></fmt:formatNumber> 원 (${discountGoodsDto.discountRate }% 할인중)</div>
			                                    <div class="nk-gap-1"></div>
			                                    <a href="${contextPath }/goods/goodsInfo?num=${discountGoodsDto.num}" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">구매하기</a>
			                                </div>
			                            </div>
			                        </div>
                    			</c:forEach>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                    <!-- END: Best Selling -->
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
			                                    <a href="${contextPath }/goods/goodsInfo?num=${sidePopularGoodsDto.num}" class="nk-post-image">
			                                        <img src="${contextPath }/smaillThumbnails?goodsFileName=${sidePopularGoodsDto.fileName}" alt="">
			                                    </a>
			                                    <h3 class="nk-post-title"><a href="${contextPath }/goods/goodsInfo?num=${sidePopularGoodsDto.num}">${sidePopularGoodsDto.goodsName }</a></h3>
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
        <div class="nk-gap-4"></div>
    </div>
</body>
</html>