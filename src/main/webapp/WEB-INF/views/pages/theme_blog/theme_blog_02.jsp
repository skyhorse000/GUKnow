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
  <link rel="stylesheet" href="resources/home/assets/css/reset_blog.css">
  <link rel="stylesheet" href="resources/home/assets/css/style.css">
  <link rel="stylesheet" href="resources/home/assets/css/blog.css">

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

<body>
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
      <div class="row" style="width: 980px; margin: 0 auto; padding: 0 20px 27px 20px;">
        <h2 class="ir_so">theme_blog</h2>
        <div id="contents">
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">439</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">716</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">120,028</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>2020년 휴가철 찾아가고 싶은 33섬</h2>
            <div class="area_address">
              <span class="address">전국 </span>
              <span id="modi_date">수정일 : 2020.06.02</span>
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
                <li><a href="#titCont"><img src="resources/home/assets/img/ico_detail_nav01.png" class="ico" alt=""><span class="tit">본문내용</span></a></li>
                <li><a href="#titTrableInfo"><img src="resources/home/assets/img/ico_detail_nav02.png" class="ico" alt=""><span class="tit">여행정보</span></a></li>
                <li style="display:none;" id="vtitMoveInfo"><a href="#titMoveInfo"><img src="resources/home/assets/img/ico_detail_nav03.png" class="ico" alt=""><span class="tit">이동정보</span></a></li>
                <li style="display:none;" id="vtitFoodAcc"><a href="#titFoodAcc"><img src="resources/home/assets/img/ico_detail_nav04.png" class="ico" alt=""><span class="tit">음식/숙박정보</span></a></li>
              </ul>
            </div>

            <!-- // 0808 추가 -->
            <strong id="titCont" class="blind">본문 내용</strong><!-- 1108 id 추가 -->
            <!-- [D] 텍스트 미노출시 클래스 blind 추가 -->
            <div class="box_txtPhoto">
              <div class="txt_p">
                <style>
                  .pc_ver {
                    display: block;
                  }

                  .mo_ver {
                    display: none;
                  }

                  .btn_area {
                    position: absolute;
                    width: 123px;
                    height: 32px;
                  }

                  .spot1 {
                    top: 52px;
                    left: 179px;
                  }

                  .spot2 {
                    top: 133px;
                    left: 209px;
                  }

                  .spot3 {
                    top: 221px;
                    left: 235px;
                  }

                  .spot4 {
                    top: 295px;
                    left: 175px;
                  }

                  .spot5 {
                    top: 353px;
                    left: 160px;
                  }

                  .spot6 {
                    top: 413px;
                    left: 160px;
                  }

                  .spot7 {
                    top: 493px;
                    left: 153px;
                  }

                  .spot8 {
                    top: 632px;
                    left: 147px;
                  }

                  .spot9 {
                    top: 687px;
                    left: 140px;
                  }

                  .spot10 {
                    top: 747px;
                    left: 88px;
                    width: 168px;
                  }

                  .spot11 {
                    top: 799px;
                    left: 112px;
                  }

                  .spot12 {
                    top: 857px;
                    left: 117px;
                  }

                  .spot13 {
                    top: 922px;
                    left: 169px;
                  }

                  .spot14 {
                    top: 711px;
                    left: 269px;
                  }

                  .spot15 {
                    top: 787px;
                    left: 269px;
                  }

                  .spot16 {
                    top: 839px;
                    left: 300px;
                  }

                  .spot17 {
                    top: 731px;
                    left: 393px;
                  }

                  .spot18 {
                    top: 781px;
                    left: 404px;
                  }

                  .spot19 {
                    top: 858px;
                    left: 441px;
                  }

                  .spot20 {
                    top: 924px;
                    left: 391px;
                  }

                  .spot21 {
                    top: 670px;
                    left: 478px;
                  }

                  .spot22 {
                    top: 752px;
                    left: 518px;
                  }

                  .spot23 {
                    top: 814px;
                    left: 528px;
                  }

                  .spot24 {
                    top: 611px;
                    left: 588px;
                    width: 173px;
                  }

                  .spot25 {
                    top: 669px;
                    left: 611px;
                  }

                  .spot26 {
                    top: 801px;
                    left: 661px;
                  }

                  .spot27 {
                    top: 864px;
                    left: 623px;
                  }

                  .spot28 {
                    top: 581px;
                    left: 760px;
                    width: 171px;
                  }

                  .spot29 {
                    top: 661px;
                    left: 795px;
                    width: 135px;
                  }

                  .spot30 {
                    top: 717px;
                    left: 807px;
                  }

                  .spot31 {
                    top: 773px;
                    left: 779px;
                    width: 151px;
                  }

                  .spot32 {
                    top: 889px;
                    left: 807px;
                  }

                  .spot33 {
                    top: 229px;
                    left: 812px;
                  }

                  .btn_area_2 {
                    position: absolute;
                    width: 220px;
                    height: 114px;
                  }

                  .bottom_spot1 {
                    top: 1540px;
                    left: 11px;
                  }

                  .bottom_spot2 {
                    top: 1810px;
                    left: 11px;
                  }

                  .bottom_spot3 {
                    top: 1933px;
                    left: 11px;
                  }

                  .bottom_spot4 {
                    top: 2053px;
                    left: 11px;
                  }

                  .bottom_spot5 {
                    top: 2173px;
                    left: 11px;
                  }

                  .bottom_spot6 {
                    top: 2442px;
                    left: 11px;
                  }

                  .bottom_spot7 {
                    top: 2564px;
                    left: 11px;
                  }

                  .bottom_spot8 {
                    top: 2684px;
                    left: 11px;
                    height: 133px;
                  }

                  .bottom_spot9 {
                    top: 1540px;
                    left: 241px;
                  }

                  .bottom_spot10 {
                    top: 1664px;
                    left: 241px;
                  }

                  .bottom_spot11 {
                    top: 1786px;
                    left: 241px;
                    height: 130px;
                  }

                  .bottom_spot12 {
                    top: 2074px;
                    left: 241px;
                  }

                  .bottom_spot13 {
                    top: 2196px;
                    left: 241px;
                  }

                  .bottom_spot14 {
                    top: 2316px;
                    left: 241px;
                  }

                  .bottom_spot15 {
                    top: 2436px;
                    left: 241px;
                  }

                  .bottom_spot16 {
                    top: 2716px;
                    left: 241px;
                  }

                  .bottom_spot17 {
                    top: 2836px;
                    left: 241px;
                  }

                  .bottom_spot18 {
                    top: 1539px;
                    left: 478px;
                  }

                  .bottom_spot19 {
                    top: 1659px;
                    left: 478px;
                    height: 138px;
                  }

                  .bottom_spot20 {
                    top: 1954px;
                    left: 478px;
                  }

                  .bottom_spot21 {
                    top: 2194px;
                    left: 478px;
                  }

                  .bottom_spot22 {
                    top: 2314px;
                    left: 478px;
                  }

                  .bottom_spot23 {
                    top: 2434px;
                    left: 478px;
                  }

                  .bottom_spot24 {
                    top: 2554px;
                    left: 478px;
                  }

                  .bottom_spot25 {
                    top: 2674px;
                    left: 478px;
                  }

                  .bottom_spot26 {
                    top: 2795px;
                    left: 478px;
                    height: 137px;
                  }

                  .bottom_spot27 {
                    top: 1540px;
                    left: 711px;
                  }

                  .bottom_spot28 {
                    top: 1810px;
                    left: 711px;
                  }

                  .bottom_spot29 {
                    top: 1930px;
                    left: 711px;
                  }

                  .bottom_spot30 {
                    top: 2200px;
                    left: 711px;
                  }

                  .bottom_spot31 {
                    top: 2322px;
                    left: 711px;
                  }

                  .bottom_spot32 {
                    top: 2592px;
                    left: 711px;
                  }

                  .bottom_spot33 {
                    top: 2710px;
                    left: 711px;
                  }
                </style>
                <div class="pc_ver">
                  <img src="resources/home/assets/img/theme_blog/theme_blog02/theme_blog02_02.jpg">
                  <button class="btn_area spot14 " onclick="goLink(1);" type="button"></button>
                  <button class="btn_area spot18 " onclick="goLink(2);" type="button"></button>
                  <button class="btn_area spot20 " onclick="goLink(3);" type="button"></button>
                  <button class="btn_area spot10 " onclick="goLink(4);" type="button"></button>
                  <button class="btn_area spot28 " onclick="goLink(5);" type="button"></button>
                  <button class="btn_area spot21 " onclick="goLink(6);" type="button"></button>
                  <button class="btn_area spot31 " onclick="goLink(7);" type="button"></button>
                  <button class="btn_area spot32 " onclick="goLink(8);" type="button"></button>
                  <button class="btn_area spot2 " onclick="goLink(9);" type="button"></button>
                  <button class="btn_area spot6 " onclick="goLink(10);" type="button"></button>
                  <button class="btn_area spot7 " onclick="goLink(11);" type="button"></button>
                  <button class="btn_area spot23 " onclick="goLink(12);" type="button"></button>
                  <button class="btn_area spot16 " onclick="goLink(13);" type="button"></button>
                  <button class="btn_area spot12 " onclick="goLink(14);" type="button"></button>
                  <button class="btn_area spot25 " onclick="goLink(15);" type="button"></button>
                  <button class="btn_area spot24 " onclick="goLink(16);" type="button"></button>
                  <button class="btn_area spot13 " onclick="goLink(17);" type="button"></button>
                  <button class="btn_area spot5 " onclick="goLink(18);" type="button"></button>
                  <button class="btn_area spot26 " onclick="goLink(19);" type="button"></button>
                  <button class="btn_area spot30 " onclick="goLink(20);" type="button"></button>
                  <button class="btn_area spot3 " onclick="goLink(21);" type="button"></button>
                  <button class="btn_area spot4 " onclick="goLink(22);" type="button"></button>
                  <button class="btn_area spot22 " onclick="goLink(23);" type="button"></button>
                  <button class="btn_area spot19 " onclick="goLink(24);" type="button"></button>
                  <button class="btn_area spot11 " onclick="goLink(25);" type="button"></button>
                  <button class="btn_area spot33 " onclick="goLink(26);" type="button"></button>
                  <button class="btn_area spot1 " onclick="goLink(27);" type="button"></button>
                  <button class="btn_area spot17 " onclick="goLink(28);" type="button"></button>
                  <button class="btn_area spot15 " onclick="goLink(29);" type="button"></button>
                  <button class="btn_area spot8 " onclick="goLink(30);" type="button"></button>
                  <button class="btn_area spot9 " onclick="goLink(31);" type="button"></button>
                  <button class="btn_area spot29 " onclick="goLink(32);" type="button"></button>
                  <button class="btn_area spot27 " onclick="goLink(33);" type="button"></button>
                  <button class="btn_area_2 bottom_spot1" onclick="goLink(1);" type="button"></button>
                  <button class="btn_area_2 bottom_spot2" onclick="goLink(2);" type="button"></button>
                  <button class="btn_area_2 bottom_spot3" onclick="goLink(3);" type="button"></button>
                  <button class="btn_area_2 bottom_spot4" onclick="goLink(4);" type="button"></button>
                  <button class="btn_area_2 bottom_spot5" onclick="goLink(5);" type="button"></button>
                  <button class="btn_area_2 bottom_spot6" onclick="goLink(6);" type="button"></button>
                  <button class="btn_area_2 bottom_spot7" onclick="goLink(7);" type="button"></button>
                  <button class="btn_area_2 bottom_spot8" onclick="goLink(8);" type="button"></button>
                  <button class="btn_area_2 bottom_spot9" onclick="goLink(9);" type="button"></button>
                  <button class="btn_area_2 bottom_spot10" onclick="goLink(10);" type="button"></button>
                  <button class="btn_area_2 bottom_spot11" onclick="goLink(11);" type="button"></button>
                  <button class="btn_area_2 bottom_spot12" onclick="goLink(12);" type="button"></button>
                  <button class="btn_area_2 bottom_spot13" onclick="goLink(13);" type="button"></button>
                  <button class="btn_area_2 bottom_spot14" onclick="goLink(14);" type="button"></button>
                  <button class="btn_area_2 bottom_spot15" onclick="goLink(15);" type="button"></button>
                  <button class="btn_area_2 bottom_spot16" onclick="goLink(16);" type="button"></button>
                  <button class="btn_area_2 bottom_spot17" onclick="goLink(17);" type="button"></button>
                  <button class="btn_area_2 bottom_spot18" onclick="goLink(18);" type="button"></button>
                  <button class="btn_area_2 bottom_spot19" onclick="goLink(19);" type="button"></button>
                  <button class="btn_area_2 bottom_spot20" onclick="goLink(20);" type="button"></button>
                  <button class="btn_area_2 bottom_spot21" onclick="goLink(21);" type="button"></button>
                  <button class="btn_area_2 bottom_spot22" onclick="goLink(22);" type="button"></button>
                  <button class="btn_area_2 bottom_spot23" onclick="goLink(23);" type="button"></button>
                  <button class="btn_area_2 bottom_spot24" onclick="goLink(24);" type="button"></button>
                  <button class="btn_area_2 bottom_spot25" onclick="goLink(25);" type="button"></button>
                  <button class="btn_area_2 bottom_spot26" onclick="goLink(26);" type="button"></button>
                  <button class="btn_area_2 bottom_spot27" onclick="goLink(27);" type="button"></button>
                  <button class="btn_area_2 bottom_spot28" onclick="goLink(28);" type="button"></button>
                  <button class="btn_area_2 bottom_spot29" onclick="goLink(29);" type="button"></button>
                  <button class="btn_area_2 bottom_spot30" onclick="goLink(30);" type="button"></button>
                  <button class="btn_area_2 bottom_spot31" onclick="goLink(31);" type="button"></button>
                  <button class="btn_area_2 bottom_spot32" onclick="goLink(32);" type="button"></button>
                  <button class="btn_area_2 bottom_spot33" onclick="goLink(33);" type="button"></button>
                </div>
                
                <style>
                  @media screen and (max-width: 1023px) {
                    .pc_ver {
                      display: none;
                    }

                    .mo_ver {
                      display: block;
                    }

                    .swiper-wrapper {
                      margin-bottom: 10%;
                    }

                    .swiper-pagination-bullet-active {
                      background: #000;
                    }

                    .swiper-slide img {
                      width: 100%;
                    }

                    .swiper-slide {
                      text-align: center;
                    }

                    .swiper-button-next,
                    .swiper-button-prev {
                      top: 400px;
                    }

                    .moWrap {
                      width: 100%;
                    }

                    .sum {
                      width: 100%;
                      min-height: 430px;
                      max-width: 600px;
                      text-align: left;
                    }

                    .sum_bg {
                      width: 100%;
                      background-color: #000;
                      opacity: 0.3;
                      min-height: 430px;
                      position: absolute;
                    }

                    .sum_name {
                      width: 80%;
                      position: absolute;
                      z-index: 1;
                    }

                    .sum_title {
                      width: 100%;
                      color: #FFEB3B;
                      font-size: 29pt;
                      margin-top: 30px;
                      margin-left: 20px;
                      font-weight: 700;
                      border-bottom: 1px solid;
                    }

                    .sum_area {
                      width: 100%;
                      margin-left: 20px;
                      color: #fff;
                    }

                    .swiper-button-next {
                      background-image: url('resources/home/assets/img/theme_blog/theme_blog01/theme_blog02_icon01.png');
                      background-size: auto !important;
                      width: 15px;
                      height: 28px;
                      right: 10px;
                      left: auto;
                    }

                    .swiper-button-prev {
                      background-image: url('resources/home/assets/img/theme_blog/theme_blog01/theme_blog02_icon02.png');
                      background-size: auto !important;
                      width: 15px;
                      height: 28px;
                      left: 10px;
                      right: auto;
                    }

                    .swiper-button-next.swiper-button-disabled,
                    .swiper-button-prev.swiper-button-disabled {
                      opacity: 0;
                      cursor: auto;
                      pointer-events: none;
                    }

                    .more_btn {
                      position: absolute;
                      right: 15px;
                      background: url('resources/home/assets/img/theme_blog/theme_blog01/theme_blog02_icon03.png') no-repeat;
                      z-index: 5;
                      height: 24px;
                      width: 37px;
                      margin-top: 60px;
                    }

                    .sum_cu {
                      width: 100%;
                    }

                    .sum_cu_bg {
                      background-color: #000;
                      opacity: 0.5;
                      min-height: 150px;
                      position: absolute;
                      z-index: 5;
                      width: 90%;
                      margin-top: 250px;
                      margin-left: 20px;
                      border-radius: 10px;
                    }

                    .sum_cu_txt {
                      width: 90%;
                      position: absolute;
                      z-index: 10;
                      padding: 3%;
                      font-weight: 100;
                      max-height: 150px;
                      overflow: overlay;
                      margin-top: 250px;
                      color: #fff;
                      margin-left: 20px;
                    }

                    #sum1 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum2 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum3 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum4 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum5 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum6 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum7 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum8 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum9 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum10 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum11 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum12 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum13 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum14 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum15 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum16 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum17 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum18 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum19 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum20 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum21 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum22 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum23 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum24 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum25 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum26 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum27 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum28 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum29 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum30 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum31 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum32 {
                      background: url('#') 50% 50% no-repeat;
                    }

                    #sum33 {
                      background: url('#') 50% 50% no-repeat;
                    }
                  }
                </style>

                <script>
                  function goLink(no) {
                    var i = no;
                    switch (i) {
                      case 1:
                        location.href = "#";
                        break;
                      case 2:
                        location.href = "#";
                        break;
                      case 3:
                        location.href = "#";
                        break;
                      case 4:
                        location.href = "#";
                        break;
                      case 5:
                        location.href = "#";
                        break;
                      case 6:
                        location.href = "#";
                        break;
                      case 7:
                        location.href = "#";
                        break;
                      case 8:
                        location.href = "#";
                        break;
                      case 9:
                        location.href = "#";
                        break;
                      case 10:
                        location.href = "#";
                        break;
                      case 11:
                        location.href = "#";
                        break;
                      case 12:
                        location.href = "#";
                        break;
                      case 13:
                        location.href = "#";
                        break;
                      case 14:
                        location.href = "#";
                        break;
                      case 15:
                        location.href = "#";
                        break;
                      case 16:
                        location.href = "#";
                        break;
                      case 17:
                        location.href = "#";
                        break;
                      case 18:
                        location.href = "#";
                        break;
                      case 19:
                        location.href = "#";
                        break;
                      case 20:
                        location.href = "#";
                        break;
                      case 21:
                        location.href = "#";
                        break;
                      case 22:
                        location.href = "#";
                        break;
                      case 23:
                        location.href = "#";
                        break;
                      case 24:
                        location.href = "#";
                        break;
                      case 25:
                        location.href = "#";
                        break;
                      case 26:
                        location.href = "#";
                        break;
                      case 27:
                        location.href = "#";
                        break;
                      case 28:
                        location.href = "#";
                        break;
                      case 29:
                        location.href = "#";
                        break;
                      case 30:
                        location.href = "#";
                        break;
                      case 31:
                        location.href = "#";
                        break;
                      case 32:
                        location.href = "#";
                        break;
                      case 33:
                        location.href = "#";
                        break;
                      default:
                        location.href = "#";
                        break
                    }
                  }
                </script>
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
  <script src="resources/home/assets/js/swiper.min.js"></script>
  <script src="resources/home/assets/js/iframe_api.js"></script>
  <script src="resources/home/assets/js/movie.js"></script>

</body>

</html>
