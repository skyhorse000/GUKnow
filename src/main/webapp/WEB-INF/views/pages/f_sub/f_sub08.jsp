<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="author" content="G.U.Know">
  <meta name="description" content="plan now. travel later">
  <meta name="keywords" content="travel, trip, tour">
  <title>G.U.Know travel</title>

  <!-- css -->
  <link rel="stylesheet" href="resources/home/assets/css/reset.css">
  <link rel="stylesheet" href="resources/home/assets/css/style.css">
  <link rel="stylesheet" href="resources/home/assets/css/f_sub.css">
  <link rel="stylesheet" href="resources/home/assets/css/f_sub08/swiper.css">

  <!-- 파비콘 -->
  <link rel="shortcut icon" href="resources/home/assets/icons/favicon.ico">
  <link rel="apple-touch-icon-precomposed" href="resources/home/assets/icons/favicon_72.png" />
  <link rel="apple-touch-icon-precomposed" sizes="96x96" href="resources/home/assets/icons/favicon_96.png" />
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/home/assets/icons/favicon_144.png" />
  <link rel="apple-touch-icon-precomposed" sizes="192x192" href="resources/home/assets/icons/favicon_192.png" />

  <!-- 웹 폰트 -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">

  <!-- HTLM5shiv ie6~8 -->
  <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.min.js"></script>
      <script type="text/javascript">
         alert("현재 브라우저는 지원하지 않습니다. 크롬 브라우저를 추천합니다.!");
      </script>
   <![endif]-->
</head>

