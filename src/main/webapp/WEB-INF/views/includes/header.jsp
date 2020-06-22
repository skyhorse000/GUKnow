<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<meta charset="UTF-8">
<meta name="viewport"
  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="author" content="G.U.Know">
<meta name="description" content="plan now. travel later">
<meta name="keywords" content="travel, trip, tour">
<title>G.U.Know travel</title>

<%-- css 꼬임 --%>
<!-- Custom styles for this template -->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="../resources/home/assets/css/reset_board.css">
<link rel="stylesheet" href="../resources/home/assets/css/style_board.css">
<link rel="stylesheet" href="../resources/home/assets/css/swiper.css">

<!-- 파비콘 -->
<link rel="shortcut icon"
  href="../resources/home/assets/icons/favicon.ico">
<link rel="apple-touch-icon-precomposed"
  href="../resources/home/assets/icons/favicon_72.png" />
<link rel="apple-touch-icon-precomposed" sizes="96x96"
  href="../resources/home/assets/icons/favicon_96.png" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
  href="../resources/home/assets/icons/favicon_144.png" />
<link rel="apple-touch-icon-precomposed" sizes="192x192"
  href="../resources/home/assets/icons/favicon_192.png" />


<!-- 모바일 디바이스에서 터치/ 줌 등을 지원하기 위한 meta 태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap 최신 버전의 CSS 파일들을 링크 -->
<!-- <link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> -->
<!-- jQuery 최신 버전의 js 파일들을 링크 -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Propper 최신 버전 링크 -->
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Bootstrap을 이용하기 위한 최신 버전 링크 -->
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- 게시판 전용 스크립트 -->
<script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>

<!-- Custom fonts for this template -->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
  rel="stylesheet" type="text/css">
<link
  href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
  rel="stylesheet">
<!-- Custom styles for this page -->
<link
  href="../resources/vendor/datatables/dataTables.bootstrap4.min.css"
  rel="stylesheet">



 <style type="text/css">
#myModal {
  top: -30%;
  margin-top: -50px;
}
</style>

</head>

<body>
  <header id="header">
    <div class="container">
      <div class="row">
        <div class="header clearfix">
          <h1>
            <a href="/project/home"> <em><img
                src="../resources/home/assets/img/logo.png"
                alt="G.U.Know travel"></em> <strong><img
                src="../resources/home/assets/img/logo-sub.png"
                alt="TRAVEL"></strong>
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
          <div class="bm_left"></div>
          <div class="bm_right">
            <ul>
              <li class="line"><a href="#">여행지 날씨</a></li>
              <li class="line"><a href="#">이용가이드 & 지도</a></li>
              <li><a href="./list">공지사항</a></li>
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
