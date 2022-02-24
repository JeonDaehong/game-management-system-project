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
<script>
	function replyCheck() {
		
		var reply = document.getElementById('reply');
		if (reply.value == ""){
			alert("댓글은 한 자 이상 반드시 입력해야 합니다.");
			reply.focus();
			return false;
		}
		
		return true;
	}

</script>
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
                    <li><a href="${contextPath }/boards/boardList">Board</a></li>
                    <li><span class="fa fa-angle-right"></span></li>
                    <li><span>${boardDto.subject }</span></li>
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
                                <div class="nk-post-img">
                                    <img src="${contextPath }/bigThumbnails?goodsFileName=${boardDto.fileName}" alt="Image">
                                </div>
                                <div class="nk-gap-1"></div>
                                <h1 class="nk-post-title h4">${boardDto.subject }</h1>
                                <div class="nk-post-by">
                                    by <span style="color: pink;">${boardDto.writer}</span> in <span style="color: yellow;"><fmt:formatDate value="${boardDto.regDate }" pattern="yyyy-MM-dd"/></span><div class="nk-post-categories">
                                        <span class="bg-main-1">조회수 : ${boardDto.readCount}</span>
                                        <c:if test="${boardDto.writer eq sessionScope.loginId or sessionScope.loginId eq 'admin'}"> &nbsp;
                                        	<input type="button" value="수정하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/boards/boardUpdate?num=${boardDto.num }'">
                                        	<input type="button" value="삭제하기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/boards/boardDelete?num=${boardDto.num }&fileName=${boardDto.fileName }'">
                                        </c:if>
                                    </div>
                                </div>
                                <br>
                                <blockquote class="nk-blockquote">
                                    <div class="nk-blockquote-icon"><span>"</span></div>
                                    <div class="nk-blockquote-content"> ${boardDto.content } </div>
                                    <div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
                                </blockquote>
                                <div class="nk-gap"></div>
                                <div class="nk-gap"></div>
                                <div class="nk-gap"></div>
                            </div>
                            <!-- END: Post Text -->
                            <!-- START: Comments -->
                            <div id="comments"></div>
                            <h3 class="nk-decorated-h-2"><span><span class="text-main-1">${boardDto.commentCount }개의 </span> 최신 댓글 </span></h3>
                            <div class="nk-gap"></div>
                            <div class="nk-comments">
                                <c:choose>
                                	<c:when test="${empty replyList}">
                                		<div class="nk-comment">
		                                    <div class="nk-comment-text">
		                                        <p> 현재 등록 된 댓글이 없습니다. 첫 댓글의 주인공이 되어보세요 !</p>
		                                    </div>
		                                </div>
                                	</c:when>
                                	<c:otherwise>
                                		<c:forEach var="replyDto" items="${replyList }">
			                                <!-- START: Comment -->
			                                <div class="nk-comment">
			                                    <div class="nk-comment-meta">
			                                        <img src="${contextPath }/resources/assets/images/profile.jpeg" alt="Image" class="rounded-circle" width="35"> by <span style="color: pink;">${replyDto.writer}</span> in <span style="color: yellow;"><fmt:formatDate value="${replyDto.regDate }" pattern="yyyy-MM-dd (HH:mm:ss)"/></span> 
		                                    		<c:if test="${replyDto.writer eq sessionScope.loginId or sessionScope.loginId eq 'admin' }">
		                                    			&nbsp;&nbsp;&nbsp;<input type="button" value="댓글삭제" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/boards/deleteReply?num=${replyDto.num }&boardNum=${replyDto.boardNum }'">
		                                    		</c:if>
			                                    </div>
			                                    <div class="nk-comment-text">
			                                        <p>${replyDto.content }</p>
			                                    </div>
			                                </div>
			                                <!-- END: Comment -->
		                                </c:forEach>
                                	</c:otherwise>
                                </c:choose>
                                <div class="nk-pagination nk-pagination-center">
		                        <nav>
		                        	<c:if test="${totalBoardCount gt 0 }">
		                       			<c:if test="${startPage gt 10 }">
		                         			<a href="${contextPath }/boards/boardInfo?num=${boardDto.num }&currentPageNumber=${startPage - 10}&onePageViewCount=${onePageViewCount}" > &lt; &nbsp; Previous</a>
		                       			</c:if>
		                       			<c:forEach var="i" begin="${startPage}" end="${endPage }" >
		                         			<a href="${contextPath }/boards/boardInfo?num=${boardDto.num }&currentPageNumber=${i}&onePageViewCount=${onePageViewCount}" <c:if test="${currentPageNumber eq i }">class="nk-pagination-current"</c:if> >${i}</a>
		                         		</c:forEach>
		                       			<c:if test="${endPage le totalBoardCount && endPage ge 10}"> 
		                         			<a href="${contextPath }/boards/boardInfo?num=${boardDto.num }&currentPageNumber=${startPage + 10}&onePageViewCount=${onePageViewCount}" >Next &nbsp; &gt;</a>
		                       			</c:if>
		                        	</c:if>
		                        </nav>
		                    </div>
                            </div>
                            <!-- END: Comments -->
                            <!-- START: Reply -->
                            <div class="nk-gap-2"></div>
                            <h3 class="nk-decorated-h-2"><span><span class="text-main-1">댓글</span> 작성</span></h3>
                            <div class="nk-reply">
                                <form action="${contextPath }/boards/addReply" method="post" class="nk-form" onclick="return replyCheck()">
                                    <div class="nk-gap-1"></div>
                                    <textarea class="form-control required" name="content" rows="5" maxlength="200" placeholder="최대 200자까지 작성 가능." aria-required="true"></textarea>
                                    <div class="nk-gap-1"></div>
                                    <div class="nk-form-response-success"></div>
                                    <div class="nk-form-response-error"></div>
                                    <input type="hidden" name="writer" value="${sessionScope.loginId }">
                                    <input type="hidden" name="boardNum" value="${boardDto.num }">
                                    <input type="submit" id="reply" class="nk-btn nk-btn-rounded nk-btn-color-main-1" value="댓글 작성">
                                </form>
                            </div>
                            <!-- END: Reply -->
                        </div>
                        <!-- END: Post -->
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
</body>
</html>