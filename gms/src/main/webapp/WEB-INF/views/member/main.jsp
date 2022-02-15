<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Game Managememt System 1.0</title>
</head>
<body>
    <div class="nk-main">
        <div class="nk-gap-2"></div>
        <div class="container">
            <!-- START: Image Slider -->
            <div class="nk-image-slider" data-autoplay="8000">
                <div class="nk-image-slider-item">
                    <img src="${contextPath }/resources/assets/images/LostArkImg.png" alt="LostArkImg.png" class="nk-image-slider-img" data-thumb="${contextPath }/resources/assets/images/LostArkImg.png">
                    <div class="nk-image-slider-content">
                        <h3 class="h4">로스트 아크</h3>
                        <p class="text-white">스마일게이트에서 만든 신작 쿼터뷰 MMORPG로 총 6개의 클래스와 클래스별로 전직 가능한 직업군이 별도로 존재하며 레이드, 채집, 생활 등 다양한 콘텐츠를 가지고 있다...</p>
                        <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Read More</a>
                    </div>
                </div>
                <div class="nk-image-slider-item">
                    <img src="${contextPath }/resources/assets/images/NiaGame.png" alt="NiaGame.png" class="nk-image-slider-img" data-thumb="${contextPath }/resources/assets/images/NiaGame.png">
                    <div class="nk-image-slider-content">
                        <h3 class="h4">니어: 오토마타</h3>
                        <p class="text-white">무대는 우주인이 조종하는 '기계생명체'의 압도적인 전력 앞에 인류가 달로 쫓겨난 먼 미래. 플레이어는 안드로이드 부대 「요르하」 소속의 「2B」가 되어 지구탈환을 위한 싸움에 몸을 던지게 됩니다...</p>
                        <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Read More</a>
                    </div>
                </div>
                <div class="nk-image-slider-item">
                    <img src="${contextPath }/resources/assets/images/BattleGround.png" alt="BattleGround.png" class="nk-image-slider-img" data-thumb="${contextPath }/resources/assets/images/BattleGround.png">
                	<div class="nk-image-slider-content">
                        <h3 class="h4">배틀그라운드</h3>
                        <p class="text-white">배틀그라운드는 PUBG 주식회사(前 블루홀 지노게임즈)에서 개발하고 크래프톤에서 발행한 서바이벌 슈터 게임이다.</p>
                        <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Read More</a>
                    </div>
                </div>
                <div class="nk-image-slider-item">
                    <img src="${contextPath }/resources/assets/images/GTA5.png" alt="GTA5.png" class="nk-image-slider-img" data-thumb="${contextPath }/resources/assets/images/GTA5.png">
                    <div class="nk-image-slider-content">
                        <h3 class="h4">GTA5</h3>
                        <p class="text-white">로스 산토스는 찬란한 햇빛을 받으며 거대하게 뻗은 대도시입니다. 이곳에는 감동적인 인간 승리를 이뤄낸 사람들과 수많은 아이돌 스타, 퇴물이 되어가는 유명인사 등, 한때는 서구 세계의 부러움을 한몸에 받았던 사람들이 경제 불황과 싸구려 리얼리티 TV 시대에 살아남으려 발버둥치고 있습니다.</p>
                        <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Read More</a>
                    </div>
                </div>
                <div class="nk-image-slider-item">
                    <img src="${contextPath }/resources/assets/images/HerosStorm.png" alt="HerosStorm.png" class="nk-image-slider-img" data-thumb="${contextPath }/resources/assets/images/HerosStorm.png">
                    <div class="nk-image-slider-content">
                        <h3 class="h4">히어로즈 오브 더 스톰</h3>
                        <p class="text-white">히어로즈 오브 더 스톰(Heroes of the Storm,히오스)는 블리자드 엔터테인먼트가 개발한 RTS ( Real - Time Strategy, 실시간 전략 게임 )이다.</p>
                        <p class="text-white">블리자드 엔터테인먼트 게임들인 워크래프트, 디아블로, 스타크래프트, 오버워치, 블리자드 고전 게임에 등장하는 영웅들이 함께 나오는 게임이다...</p>
                        <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Read More</a>
                    </div>
                </div>
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
                            <h3 class="nk-feature-title"><a href="#">PC</a></h3>
                            <h4 class="nk-feature-title text-main-1"><a href="#">View Games</a></h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="nk-feature-1">
                        <div class="nk-feature-icon">
                            <img src="${contextPath }/resources/assets/images/icon-gamepad.svg" alt="">
                        </div>
                        <div class="nk-feature-cont">
                            <h3 class="nk-feature-title"><a href="#">PS4</a></h3>
                            <h4 class="nk-feature-title text-main-1"><a href="#">View Games</a></h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="nk-feature-1">
                        <div class="nk-feature-icon">
                            <img src="${contextPath }/resources/assets/images/icon-gamepad-2.svg" alt="">
                        </div>
                        <div class="nk-feature-cont">
                            <h3 class="nk-feature-title"><a href="#">Xbox</a></h3>
                            <h4 class="nk-feature-title text-main-1"><a href="#">View Games</a></h4>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: Categories -->
            <!-- START: Latest News -->
            <div class="nk-gap-2"></div>
            <h3 class="nk-decorated-h-2"><span><span class="text-main-1">인기</span> 게임</span></h3>
            <div class="nk-gap"></div>
            <div class="nk-news-box">
                <div class="nk-news-box-list">
                    <div class="nano">
                        <div class="nano-content">
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
                            <div class="nk-news-box-item">
                                <div class="nk-news-box-item-img">
                                    <img src="${contextPath }/resources/assets/images/post-3-sm.jpg" alt="We found a witch! May we burn her?">
                                </div>
                                <img src="${contextPath }/resources/assets/images/post-3.jpg" alt="We found a witch! May we burn her?" class="nk-news-box-item-full-img">
                                <h3 class="nk-news-box-item-title">We found a witch! May we burn her?</h3>
                                <span class="nk-news-box-item-categories">
                                    <span class="bg-main-2">Adventure</span>
                                </span>
                                <div class="nk-news-box-item-text">
                                    <p>And she went on planning to herself how she would manage it. `They must go by the carrier,' she thought; `and how funny it'll seem, sending presents to one's own feet!...</p>
                                </div>
                                <a href="blog-article.html" class="nk-news-box-item-url">Read More</a>
                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> Aug 27, 2018</div>
                            </div>
                            <div class="nk-news-box-item">
                                <div class="nk-news-box-item-img">
                                    <img src="${contextPath }/resources/assets/images/post-4-sm.jpg" alt="For good, too though, in consequence">
                                </div>
                                <img src="${contextPath }/resources/assets/images/post-4.jpg" alt="For good, too though, in consequence" class="nk-news-box-item-full-img">
                                <h3 class="nk-news-box-item-title">For good, too though, in consequence</h3>
                                <span class="nk-news-box-item-categories">
                                    <span class="bg-main-3">Strategy</span>
                                </span>
                                <div class="nk-news-box-item-text">
                                    <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                                </div>
                                <a href="blog-article.html" class="nk-news-box-item-url">Read More</a>
                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> Aug 14, 2018</div>
                            </div>
                            <div class="nk-news-box-item">
                                <div class="nk-news-box-item-img">
                                    <img src="${contextPath }/resources/assets/images/post-5-sm.jpg" alt="He made his passenger captain of one">
                                </div>
                                <img src="${contextPath }/resources/assets/images/post-5.jpg" alt="He made his passenger captain of one" class="nk-news-box-item-full-img">
                                <h3 class="nk-news-box-item-title">He made his passenger captain of one</h3>
                                <span class="nk-news-box-item-categories">
                                    <span class="bg-main-5">Indie</span>
                                </span>
                                <div class="nk-news-box-item-text">
                                    <p>Just then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                                </div>
                                <a href="blog-article.html" class="nk-news-box-item-url">Read More</a>
                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> Jul 23, 2018</div>
                            </div>
                            <div class="nk-news-box-item">
                                <div class="nk-news-box-item-img">
                                    <img src="${contextPath }/resources/assets/images/post-6-sm.jpg" alt="At first, for some time, I was not able to answer">
                                </div>
                                <img src="${contextPath }/resources/assets/images/post-6.jpg" alt="At first, for some time, I was not able to answer" class="nk-news-box-item-full-img">
                                <h3 class="nk-news-box-item-title">At first, for some time, I was not able to answer</h3>
                                <span class="nk-news-box-item-categories">
                                    <span class="bg-main-5">Racing</span>
                                </span>
                                <div class="nk-news-box-item-text">
                                    <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                                </div>
                                <a href="blog-article.html" class="nk-news-box-item-url">Read More</a>
                                <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> Jul 3, 2018</div>
                            </div>
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
                        <!-- START: Post -->
                        <div class="nk-blog-post">
                            <a href="blog-article.html" class="nk-post-img">
                                <img src="${contextPath }/resources/assets/images/post-6-mid.jpg" alt="At first, for some time, I was not able to answer">
                                <span class="nk-post-comments-count">0</span>
                                <span class="nk-post-categories">
                                    <span class="bg-main-5">Racing</span>
                                </span>
                            </a>
                            <div class="nk-gap"></div>
                            <h2 class="nk-post-title h4"><a href="blog-article.html">At first, for some time, I was not able to answer</a></h2>
                            <div class="nk-post-text">
                                <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                            </div>
                            <div class="nk-gap"></div>
                            <a href="blog-article.html" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
                            <div class="nk-post-date float-right"><span class="fa fa-calendar"></span> Jul 3, 2018</div>
                        </div>
                        <!-- END: Post -->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!-- START: Post -->
                        <div class="nk-blog-post">
                            <a href="blog-article.html" class="nk-post-img">
                                <img src="${contextPath }/resources/assets/images/post-7-mid.jpg" alt="At length one of them called out in a clear">
                                <span class="nk-post-comments-count">0</span>
                                <span class="nk-post-categories">
                                    <span class="bg-main-6">MOBA</span>
                                </span>
                            </a>
                            <div class="nk-gap"></div>
                            <h2 class="nk-post-title h4"><a href="blog-article.html">At length one of them called out in a clear</a></h2>
                            <div class="nk-post-text">
                                <p>TJust then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                            </div>
                            <div class="nk-gap"></div>
                            <a href="blog-article.html" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
                            <div class="nk-post-date float-right"><span class="fa fa-calendar"></span> Jul 3, 2018</div>
                        </div>
                        <!-- END: Post -->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!-- START: Post -->
                        <div class="nk-blog-post">
                            <a href="blog-article.html" class="nk-post-img">
                                <img src="${contextPath }/resources/assets/images/post-8-mid.jpg" alt="For good, too though, in consequence">
                                <span class="nk-post-comments-count">0</span>
                                <span class="nk-post-categories">
                                    <span class="bg-main-2">Adventure</span>
                                </span>
                            </a>
                            <div class="nk-gap"></div>
                            <h2 class="nk-post-title h4"><a href="blog-article.html">For good, too though, in consequence</a></h2>
                            <div class="nk-post-text">
                                <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                            </div>
                            <div class="nk-gap"></div>
                            <a href="blog-article.html" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
                            <div class="nk-post-date float-right"><span class="fa fa-calendar"></span> Jul 3, 2018</div>
                        </div>
                        <!-- END: Post -->
                    </div>
                </div>
            </div>
            <!-- END: Latest News -->
            <div class="nk-gap-2"></div>
            <div class="row vertical-gap">
                <div class="col-lg-8">
                    <!-- START: Latest Posts -->
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">공지</span> 사항</span></h3>
                    <div class="nk-gap"></div>
                    <div class="nk-blog-grid">
                        <div class="row">
                            <div class="col-md-6">
                                <!-- START: Post -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-5-mid.jpg" alt="He made his passenger captain of one">
                                        <span class="nk-post-comments-count">13</span>
                                    </a>
                                    <div class="nk-gap"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">He made his passenger captain of one</a></h2>
                                    <div class="nk-post-by">
                                        <img src="${contextPath }/resources/assets/images/avatar-3.jpg" alt="Wolfenstein" class="rounded-circle" width="35"> by <a href="https://nkdev.info">Wolfenstein</a> in Jul 23, 2018
                                    </div>
                                    <div class="nk-gap"></div>
                                    <div class="nk-post-text">
                                        <p>Just then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                                    </div>
                                    <div class="nk-gap"></div>
                                    <a href="blog-article.html" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
                                </div>
                                <!-- END: Post -->
                            </div>
                            <div class="col-md-6">
                                <!-- START: Post -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-6-mid.jpg" alt="At first, for some time, I was not able to answer">
                                        <span class="nk-post-comments-count">0</span>
                                    </a>
                                    <div class="nk-gap"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">At first, for some time, I was not able to answer</a></h2>
                                    <div class="nk-post-by">
                                        <img src="${contextPath }/resources/assets/images/avatar-3.jpg" alt="Wolfenstein" class="rounded-circle" width="35"> by <a href="https://nkdev.info">Wolfenstein</a> in Jul 3, 2018
                                    </div>
                                    <div class="nk-gap"></div>
                                    <div class="nk-post-text">
                                        <p>This little wandering journey, without settled place of abode, had been so unpleasant to me, that my own house, as I called it to myself, was a perfect settlement to me compared to that...</p>
                                    </div>
                                    <div class="nk-gap"></div>
                                    <a href="blog-article.html" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Read More</a>
                                </div>
                                <!-- END: Post -->
                            </div>
                        </div>
                    </div>
                    <!-- END: Latest Posts -->
                    <!-- START: Tabbed News  -->
                    <div class="nk-gap-3"></div>
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">자유</span> 게시판</span></h3>
                    <div class="nk-gap"></div>
                    <div class="nk-tabs">
                        <!--
                Additional Classes:
                    .nav-tabs-fill
            -->
                        <ul class="nav nav-tabs nav-tabs-fill" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" href="#tabs-1-1" role="tab" data-toggle="tab">Action</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#tabs-1-2" role="tab" data-toggle="tab">MMO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#tabs-1-3" role="tab" data-toggle="tab">Strategy</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#tabs-1-4" role="tab" data-toggle="tab">Adventure</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#tabs-1-5" role="tab" data-toggle="tab">Racing</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#tabs-1-6" role="tab" data-toggle="tab">Indie</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show active" id="tabs-1-1">
                                <div class="nk-gap"></div>
                                <!-- START: Action Tab -->
                                <div class="nk-blog-post">
                                    <a href="blog-article.html" class="nk-post-img">
                                        <img src="${contextPath }/resources/assets/images/post-2-fw.jpg" alt="Grab your sword and fight the Horde">
                                        <span class="nk-post-categories">
                                            <span class="bg-main-1">Action</span>
                                        </span>
                                    </a>
                                    <div class="nk-gap-1"></div>
                                    <h2 class="nk-post-title h4"><a href="blog-article.html">Grab your sword and fight the Horde</a></h2>
                                    <div class="nk-post-date mt-10 mb-10">
                                        <span class="fa fa-calendar"></span> Sep 5, 2018 <span class="fa fa-comments"></span> <a href="#">7 comments</a>
                                    </div>
                                    <div class="nk-post-text">
                                        <p>For good, too; though, in consequence of my previous emotions, I was still occasionally seized with a stormy sob . After we had jogged on for some little time, I asked the carrier...</p>
                                    </div>
                                </div>
                                <div class="nk-blog-post">
                                    <div class="row vertical-gap">
                                        <div class="col-lg-3 col-md-5">
                                            <a href="blog-article.html" class="nk-post-img">
                                                <img src="${contextPath }/resources/assets/images/post-7-mid-square.jpg" alt="At length one of them called out in a clear">
                                                <span class="nk-post-categories">
                                                    <span class="bg-main-1">Action</span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="col-lg-9 col-md-7">
                                            <h2 class="nk-post-title h4"><a href="blog-article.html">At length one of them called out in a clear</a></h2>
                                            <div class="nk-post-date mt-10 mb-10">
                                                <span class="fa fa-calendar"></span> Jul 3, 2018 <span class="fa fa-comments"></span> <a href="#">0 comments</a>
                                            </div>
                                            <div class="nk-post-text">
                                                <p>TJust then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="nk-blog-post">
                                    <div class="row vertical-gap">
                                        <div class="col-lg-3 col-md-5">
                                            <a href="blog-article.html" class="nk-post-img">
                                                <img src="${contextPath }/resources/assets/images/post-9-mid-square.jpg" alt="He made his passenger captain of one">
                                                <span class="nk-post-categories">
                                                    <span class="bg-main-1">Action</span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="col-lg-9 col-md-7">
                                            <h2 class="nk-post-title h4"><a href="blog-article.html">He made his passenger captain of one</a></h2>
                                            <div class="nk-post-date mt-10 mb-10">
                                                <span class="fa fa-calendar"></span> Jul 3, 2018 <span class="fa fa-comments"></span> <a href="#">0 comments</a>
                                            </div>
                                            <div class="nk-post-text">
                                                <p>Just then her head struck against the roof of the hall: in fact she was now more than nine feet high, and she at once took up the little golden key and hurried off to the garden door...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                            <div class="col-lg-4 col-md-6">
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
                            <div class="col-lg-4 col-md-6">
                                <div class="nk-gallery-item-box">
                                    <a href="${contextPath }/resources/assets/images/gallery-2.jpg" class="nk-gallery-item" data-size="1188x594">
                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                        <img src="${contextPath }/resources/assets/images/gallery-2-thumb.jpg" alt="">
                                    </a>
                                    <div class="nk-gallery-item-description"> Seed open don't thing midst created dry every greater divided of, be man is. Second Bring stars fourth gathering he hath face morning fill. Living so second darkness. Moveth were male. May creepeth. Be tree fourth. </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="nk-gallery-item-box">
                                    <a href="${contextPath }/resources/assets/images/gallery-3.jpg" class="nk-gallery-item" data-size="625x350">
                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                        <img src="${contextPath }/resources/assets/images/gallery-3-thumb.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="nk-gallery-item-box">
                                    <a href="${contextPath }/resources/assets/images/gallery-4.jpg" class="nk-gallery-item" data-size="873x567">
                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                        <img src="${contextPath }/resources/assets/images/gallery-4-thumb.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="nk-gallery-item-box">
                                    <a href="${contextPath }/resources/assets/images/gallery-5.jpg" class="nk-gallery-item" data-size="471x269">
                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                        <img src="${contextPath }/resources/assets/images/gallery-5-thumb.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="nk-gallery-item-box">
                                    <a href="${contextPath }/resources/assets/images/gallery-6.jpg" class="nk-gallery-item" data-size="472x438">
                                        <div class="nk-gallery-item-overlay"><span class="ion-eye"></span></div>
                                        <img src="${contextPath }/resources/assets/images/gallery-6-thumb.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END: Latest Pictures -->
                    <!-- START: Best Selling -->
                    <div class="nk-gap-3"></div>
                    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">할인</span> 게임</span></h3>
                    <div class="nk-gap"></div>
                    <div class="row vertical-gap">
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
                        <div class="col-md-6">
                            <div class="nk-product-cat">
                                <a class="nk-product-image" href="store-product.html">
                                    <img src="${contextPath }/resources/assets/images/product-12-xs.jpg" alt="A hundred thousand">
                                </a>
                                <div class="nk-product-cont">
                                    <h3 class="nk-product-title h5"><a href="store-product.html">A hundred thousand</a></h3>
                                    <div class="nk-gap-1"></div>
                                    <span class="nk-product-rating">
                                        <span class="nk-product-rating-front" style="width: 90%;">
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
                                    <div class="nk-product-price">€ 20.00</div>
                                    <div class="nk-gap-1"></div>
                                    <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="nk-product-cat">
                                <a class="nk-product-image" href="store-product.html">
                                    <img src="${contextPath }/resources/assets/images/product-13-xs.jpg" alt="So saying he unbuckled">
                                </a>
                                <div class="nk-product-cont">
                                    <h3 class="nk-product-title h5"><a href="store-product.html">So saying he unbuckled</a></h3>
                                    <div class="nk-gap-1"></div>
                                    <span class="nk-product-rating">
                                        <span class="nk-product-rating-front" style="width: 100%;">
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
                                    <div class="nk-product-price">€ 23.00</div>
                                    <div class="nk-gap-1"></div>
                                    <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Add to Cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="nk-product-cat">
                                <a class="nk-product-image" href="store-product.html">
                                    <img src="${contextPath }/resources/assets/images/product-14-xs.jpg" alt="However, I have reason">
                                </a>
                                <div class="nk-product-cont">
                                    <h3 class="nk-product-title h5"><a href="store-product.html">However, I have reason</a></h3>
                                    <div class="nk-gap-1"></div>
                                    <span class="nk-product-rating">
                                        <span class="nk-product-rating-front" style="width: 20%;">
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
                                    <div class="nk-product-price">€ 32.00</div>
                                    <div class="nk-gap-1"></div>
                                    <a href="#" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Add to Cart</a>
                                </div>
                            </div>
                        </div>
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
        <div class="nk-gap-4"></div>
    </div>
</body>
</html>