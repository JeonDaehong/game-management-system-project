<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>404 Error</title>
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
</head>
<body>
<body>
        <div class="nk-main">
            <div class="nk-fullscreen-block">
                <div class="nk-fullscreen-block-top">
                    <div class="text-center">
                        <div class="nk-gap-4"></div>
                        <a href="${contextPath }/main/main"><img src="${contextPath }/resources/assets/images/Logo.png" width='199' alt="Logo.png"></a>
                        <div class="nk-gap-2"></div>
                    </div>
                </div>
                <div class="nk-fullscreen-block-middle">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <h1 class="text-main-1" style="font-size: 150px;">404</h1>
                                <div class="nk-gap"></div>
                                <h2 class="h4">해당 페이지를 찾을 수 없습니다!</h2>
                                <div>잘못된 경로를 요청하였습니다... <br> 다시 뒤로 되돌아가주시기 바랍니다.</div>
                                <div class="nk-gap-3"></div>
                                <a href="${contextPath }/main/main" class="nk-btn nk-btn-rounded nk-btn-color-white">Return to Homepage</a>
                            </div>
                        </div>
                        <div class="nk-gap-3"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- START: Page Background -->
        <div class="nk-page-background-fixed" style="background-image: url('${contextPath }/resources/assets/images/bg-top.png');"></div>
        <!-- END: Page Background -->
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