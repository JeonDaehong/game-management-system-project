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
		history.go(-1);
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
        <li><a href="${contextPath }/adminNotice/noticeList">Notice</a></li>
        <li><span class="fa fa-angle-right"></span></li>
        <li><span>${noticeDto.subject }</span></li>
    </ul>
</div>
<div class="nk-gap-1"></div>
<!-- END: Breadcrumbs -->
<div class="container">
    <div class="row vertical-gap">
        <div class="col-lg-8">
            <!-- START: Post -->
            <div class="nk-blog-post nk-blog-post-single">
                <!-- START: Post Text -->
                <div class="nk-post-text mt-0">
                    <p align="right" style="color: white;">
                    	<strong>조회수 : ${noticeDto.readCount }</strong> &nbsp;
                   		<strong>추천수 : ${noticeDto.suggestion }</strong>
                   	</p>
                    <blockquote class="nk-blockquote">
                        <div class="nk-blockquote-icon"><span>"</span></div>
                        <div class="nk-blockquote-content"> ${noticeDto.content }</div>
                        <div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
                    </blockquote>
                </div>
                <!-- END: Post Text -->
                <form action="${contextPath}/adminNotice/noticeSuggestion" method="post">
                <p align="center">
					<br>
					<c:choose>
						<c:when test="${sessionScope.loginId eq 'admin' }">
							<input type="button" value="수정하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminNotice/noticeUpdate?num=${noticeDto.num}'"> &nbsp;&nbsp;
							<input type="button" value="삭제하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminNotice/noticeDelete?num=${noticeDto.num}'"> &nbsp;&nbsp;
						</c:when>
						<c:otherwise>
							<input type="hidden" name="noticeNum" value="${noticeDto.num }">
							<input type="hidden" name="memberId" value="${sessionScope.loginId }">							
							<input type="submit" value="추천하기 : ( ${noticeDto.suggestion } )" class="nk-btn nk-btn-rounded nk-btn-color-main-1" > &nbsp;&nbsp;
						</c:otherwise>
					</c:choose>
					<input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/adminNotice/noticeList'">
				</p>
				</form>
            </div>
            <!-- END: Post -->
        </div>
        <div class="col-lg-4">
            <!--
    START: Sidebar
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