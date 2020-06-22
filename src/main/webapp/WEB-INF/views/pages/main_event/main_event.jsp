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
  <link rel="stylesheet" href="resources/home/assets/css/main_event.css">

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
      <div class="row" style="background-color: fff;">
        <h2 class="ir_so">Event</h2>
        <div id="contents" style="margin-top: 80px;">
          <div class="tit_cont tit_ev">
            <!-- 0703 클래스 ico 태그 추가 -->
            <div class="tit_pos">
              <h2><span class="ico">Fun</span>이벤트</h2>
            </div>
            <div id="area">
              <div class="wrap_contView">
                <div class="evmainBanner">
                  <img src="resources/home/assets/img/main_event/main_event01.png" alt="세상 모든 여행 이벤트 어디까지 해봤니?">
                </div>
              </div>
              <div id="area0">
                <div class="wrap_contView">
                  <div class="box_evPhoto two">
                    <div class="left">
                      <a href="main_event_01">
                        <img src="resources/home/assets/img/main_event/main_event02.png" alt="가상현실 국내여행 영상 공모전">
                      </a>
                    </div>
                    <div class="right">
                      <a href="#">
                        <img src="resources/home/assets/img/main_event/main_event03.png" alt="제2회 유니버셜 디자인 공모전">
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="area1">
              <div class="wrap_contView">
                <div class="box_evPhoto two">
                  <div class="left">
                    <a href="#">
                      <img src="resources/home/assets/img/main_event/main_event04.png" alt="2020 상주사랑 영상공모전">
                    </a>
                  </div>
                  <div class="right">
                    <a href="#">
                      <img src="resources/home/assets/img/main_event/main_event05.png" alt="2020 청춘여행공모전 트래블리그">
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div id="area2">
              <div class="wrap_contView">
                <div class="box_evPhoto two">
                  <div class="left">
                    <a href="#">
                      <img src="resources/home/assets/img/main_event/main_event06.png" alt="대구~ 금주의 QUIZ, 퀴즈로 알아보는 대구!">
                    </a>
                  </div>
                  <div class="right">
                    <a href="#">
                      <img src="resources/home/assets/img/main_event/main_event07.png" alt="슬기로운 공강여행 이벤트">
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div id="area3">
              <div class="wrap_contView">
                <div class="box_evPhoto two">
                  <div class="left">
                    <a href="#">
                      <img src="resources/home/assets/img/main_event/main_event08.png" alt="제1회 양양관광 전국사진 공모전. 2020년 11월 2일에서 2020년 11월 30일까지 양양 관광의 다양하고 아름다운 사진을 공모합니다. 출품 접수일 확인 필수!">
                    </a>
                  </div>
                  <div class="right">
                    <a href="#">
                      <img src="resources/home/assets/img/main_event/main_event09.png" alt="YES24와 함께 하는 방구석 여행안내 키트 증정 이벤트. 국내여행 도서 1권 이상 구매시 4종의 여행정보가 랜덤으로 들어있는 방구석 여행안내 키트를 드립니다. 이벤트는 2020년 4월 23일부터 경품 소진시까지 진행됩니다.">
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div id="area4">
              <div class="wrap_contView">
                <div class="eventMlist">
                  <ul>
                    <li>
                      <a href="#">
                        <img src="resources/home/assets/img/main_event/main_event10.png"
                          alt="2020 국제 슬로시티 전주 사진 공모전. 국제 슬로시티 전주의 매력을 담아낸 다채로운 문화·역사 명소들의 사진을 공모 받습니다. 전주 관광 활성화에 기여할 수 있는 이번 사진 공모전은 2020년 2월 5일부터 2020년 11월 30일까지 진행됩니다.">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="resources/home/assets/img/main_event/main_event11.png" alt="HI STORY 경북과 함께 하는 초성퀴즈 이벤트">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="resources/home/assets/img/main_event/main_event12.png"
                          alt="제2회 해운대 관광사진 공모전. 해운대만의 아름답고 멋진 관광지, 축제, 야경 등 새로운 매력을 조망할 수 있는 다양한 사진을 공모합니다. 이벤트 기간은 2020년 3월 2일부터 2020년 10월 30일까지입니다.">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="resources/home/assets/img/main_event/main_event13.png" alt="부산 금정구의 계절별 관광명소, 자연환경, 축제, 생활상 등 관광과 관련된 사진 공모전을 개최합니다. 접수기간은 2020년 10월 1일부터 2020년 10월 31일까지입니다.">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="resources/home/assets/img/main_event/main_event14.png" alt="[알쏭달쏭 퀴즈] 버스 타고 부산 온 동네 한 바퀴 이벤트">
                      </a>
                    </li>
                  </ul>
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
