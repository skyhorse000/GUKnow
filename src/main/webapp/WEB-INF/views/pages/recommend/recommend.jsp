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
  <link rel="stylesheet" href="resources/home/assets/css/recommend.css">

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
        <h2 class="ir_so">Recommend</h2>
        <div id="contents">

          <div class="tit_cont tit_rem">
            <div class="tit_pos">
              <h2><span class="ico">Now</span>추천</h2>
            </div>
          </div>

          <div id="area0">
            <div class="wrap_contView">
              <h3 class="tit_atc">어떤 여행을 원하시나요?</h3> <span class="date" id="remmain0">취향이 담긴 '구석구석 Only' 여행 List 5</span>
              <div class="box_remPhoto photo3" id="remmainList0">
                <div class="img1">
                  <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_01.png) no-repeat 50% 50%/cover">
                  </div>
                  <a href="recommend_01"
                    class="area_dimTxt" title="#요즘 뜨는 바로 거기! 힙스터의 핫플탐방로 이동">
                    <div>
                      <span class="tag"> </span>
                      <strong class="tit_photo1">#요즘 뜨는 바로 거기! 힙스터의 핫플탐방</strong>
                    </div>
                  </a>
                </div>
                <div class="img_4col clfix">
                  <div class="img2">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_02.png) no-repeat 50% 50%/cover">
                    </div>
                    <a href="recommend_02"
                      class="area_dimTxt" title="#신나는 액티비티 Go!로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2">#신나는 액티비티 Go!</strong>
                      </div>
                    </a>
                  </div>
                  <div class="img3">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_03.png) no-repeat 50% 50%/cover">
                    </div>
                    <a href="recommend_03"
                      class="area_dimTxt" title="#혼행족의성지로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2">#혼행족의성지</strong>
                      </div>
                    </a>
                  </div>
                  <div class="img4">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_04.png) no-repeat 50% 50%/cover">
                    </div>
                    <a href="recommend_04"
                      class="area_dimTxt" title="#가족여행 안내서로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2">#가족여행 안내서</strong>
                      </div>
                    </a>
                  </div>
                  <div class="img5">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_05.png) no-repeat 50% 50%/cover">
                    </div>
                    <a href="recommend_05"
                      class="area_dimTxt" title="#구석구석미식회 로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2">#구석구석미식회 </strong>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- 배너 -->
          <div class="wrap_contView section_line" id="wBanner" style="">
            <!-- pc banner -->
            <ul class="banner_2col bn_m_none clfix">
              <li>
                <a href="f_sub06">
                  <img src="resources/home/assets/img/recommend/recommend_06.png" alt="집콕 힐링 프로젝트! 슬기로운 드라이브 여행">
                </a>
              </li>
              <li>
                <a href="recommend_07">
                  <img src="resources/home/assets/img/recommend/recommend_07.png" alt="리틀홈 pick 체험이 있는 나들이">
                </a>
              </li>
            </ul>

            <div class="bn_m_block clfix" id="mBanner1">
              <a href="recommend_06">
                <img src="resources/home/assets/img/recommend/recommend_06.png" alt="집콕 힐링 프로젝트! 슬기로운 드라이브 여행" target="_blank" title="새창">
              </a>
            </div>
          </div>
          <!-- //배너 -->

          <div id="area1">
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">인기 여행기사 Top3</h3>
              <span class="date" id="remmain1">대한민국 구석구석에서 한 주간 가장 사랑받은 기사!</span>
              <div class="box_remPhoto clfix photo1" id="remmainList1">
                <div class="img1">
                  <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_08.png) no-repeat 50% 50%/cover">
                  </div>
                  <a href="recommend_08" class="area_dimTxt" title="Top 1. 쉿, 비밀이야! 나만 알고 싶은 한적한 여행지로 이동">
                    <div>
                      <span class="tag"> </span>
                      <strong class="tit_photo1">Top 1. 쉿, 비밀이야! 나만 알고 싶은 한적한 여행지</strong>
                    </div>
                  </a>
                </div>
                <div class="img_2row">
                  <div class="img2">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_09.png) no-repeat 50% 50%/cover">
                    </div>
                    <a href="recommend_09" class="area_dimTxt" title="Top 2. 캠린이를 위한 차박 입문서로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2">Top 2. 캠린이를 위한 차박 입문서</strong>
                      </div>
                    </a>
                  </div>
                  <div class="img3">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_10.png) no-repeat 50% 50%/cover">
                    </div>
                    <a href="recommend_10" class="area_dimTxt" title="Top 3. 라이딩하기 딱 좋은<br>전국 자전거 여행 코스로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2">Top 3. 라이딩하기 딱 좋은<br>전국 자전거 여행 코스</strong>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- 배너 -->
          <div class="wrap_contView section_line line_pc_none">
            <!-- 1025 클래스 section_line, line_pc_none 추가 -->
            <div class="bn_m_block clfix" id="mBanner2">
              <a href="recommend_07">
                <img src="resources/home/assets/img/recommend/recommend_07.png" alt="리틀홈 pick 체험이 있는 나들이" target="_blank" title="새창">
              </a>
            </div>
          </div>
          <!-- //배너 -->

          <div id="area2">
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">6월 추천 가볼 만한 곳! </h3>
              <span class="date" id="remmain2">새로운 옷으로 갈아입고 여행자를 맞이하는 #폐교의_재탄생&amp;추억의_학교_여행</span>
              <div class="box_remPhoto clfix photo1" id="remmainList2">
                <div class="img1">
                  <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_11.png) no-repeat 50% 50%/cover">
                  </div>
                  <a href="recommend_11" class="area_dimTxt" title="로 이동">
                    <div>
                      <span class="tag"> </span>
                      <strong class="tit_photo1"></strong>
                    </div>
                  </a>
                </div>
                <div class="img_2row">
                  <div class="img2">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_12.png) no-repeat 50% 50%/cover"></div><a href="recommend_12" class="area_dimTxt" title="로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2"></strong>
                      </div>
                    </a>
                  </div>
                  <div class="img3">
                    <div class="bg_img" style="background:url(resources/home/assets/img/recommend/recommend_13.png) no-repeat 50% 50%/cover"></div><a href="recommend_13" class="area_dimTxt" title="로 이동">
                      <div>
                        <span class="tag"> </span>
                        <strong class="tit_photo2"></strong>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
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

  <script type="text/javascript">
    //배너 이미지 슬라이드
    var swiper = new Swiper('.swiper-container', {
      pagination: {
        el: '.swiper-pagination',
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      autoplay: {
        delay: 3000,
      },
    });

  </script>

</body>

</html>
