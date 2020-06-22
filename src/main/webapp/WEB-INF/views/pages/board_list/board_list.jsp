<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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
  <link rel="stylesheet" href="resources/home/assets/css/swiper.css">

  <!-- 파비콘 -->
  <link rel="shortcut icon" href="resources/home/assets/icons/favicon.ico">
  <link rel="apple-touch-icon-precomposed" href="resources/home/assets/icons/favicon_72.png" />
  <link rel="apple-touch-icon-precomposed" sizes="96x96" href="resources/home/assets/icons/favicon_96.png" />
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/home/assets/icons/favicon_144.png" />
  <link rel="apple-touch-icon-precomposed" sizes="192x192" href="resources/home/assets/icons/favicon_192.png" />
  <!-- 웹 폰트 -->
  <!-- HTLM5shiv ie6~8 -->
  <!--[if lt IE 9]>
      <script src="resources/home/assets/js/html5shiv.min.js"></script>
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
            <a href="/project/home"> <em><img src="resources/home/assets/img/logo.png" alt="G.U.Know travel"></em> <strong><img src="resources/home/assets/img/logo-sub.png" alt="TRAVEL"></strong>
            </a>
          </h1>
          <nav class="nav">
            <c:choose>
              <c:when test="${sessionScope.username == null }">
                <!-- <ul class="clearfix">
                  <li><a href="login">로그인</a></li>
                  <li onclick="showSignup()"><a href="#">회원가입</a></li>
                </ul> -->
              </c:when>
              <c:otherwise>
                <ul class="clearfix">
                  <li><b>${sessionScope.username }</b></li>
                  <li><a href="logout">로그아웃</a></li>
                </ul>
              </c:otherwise>
            </c:choose>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <section id="banner">
    <div class="banner_menu">
      <h2 class="ir_so">배너 영역</h2>
      <div class="container">
        <div class="row">
          <div class="bm_left">
            <!-- <ul>
              <li class="total"><a href="#">전체메뉴</a></li>
              <li class="line"><a href="#">필름 소사이어티</a></li>
              <li><a href="#">클래식 소사이어티</a></li>
            </ul> -->
          </div>
          <div class="bm_right">
            <ul>
              <li class="line"><a href="#">여행지 날씨</a></li>
              <li class="line"><a href="#">이용가이드 & 지도</a></li>
              <li><a href="#">공지사항</a></li>
            </ul>
            <ul>
              <li class="white"><a href="#">일정 보기</a></li>
              <li class="purple"><a href="#">일정 만들기</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="slider">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide ss1">
            <div class="container">
              <div class="row">
                <h3>순천만 갯벌 습지보호지역</h3>
                <p>세계 5대 연안습지 가운데 하나인 ‘순천만’은 우리나라 최대의 갈대 군락지입니다.</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss2">
            <div class="container">
              <div class="row">
                <h3>수원화성 억새밭</h3>
                <p>1997년 유네스코 세계문화유산으로 등록된 수원화성 억새밭은 가을색의 아름다움을
                  뿜어냅니다.</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss3">
            <div class="container">
              <div class="row">
                <h3>전주한옥마을</h3>
                <p>한국의 전통문화가 가득 담긴 한옥마을</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss4">
            <div class="container">
              <div class="row">
                <h3>대구 풍등축제</h3>
                <p>2020년 대구 풍등축제에 여러분을 초대합니다.</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss5">
            <div class="container">
              <div class="row">
                <h3>경주 동궁과 월지</h3>
                <p>야호(夜好) 경주! 젊은 여행자들의 천년 고도</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss6">
            <div class="container">
              <div class="row">
                <h3>제주 돌하르방</h3>
                <p>돌하르방은 제주도 방언으로, 표준어로 해석하면 "돌 할아버지"가 됩니다.</p>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
      </div>
    </div>
  </section>
  <!-- //banner -->

  <!-- board_list -->
  <section id="log">
    <div class="container">
      <div class="row">
        <h2 class="ir_so">board_list</h2>
        <tiles:insertAttribute name="content" />
      </div>
    </div>
  </section>
  <!-- board_list -->

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
                서울시 구로구 시흥대로 163길 33 주호타워 2층 구트 아카데미 학원(구로동 1129-1) <br>
                <span class="bar2">대표이사 : 이시형</span> 개인정보책임자: 송도권부원장<br>
                <span class="bar2">사업자번호 : 203-87-00672 </span>
                통신판매업신고번호 : 제 2016-서울구로-1560호
              </p>
              <p>Copyright © 주식회사구트. ALL RIGHTS RESERVED</p>
            </address>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <aside role="complementary" id="blackout" class="overlay">
    <div id="trailerModal" class="modal">
      <div id="trailer"></div>
      <!-- YouTube 플레이어로 대체되는 부분 -->
    </div>
    <button id="hideTrailer" class="modal_close">닫기</button>
  </aside>
  <!-- 자바스크립트 라이브러리 -->
  <script src="resources/home/assets/js/jquery.min_1.12.4.js"></script>
  <script src="resources/home/assets/js/modernizr-custom.js"></script>
  <script src="resources/home/assets/js/ie-checker.js"></script>
  <script src="resources/home/assets/js/swiper.min.js"></script>
  <script src="resources/home/assets/js/login.js"></script>

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
<!-- //help -->
