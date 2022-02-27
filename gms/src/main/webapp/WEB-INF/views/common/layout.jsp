<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script src="${contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
<script>

	$().ready(function(){
		
		$("#getSearchBoard").click(function(){
		
			var searchKeyword = $("#searchKeyword").val();
			var url = "${contextPath}/goods/goodsList?";
				url += "searchKeyword="+searchKeyword;
		
			if (searchKeyword == "") {
				alert('검색어를 입력해주시기 바랍니다.');
			} else {
				location.href=url;
			}
		});
		
		
		$("#getSideSearchBoard").click(function(){
			
			var sideSearchKeyword = $("#sideSearchKeyword").val();
			var url = "${contextPath}/goods/goodsList?";
				url += "searchKeyword="+sideSearchKeyword;
		
			if (sideSearchKeyword == "") {
				alert('검색어를 입력해주시기 바랍니다.');
			} else {
				location.href=url;
			}
		});
		
	});

</script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><tiles:insertAttribute name="title" /></title>
<meta name="description" content="GoodGames - Bootstrap template for communities and games store">
<meta name="keywords" content="game, gaming, template, HTML template, responsive, Bootstrap, premium">
<meta name="author" content="_nK">
<link rel="icon" type="image/png" href="${contextPath }/resources/assets/images/favicon.png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- START: Styles -->
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7cOpen+Sans:400,700" rel="stylesheet" type="text/css">
<!-- Bootstrap -->
<link rel="stylesheet" href="${contextPath }/resources/assets/vendor/bootstrap/dist/css/bootstrap.min.css">
<!-- FontAwesome -->
<script defer src="${contextPath }/resources/assets/vendor/fontawesome-free/js/all.js"></script>
<script defer src="${contextPath }/resources/assets/vendor/fontawesome-free/js/v4-shims.js"></script>
<!-- IonIcons -->
<link rel="stylesheet" href="${contextPath }/resources/assets/vendor/ionicons/css/ionicons.min.css">
<!-- Flickity -->
<link rel="stylesheet" href="${contextPath }/resources/assets/vendor/flickity/dist/flickity.min.css">
<!-- Photoswipe -->
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/assets/vendor/photoswipe/dist/photoswipe.css">
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/assets/vendor/photoswipe/dist/default-skin/default-skin.css">
<!-- Seiyria Bootstrap Slider -->
<link rel="stylesheet" href="${contextPath }/resources/assets/vendor/bootstrap-slider/dist/css/bootstrap-slider.min.css">
<!-- Summernote -->
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/assets/vendor/summernote/dist/summernote-bs4.css">
<!-- GoodGames -->
<link rel="stylesheet" href="${contextPath }/resources/assets/css/goodgames.min.css">
<!-- Custom Styles -->
<link rel="stylesheet" href="${contextPath }/resources/assets/css/custom.css">
<!-- END: Styles -->
<!-- jQuery -->
<script src="${contextPath }/resources/assets/vendor/jquery/dist/jquery.min.js"></script>
<script>
	function loginCheck() {
		
		
		if (document.getElementById('memberId').value == '') {
			alert('ID를 입력해주세요.');
			document.getElementById('memberId').focus();
			return false;
		}
		
		if (document.getElementById('memberPw').value == '') {
			alert('패스워드를 입력해주세요.');
			document.getElementById('memberPw').focus();
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
	<div>
		<header>
			<tiles:insertAttribute name="header" />
		</header>
	</div>
    <div id="nk-nav-mobile" class="nk-navbar nk-navbar-side nk-navbar-right-side nk-navbar-overlay-content d-lg-none">
        <div class="nano">
            <div class="nano-content">
                <a href="${contextPath }/main/main" class="nk-nav-logo">
                    <img src="${contextPath }/resources/assets/images/Logo.png" alt="MyLogo" width="120">
                </a>
                <div class="nk-navbar-mobile-content">
                    <ul class="nk-nav">
                        <!-- Here will be inserted menu from [data-mobile-menu="#nk-nav-mobile"] -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
	<div>
		<article>
			<tiles:insertAttribute name="content" />
		</article>
	</div>
	<div>
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
<!-- START: Page Background -->
<img class="nk-page-background-top" src="${contextPath }/resources/assets/images/bg-top.png" alt="">
<img class="nk-page-background-bottom" src="${contextPath }/resources/assets/images/bg-bottom.png" alt="">
<!-- END: Page Background -->
<!-- START: Search Modal -->
<div class="nk-modal modal fade" id="modalSearch" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="ion-android-close"></span>
                </button>
                <h4 class="mb-0">Search</h4>
                <div class="nk-gap-1"></div>
                    <input type="text" name="searchKeyword" id="searchKeyword" class="form-control" placeholder="검색어를 입력해주세요..." autofocus>
                	<div align="right">
          				<br><button class="nk-btn nk-btn-color-main-1" id="getSearchBoard"><span class="ion-search"></span></button>
          			</div>
            </div>
        </div>
    </div>
</div>
<!-- END: Search Modal -->
<!-- START: Scripts -->
<!-- Object Fit Polyfill -->
<script src="${contextPath }/resources/assets/vendor/object-fit-images/dist/ofi.min.js"></script>
<!-- GSAP -->
<script src="${contextPath }/resources/assets/vendor/gsap/src/minified/TweenMax.min.js"></script>
<script src="${contextPath }/resources/assets/vendor/gsap/src/minified/plugins/ScrollToPlugin.min.js"></script>
<!-- Popper -->
<script src="${contextPath }/resources/assets/vendor/popper.js/dist/umd/popper.min.js"></script>
<!-- Bootstrap -->
<script src="${contextPath }/resources/assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Sticky Kit -->
<script src="${contextPath }/resources/assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>
<!-- Jarallax -->
<script src="${contextPath }/resources/assets/vendor/jarallax/dist/jarallax.min.js"></script>
<script src="${contextPath }/resources/assets/vendor/jarallax/dist/jarallax-video.min.js"></script>
<!-- imagesLoaded -->
<script src="${contextPath }/resources/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
<!-- Flickity -->
<script src="${contextPath }/resources/assets/vendor/flickity/dist/flickity.pkgd.min.js"></script>
<!-- Photoswipe -->
<script src="${contextPath }/resources/assets/vendor/photoswipe/dist/photoswipe.min.js"></script>
<script src="${contextPath }/resources/assets/vendor/photoswipe/dist/photoswipe-ui-default.min.js"></script>
<!-- Jquery Validation -->
<script src="${contextPath }/resources/assets/vendor/jquery-validation/dist/jquery.validate.min.js"></script>
<!-- Jquery Countdown + Moment -->
<script src="${contextPath }/resources/assets/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script src="${contextPath }/resources/assets/vendor/moment/min/moment.min.js"></script>
<script src="${contextPath }/resources/assets/vendor/moment-timezone/builds/moment-timezone-with-data.min.js"></script>
<!-- Hammer.js -->
<script src="${contextPath }/resources/assets/vendor/hammerjs/hammer.min.js"></script>
<!-- NanoSroller -->
<script src="${contextPath }/resources/assets/vendor/nanoscroller/bin/javascripts/jquery.nanoscroller.js"></script>
<!-- SoundManager2 -->
<script src="${contextPath }/resources/assets/vendor/soundmanager2/script/soundmanager2-nodebug-jsmin.js"></script>
<!-- Seiyria Bootstrap Slider -->
<script src="${contextPath }/resources/assets/vendor/bootstrap-slider/dist/bootstrap-slider.min.js"></script>
<!-- Summernote -->
<script src="${contextPath }/resources/assets/vendor/summernote/dist/summernote-bs4.min.js"></script>
<!-- nK Share -->
<script src="${contextPath }/resources/assets/plugins/nk-share/nk-share.js"></script>
<!-- GoodGames -->
<script src="${contextPath }/resources/assets/js/goodgames.min.js"></script>
<script src="${contextPath }/resources/assets/js/goodgames-init.js"></script>
<!-- END: Scripts -->
</body>
</html>