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
            <div class="container">
            	<br>
                <ul class="nk-breadcrumbs">
                    <li><a href="${contextPath }/main/main">Home</a></li>
                    <li><span class="fa fa-angle-right"></span></li>
                    <li><span>Gallery</span></li>
                </ul>
            </div>
            <div class="nk-gap-1"></div>
            <!-- END: Breadcrumbs -->
            <div class="container">
                <div class="row vertical-gap">
                    <div class="col-lg-8">
                        <!-- START: Latest Pictures -->
                        <h2 class="nk-decorated-h-2 h3"><span><span class="text-main-1">New 15</span> IMG GALLERY</span></h2>
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
		                                            <h4>이미지가 없을경우 나오는 예시 이미지입니다.</h4> 이미지가 없을경우 나오는 예시 이미지입니다. 이미지가 없을경우 나오는 예시 이미지입니다. 이미지가 없을경우 나오는 예시 이미지입니다.
		                                        </div>
		                                    </div>
		                                </div>
                            		</c:when>
                            		<c:otherwise>
                            			<c:forEach var="imgDto" items="${imgList }" end="${end }">
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
                                <div class="col-lg-12 col-md-10" align="center">
                                	<input type="button" value="이미지 등록하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/imageBoard/imageBoardWrite'">
                            	</div>
                            </div>
                        </div>
                        <!-- END: Latest Pictures -->
                        <!-- START: Video Galleries-->
                        <div class="nk-gap-2"></div>
                        <h2 class="nk-decorated-h-2 h3"><span><span class="text-main-1">Recommend</span> Video</span></h2>
                        <div class="nk-gap"></div>
                        <div class="row vertical-gap">
                            <div class="col-md-6">
                                <h4>[리그오브레전드] 요릭 1위가 알려주는 요릭 한 눈에 보기｜League of legend</h4>
                                <div class="nk-plain-video" data-video="https://www.youtube.com/watch?v=NnyXF0R0KCk&t=16s"></div>
                            </div>
                            <div class="col-md-6">
                                <h4>[로스트아크] LOA ON WINTER – 사운드 트랙 Rock ver. 공연｜LOST ARK</h4>
                                <div class="nk-plain-video" data-video="https://www.youtube.com/watch?v=18pEJzUCxpU"></div>
                            </div>
                            <div class="col-md-6">
                                <h4>[로스트아크] 신규 클래스 '도화가🎨' 미리보기｜LOST ARK</h4>
                                <div class="nk-plain-video" data-video="https://www.youtube.com/watch?v=kGWy3crwLGM"></div>
                            </div>
                            <div class="col-md-6">
                                <h4>[리그오브레전드] 레나타 글라스크 챔피언 집중탐구｜League of legend </h4>
                                <div class="nk-plain-video" data-video="https://www.youtube.com/watch?v=cIFWo9ZRN-w"></div>
                            </div>
                        </div>
                        <!-- END: Video Galleries -->
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
            <div class="nk-gap-2"></div>
         </div>
</body>
</html>