<body style="overflow: auto;">
  <header id="header">
    <div class="container">
      <div class="row">
        <div class="header clearfix">
          <h1>
            <a href="/project/home">
              <em><img src="resources/home/assets/img/logo.png" alt="G.U.Know travel"></em>
              <strong><img src="resources/home/assets/img/logo-sub.png" alt="TRAVEL"></strong>
            </a>
          </h1>
          <nav class="nav">
            <c:choose>
              <c:when test="${sessionScope.username == null }">
                <ul class="clearfix">
                  <li><a href="login/login">로그인</a></li>
                  <li><a href="login/register">회원가입</a></li>
                </ul>
              </c:when>
              <c:otherwise>
                <ul class="clearfix">
                  <li><b>${sessionScope.username }</b></li>
                  <li><a href="./login/logout">로그아웃</a></li>
                </ul>
              </c:otherwise>
            </c:choose>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- //header -->

  <!-- contents -->
  <section id="movie">
    <div class="container">
      <div class="row">
        <h2 class="ir_so">Favorite</h2>
        <div id="contents">
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">44</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">18</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">10,134</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>[친환경 여행 테마] 지구별 여행자의 친환경 여행법</h2>
            <div class="area_address">
              <span class="address">전국 </span>
              <span id="modi_date">수정일 : 2019.12.02</span>
            </div>
            <button type="button" title="열기" class="btn_titview">더보기</button>
            <!-- 팝업 메뉴 -->
            <div class="pop_subMenu">
              <ul>
                <li class="btn_far"><a href="javascript:" onclick="setFavoContentDetail()">즐겨찾기</a></li>
                <li class="btn_share"><a href="javascript:openShare();">공유하기</a></li>
                <li class="btn_print"><a href="javascript:openPrint();">인쇄하기</a></li>
              </ul>
            </div>
            <!-- //팝업 메뉴 -->
          </div>

          <!-- 내용 -->
          <div class="wrap_contView">
            <!-- 1108 추가 -->
            <!-- 기사 섹션 네비게이션 -->
            <div class="detail_nav" style="display:none;">
              <ul class="detail_nav_menu">
                <li>
                  <a href="#titCont">
                    <img src="resources/home/assets/img/ico_detail_nav01.png" class="ico" alt="">
                    <span class="tit">본문내용</span>
                  </a>
                </li>
                <li>
                  <a href="#titTrableInfo">
                    <img src="resources/home/assets/img/ico_detail_nav02.png" class="ico" alt="">
                    <span class="tit">여행정보</span>
                  </a>
                </li>
                <li style="display:none;" id="vtitMoveInfo">
                  <a href="#titMoveInfo">
                    <img src="resources/home/assets/img/ico_detail_nav03.png" class="ico" alt="">
                    <span class="tit">이동정보</span>
                  </a>
                </li>
                <li style="display:none;" id="vtitFoodAcc">
                  <a href="#titFoodAcc">
                    <img src="resources/home/assets/img/ico_detail_nav04.png" class="ico" alt="">
                    <span class="tit">음식/숙박정보</span>
                  </a>
                </li>
              </ul>
            </div>

            <strong id="titCont" class="blind">본문 내용</strong><!-- 1108 id 추가 -->
            <!-- [D] 텍스트 미노출시 클래스 blind 추가 -->
            <div class="box_txtPhoto">
              <div class="txt_p">
                <style>
                  .pc_con {
                    width: 100%;
                    display: block;
                  }

                  .mo_contents {
                    display: none;
                  }

                  .pc_con img {
                    width: 100%;
                  }

                  .pc_top {
                    width: 100%;
                  }

                  .pc_middle {
                    width: 100%;
                    height: 436px;
                  }

                  .pc_bottom {
                    width: 100%;
                  }

                  .swipe_con {
                    width: 649px;
                    position: relative;
                    margin-left: 280px;
                    margin-top: -360px;
                  }

                  .con_detail img {
                    width: 241px;
                    cursor: pointer;
                  }

                  .swiper-slide {
                    width: 37%;
                  }

                  .con_detail img:last-child {
                    display: none;
                  }

                  .con_detail:hover img:first-child {
                    display: none;
                  }

                  .con_detail:hover img:last-child {
                    display: inline-block;
                    position: relative;
                    top: -10px;
                  }

                  .swiper-container-autoheight,
                  .swiper-container-autoheight .swiper-slide {
                    margin-top: 10px;
                  }

                  .swiper-button-next {
                    background-image: url("resources/home/assets/img/f_sub/f_sub08_icon01.jpg");
                  }

                  .swiper-button-prev {
                    background-image: url("resources/home/assets/img/f_sub/f_sub08_icon02.jpg");
                  }

                  .swiper-button-next,
                  .swiper-button-prev {
                    width: 25px;
                    height: 25px;
                    margin-top: 10px;
                    z-index: 10;
                    cursor: pointer;
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                  }

                  .swipe_box {
                    position: relative;
                    float: right;
                    width: 75px;
                    height: 70px;
                    margin-top: -30px;
                  }

                  .pc_btn_style {
                    /*border: 2px solid red;*/
                    position: absolute;
                  }

                  .spot1 {
                    width: 290px;
                    height: 230px;
                    top: 1245px;
                    left: 10px;
                  }

                  /*둔율 올갱이(11) */
                  .spot2 {
                    width: 290px;
                    height: 230px;
                    top: 1245px;
                    left: 325px;
                  }

                  /*호롱불마을(12) */
                  .spot3 {
                    width: 290px;
                    height: 230px;
                    top: 1245px;
                    left: 640px;
                  }

                  /*상정 비봉내마을(13) */
                  .spot4 {
                    width: 290px;
                    height: 230px;
                    top: 1500px;
                    left: 10px;
                  }

                  /*은아목장(14) */
                  .spot5 {
                    width: 290px;
                    height: 230px;
                    top: 1500px;
                    left: 325px;
                  }

                  /*문항어촌체험마을(15) */
                  .spot6 {
                    width: 290px;
                    height: 230px;
                    top: 1500px;
                    left: 640px;
                  }

                  /*미르낙농체험장(16) */
                  .spot7 {
                    width: 530px;
                    height: 215px;
                    top: 2025px;
                    right: 10px;
                  }

                  /*느티울 여행학교(18) */
                  .spot8 {
                    width: 165px;
                    height: 330px;
                    top: 2255px;
                    left: 400px;
                  }

                  /*갯골 생태공원(19) */
                  .spot9 {
                    width: 170px;
                    height: 330px;
                    top: 2255px;
                    left: 580px;
                  }

                  /*녹색 도시체험센터(20) */
                  .spot10 {
                    width: 170px;
                    height: 330px;
                    top: 2255px;
                    left: 765px;
                  }

                  /*국립생태원(2!) */
                  .spot11 {
                    width: 370px;
                    height: 560px;
                    top: 2025px;
                    left: 10px;
                  }

                  /*지리산생태과학관(17) */
                  .spot12 {
                    width: 260px;
                    height: 300px;
                    top: 2980px;
                    left: 40px;
                  }

                  /* 에코빌리지(23) */
                  .spot13 {
                    width: 260px;
                    height: 300px;
                    top: 2980px;
                    left: 340px;
                  }

                  /* 오대호아트팩토리(22) */
                  .spot14 {
                    width: 260px;
                    height: 300px;
                    top: 2980px;
                    left: 640px;
                  }

                  /* 제로웨이스트 카페5(24) */
                </style>
                <div class="pc_con">
                  <div class="pc_top">
                    <img src="resources/home/assets/img/f_sub/f_sub08_bg01.jpg">
                  </div>
                  <div class="pc_middle">
                    <img src="resources/home/assets/img/f_sub/f_sub08_bg02.jpg">
                    <div class="swipe_con">
                      <div class="swiper-container swiper-container-horizontal swiper-container-initialized swiper-container-autoheight">
                        <ul class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); height: 261px;">
                          <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
                            <a href="javascript:goLink(1);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_01.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_01_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide swiper-slide-next" style="margin-right: 10px;">
                            <a href="javascript:goLink(2);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_02.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_02_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(3);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_03.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_03_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(4);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_04.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_04_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(5);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_05.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_05_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(6);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_06.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_06_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(7);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_07.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_07_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(8);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_08.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_08_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(9);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_09.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_09_01.jpg">
                              </div>
                            </a>
                          </li>
                          <li class="swiper-slide" style="margin-right: 10px;">
                            <a href="javascript:goLink(10);">
                              <div class="con_detail">
                                <img src="resources/home/assets/img/f_sub/f_sub08_10.jpg">
                                <img src="resources/home/assets/img/f_sub/f_sub08_10_01.jpg">
                              </div>
                            </a>
                          </li>
                        </ul>
                        <div class="swipe_box">
                          <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                          <div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></div>
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                      </div>
                    </div>
                  </div>
                  <div class="pc_bottom">
                    <img src="resources/home/assets/img/f_sub/f_sub08_bg03.jpg">
                  </div>
                  <button class="pc_btn_style spot1" onclick="goLink(11);"></button> <button class="pc_btn_style spot2" onclick="goLink(12);"></button>
                  <button class="pc_btn_style spot3" onclick="goLink(13);"></button> <button class="pc_btn_style spot4" onclick="goLink(14);"></button> <button class="pc_btn_style spot5" onclick="goLink(15);"></button> <button class="pc_btn_style spot6" onclick="goLink(16);"></button>
                  <button class="pc_btn_style spot7" onclick="goLink(18);"></button> <button class="pc_btn_style spot8" onclick="goLink(19);"></button> <button class="pc_btn_style spot9" onclick="goLink(20);"></button> <button class="pc_btn_style spot10" onclick="goLink(21);"></button>
                  <button class="pc_btn_style spot11" onclick="goLink(17);"></button> <button class="pc_btn_style spot12" onclick="goLink(23);"></button> <button class="pc_btn_style spot13" onclick="goLink(22);"></button>
                  <button class="pc_btn_style spot14" onclick="goLink(24);"></button>
                </div>
                <!--PC_con 끝 -->
              </div>
            </div>
          </div>
          <!-- //내용 -->
        </div>
      </div>
    </div>
  </section>

  <footer id="footer">
    <div id="footer_sns">
      <div class="container">
        <div class="footer_sns">
          <ul>
            <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
            <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
            <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
          </ul>
          <div class="tel">
            <a href="#">대표전화 <em>02-837-9922</em></a>
          </div>
        </div>
      </div>
    </div>
    <div id="footer_infor">
      <div class="container">
        <div class="row">
          <div class="footer_infor">
            <h2>
              <img src="resources/home/assets/img/logo_footer.png" alt="megabox">
            </h2>
            <ul>
              <li><a href="#">회사소개</a></li>
              <li><a href="#">채용정보</a></li>
              <li><a href="#">제휴/광고/부대사업 문의</a></li>
              <li><a href="#">이용약관</a></li>
              <li><a href="#">개인정보처리방침</a></li>
              <li><a href="#">고객센터</a></li>
              <li><a href="#">윤리경영</a></li>
            </ul>
            <address>
              <p>
                서울시 구로구 시흥대로 163길 33 주호타워 2층 구트 아카데미 학원(구로동 1129-1) <br> <span class="bar2">대표이사 : 이시형</span> 개인정보책임자: 송도권부원장<br> <span class="bar2">사업자번호 : 203-87-00672 </span> 통신판매업신고번호 : 제 2016-서울구로-1560호
              </p>
              <p>Copyright © 주식회사구트. ALL RIGHTS RESERVED</p>
            </address>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- 자바스크립트 라이브러리 -->
  <script src="resources/home/assets/js/jquery.min_1.12.4.js"></script>
  <script src="resources/home/assets/js/modernizr-custom.js"></script>
  <script src="resources/home/assets/js/ie-checker.js"></script>
  <script src="resources/home/assets/js/iframe_api.js"></script>
  <script src="resources/home/assets/js/f_sub08/swiper.min.js"></script>
  <script src="resources/home/assets/js/f_sub08/swiper.thumbnails.js" type="text/javascript"></script>

</body>

</html>
