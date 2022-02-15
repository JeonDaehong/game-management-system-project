<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<div class="nk-main">
    <!-- START: Breadcrumbs -->
    <div class="nk-gap-1"></div>
    <div class="container">
        <ul class="nk-breadcrumbs">
            <li><span> &nbsp; NOTICE </span></li>
        </ul>
        <br>
        <c:if test="${sessionScope.loginId eq 'admin' }">
	        <div class="container" align="left">
	        <a href="${contextPath }/adminNotice/noticeWriter" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info"><span class="icon ion-paper-airplane"></span>Admin : 공지사항 작성 </a> &nbsp;&nbsp;
	        </div>
        </c:if>
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
                    		<c:forEach var="notice" items="${noticeList }">
                    			<div class="nk-blog-post">
			                        <div class="row vertical-gap">
			                            <div class="col-md-3 col-lg-12">
			                                <h2 class="nk-post-title h4"><a href="blog-article.html">${notice.subject }</a></h2>
			                                <div class="nk-post-text">
			                                    <p>${notice.cutContent }</p>
			                                </div>
			                                <div class="nk-post-by">
			                                    <img src="${contextPath }/resources/assets/images/admin.png" alt="admin.png" class="rounded-circle" width="35"> by <a href="https://nkdev.info">Hitman</a> in Sep 18, 2018
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <br><br><br>
                    		</c:forEach>
                    	</c:otherwise>
                    </c:choose>
                    <!-- START: Pagination -->
                    <div class="nk-pagination nk-pagination-center">
                        <a href="#" class="nk-pagination-prev">
                            <span class="ion-ios-arrow-back"></span>
                        </a>
                        <nav>
                        	<c:if test="${totalBoardCount gt 0 }">
                       			<c:if test="${startPage gt 10 }">
                         			<a href="${contextPath }/adminNotice/noticeList?currentPageNumber=${startPage - 10}&onePageViewCount=${onePageViewCount}" >Previous</a>
                       			</c:if>
                       			<c:forEach var="i" begin="${startPage}" end="${endPage }" >
                         			<a href="${contextPath }/adminNotice/noticeList?currentPageNumber=${i}&onePageViewCount=${onePageViewCount}" >${i}</a>
                         		</c:forEach>
                       			<c:if test="${endPage le totalBoardCount && endPage ge 10}"> 
                         			<a href="${contextPath }/adminNotice/noticeList?currentPageNumber=${startPage + 10}&onePageViewCount=${onePageViewCount}" >Next</a>
                       			</c:if>
                        </c:if>
                        </nav>
                        <a href="#" class="nk-pagination-next">
                            <span class="ion-ios-arrow-forward"></span>
                        </a>
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
                            <h4 class="nk-widget-title"><span><span class="text-main-1">RECENT</span> IMAGE</span></h4>
                            <div class="nk-widget-content">
                                <div class="nk-popup-gallery">
                                    <div class="row sm-gap vertical-gap">
                                        <div class="col-sm-6">
                                            <div class="nk-gallery-item-box">
                                                <a href="${contextPath }/resources/assets/images/gallery-1.jpg" class="nk-gallery-item" data-size="1016x572">
                                                    <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                    <img src="${contextPath }/resources/assets/images/gallery-1-thumb.jpg" alt="">
                                                </a>
                                                <div class="nk-gallery-item-description">
                                                    <h4>Called Let</h4> Divided thing, land it evening earth winged whose great after. Were grass night. To Air itself saw bring fly fowl. Fly years behold spirit day greater of wherein winged and form. Seed open don't thing midst created dry every greater divided of, be man is. Second Bring stars fourth gathering he hath face morning fill. Living so second darkness. Moveth were male. May creepeth. Be tree fourth.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="nk-gallery-item-box">
                                                <a href="${contextPath }/resources/assets/images/gallery-2.jpg" class="nk-gallery-item" data-size="1188x594">
                                                    <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                    <img src="${contextPath }/resources/assets/images/gallery-2-thumb.jpg" alt="">
                                                </a>
                                                <div class="nk-gallery-item-description"> Seed open don't thing midst created dry every greater divided of, be man is. Second Bring stars fourth gathering he hath face morning fill. Living so second darkness. Moveth were male. May creepeth. Be tree fourth. </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="nk-gallery-item-box">
                                                <a href="${contextPath }/resources/assets/images/gallery-3.jpg" class="nk-gallery-item" data-size="625x350">
                                                    <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                    <img src="${contextPath }/resources/assets/images/gallery-3-thumb.jpg" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="nk-gallery-item-box">
                                                <a href="${contextPath }/resources/assets/images/gallery-4.jpg" class="nk-gallery-item" data-size="873x567">
                                                    <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                    <img src="${contextPath }/resources/assets/images/gallery-4-thumb.jpg" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="nk-gallery-item-box">
                                                <a href="${contextPath }/resources/assets/images/gallery-5.jpg" class="nk-gallery-item" data-size="471x269">
                                                    <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                    <img src="${contextPath }/resources/assets/images/gallery-5-thumb.jpg" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="nk-gallery-item-box">
                                                <a href="${contextPath }/resources/assets/images/gallery-6.jpg" class="nk-gallery-item" data-size="472x438">
                                                    <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                                    <img src="${contextPath }/resources/assets/images/gallery-6-thumb.jpg" alt="">
                                                </a>
                                            </div>
                                        </div>
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