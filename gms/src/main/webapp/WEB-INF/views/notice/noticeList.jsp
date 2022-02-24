<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test="${isLogOn ne true }">
	<script>
		alert('로그인 후에 열람하실 수 있습니다.');
		location.href = '${contextPath}/members/login';
	</script>
</c:if>
</head>
<body>
<div class="nk-main">
    <!-- START: Breadcrumbs -->
    <div class="nk-gap-1"></div>
    <div class="container">
        <ul class="nk-breadcrumbs">
	        <li><a href="${contextPath }/main/main">Home</a></li>
	        <li><span class="fa fa-angle-right"></span></li>
            <li><span> &nbsp; NOTICE </span></li>
        </ul>
        <br>
    </div>
    <div class="nk-gap-1"></div>
    <!-- END: Breadcrumbs -->
    <div class="container">
        <div class="row vertical-gap">
            <div class="col-lg-8">
                <!-- START: Posts List -->
                <div class="nk-blog-list">
                    <!-- START: Post -->
                    <c:choose>
                    	<c:when test="${empty noticeList }">
                    		<div class="nk-blog-post" align="center">
                        		<div class="row vertical-gap">
                            		<div class="col-md-3 col-lg-12" >
                                		<h2 class="nk-post-title h4">현재 공지사항이 없습니다.</h2>
                                		<h2 class="nk-post-title h4">Admin 계정이시라면, 공지사항을 적어주세요.</h2>
                            		</div>
                        		</div>
                    		</div>
                    	</c:when>
                    	<c:otherwise>
                    		<br>
                    		<c:forEach var="notice" items="${noticeList }">
                    			<div class="nk-blog-post" >
			                        <div class="row vertical-gap">
			                            <div class="col-md-3 col-lg-12">
			                                <h2 class="nk-post-title h4"><a href="${contextPath }/adminNotice/noticeInfo?num=${notice.num}"><span class="ion-ios-game-controller-b"></span> ${notice.subject }</a></h2>
			                                <div class="nk-post-text">
			                                    <p>${notice.cutContent }</p>
			                                </div>
			                                <div class="nk-post-by">
			                                    <img src="${contextPath }/resources/assets/images/admin.png" alt="admin.png" class="rounded-circle" width="35"> by <span style="color: pink;">Admin</span> in <span style="color: yellow;"><fmt:formatDate value="${notice.regDate }" pattern="yyyy-MM-dd"/></span> / 조회수 : ${notice.readCount }
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <hr style="background-color: gray;"> 
			                    <br>
                    		</c:forEach>
                    	</c:otherwise>
                    </c:choose>
                    <c:if test="${sessionScope.loginId eq 'admin' }"> 
	                    <div class="nk-blog-post" align="center">
	                   		<div class="row vertical-gap">
	                       		<div class="col-md-3 col-lg-12" >
	                           		<a href="${contextPath }/adminNotice/noticeWriter" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info"><span class="icon ion-paper-airplane"></span>Admin : 공지사항 작성 </a> &nbsp;&nbsp;
	                       			<br><br><br>
	                       		</div>
	                   		</div>
	               		</div>
               		</c:if>
                    <!-- START: Pagination -->
                    <div class="nk-pagination nk-pagination-center">
                        <nav>
                        	<c:if test="${totalBoardCount gt 0 }">
                       			<c:if test="${startPage gt 10 }">
                         			<a href="${contextPath }/adminNotice/noticeList?currentPageNumber=${startPage - 10}&onePageViewCount=${onePageViewCount}" > &lt; &nbsp; Previous</a>
                       			</c:if>
                       			<c:forEach var="i" begin="${startPage}" end="${endPage }" >
                         			<a href="${contextPath }/adminNotice/noticeList?currentPageNumber=${i}&onePageViewCount=${onePageViewCount}" <c:if test="${currentPageNumber eq i }">class="nk-pagination-current"</c:if> >${i}</a>
                         		</c:forEach>
                       			<c:if test="${endPage le totalBoardCount && endPage ge 10}"> 
                         			<a href="${contextPath }/adminNotice/noticeList?currentPageNumber=${startPage + 10}&onePageViewCount=${onePageViewCount}" >Next &nbsp; &gt;</a>
                       			</c:if>
                        	</c:if>
                        </nav>
                    </div>
                    <!-- END: Pagination -->
                </div>
                <!-- END: Posts List -->
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