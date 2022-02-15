<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- START: Footer -->
<div class="nk-footer">
    <div class="container">
        <div class="nk-gap-3"></div>
        <div class="row vertical-gap">
            <div class="col-md-6">
                <div class="nk-widget">
                    <h4 class="nk-widget-title"><span class="text-main-1">DEVELOPER</span> COMMENT</h4>
                    <div class="nk-widget-content">
                        <fieldset>
                        	Game Management System 1.0 에 오신 것을 환영합니다.
                        	<hr>
                        	저희는 국내 뿐 아니라,
                        	<br>
                        	해외에서도 인기있는 여러가지 게임들을
                        	<br>
                        	한국에서 플레이 해볼 수 있도록, 구매 서비스를 운영하는 곳입니다.
                        	<br>
                        	고객님들의 많은 이용에 항상 감사합니다.
                        </fieldset>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="nk-widget">
                    <h4 class="nk-widget-title"><span class="text-main-1">DEVELOPER</span> SNS</h4>
                    <div class="nk-widget-content">
                        <div class="row vertical-gap sm-gap">
                            <div class="col-lg-6">
                                <div class="nk-widget-post-2">
                                    <a href="https://github.com/JeonDaehong" class="nk-post-image">
                                        <img src="${contextPath }/resources/assets/images/githurb.png" alt="githurb.png">
                                    </a>
                                    <div class="nk-post-title">
                                    	<a href="https://github.com/JeonDaehong">
                                    		개발자의 깃허브입니다.
                                    		<br><br>
                                    		 → 개발자의 깃허브 페이지로 이동합니다.
                                    	</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="nk-widget-post-2">
                                    <a href="https://www.instagram.com/daehong770" class="nk-post-image">
                                        <img src="${contextPath }/resources/assets/images/instar.png" alt="instar.png">
                                    </a>
                                    <div class="nk-post-title">
                                    	<a href="https://www.instagram.com/daehong770">
                                    		개발자의 인스타입니다.
                                    		<br><br>
                                    		 → 개발자의 인스타 페이지로 이동합니다.
                                    	</a>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="nk-widget">
                    <h4 class="nk-widget-title"><span class="text-main-1">DEVELOPER</span> NAME</h4>
                    <div class="nk-widget-content">
                        개발자 : 전대홍
                        <br>
                        개발자 이메일 : daehong770@gmail.com
                    </div>
                </div>
            </div>
        </div>
        <div class="nk-gap-3"></div>
    </div>
    <div class="nk-copyright">
        <div class="container">
            <div class="nk-copyright-left"> Game Management System 1.0 &copy; 2022 <a href="${contextPath }/main/main" target="_blank">main</a>
            </div>
            <div class="nk-copyright-right">
                <ul class="nk-social-links-2">
                	<li><a class="nk-social-github" href="https://github.com/JeonDaehong"><span class="fab fa-github"></span></a></li>
                	<li><a class="nk-social-instagram" href="https://www.instagram.com/daehong770"><span class="fab fa-instagram"></span></a></li>
                	<li><a class="nk-social-youtube" href="https://www.youtube.com/"><span class="fab fa-youtube"></span></a></li>
                    <li><a class="nk-social-twitch" href="https://www.twitch.tv/"><span class="fab fa-twitch"></span></a></li>
                    <li><a class="nk-social-steam" href="https://store.steampowered.com/"><span class="fab fa-steam"></span></a></li>
                    <!-- Additional Social Buttons
            <li><a class="nk-social-facebook" href="#"><span class="fab fa-facebook"></span></a></li>
            <li><a class="nk-social-google-plus" href="#"><span class="fab fa-google-plus"></span></a></li>
            <li><a class="nk-social-twitter" href="https://twitter.com/nkdevv" target="_blank"><span class="fab fa-twitter"></span></a></li>
            <li><a class="nk-social-pinterest" href="#"><span class="fab fa-pinterest-p"></span></a></li>
            <li><a class="nk-social-behance" href="#"><span class="fab fa-behance"></span></a></li>
            <li><a class="nk-social-bitbucket" href="#"><span class="fab fa-bitbucket"></span></a></li>
            <li><a class="nk-social-dropbox" href="#"><span class="fab fa-dropbox"></span></a></li>
            <li><a class="nk-social-dribbble" href="#"><span class="fab fa-dribbble"></span></a></li>
            <li><a class="nk-social-deviantart" href="#"><span class="fab fa-deviantart"></span></a></li>
            <li><a class="nk-social-flickr" href="#"><span class="fab fa-flickr"></span></a></li>
            <li><a class="nk-social-foursquare" href="#"><span class="fab fa-foursquare"></span></a></li>
            <li><a class="nk-social-github" href="#"><span class="fab fa-github"></span></a></li>
            <li><a class="nk-social-instagram" href="#"><span class="fab fa-instagram"></span></a></li>
            <li><a class="nk-social-linkedin" href="#"><span class="fab fa-linkedin"></span></a></li>
            <li><a class="nk-social-medium" href="#"><span class="fab fa-medium"></span></a></li>
            <li><a class="nk-social-odnoklassniki" href="#"><span class="fab fa-odnoklassniki"></span></a></li>
            <li><a class="nk-social-paypal" href="#"><span class="fab fa-paypal"></span></a></li>
            <li><a class="nk-social-reddit" href="#"><span class="fab fa-reddit"></span></a></li>
            <li><a class="nk-social-skype" href="#"><span class="fab fa-skype"></span></a></li>
            <li><a class="nk-social-soundcloud" href="#"><span class="fab fa-soundcloud"></span></a></li>
            <li><a class="nk-social-slack" href="#"><span class="fab fa-slack"></span></a></li>
            <li><a class="nk-social-tumblr" href="#"><span class="fab fa-tumblr"></span></a></li>
            <li><a class="nk-social-vimeo" href="#"><span class="fab fa-vimeo"></span></a></li>
            <li><a class="nk-social-vk" href="#"><span class="fab fa-vk"></span></a></li>
            <li><a class="nk-social-wordpress" href="#"><span class="fab fa-wordpress"></span></a></li>
            <li><a class="nk-social-youtube" href="#"><span class="fab fa-youtube"></span></a></li>
        -->
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END: Footer -->
</body>
</html>