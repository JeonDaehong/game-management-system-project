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