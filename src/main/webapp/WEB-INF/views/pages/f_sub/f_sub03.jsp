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
      <div class="row">
        <h2 class="ir_so">Favorite</h2>
        <div id="contents">

          <div class="tit_cont">
            <div class="area_tag">
              <span class="name6" onclick="#"><span class="ico">News 뉴스</span>소식</span><!-- 1224 텍스트 수정 -->
            </div>
            <h2>2020 KTO 시민참여단 시민위원 모집!</h2>
            <div class="area_titDate">
              <span>2020-05-25</span>
            </div>
          </div>

          <div class="wrap_contView clfix">

            <!-- 내용 -->
            <div class="view_board1">
              <div class="view_data">
                <style>
                  .btn_wrap2 {
                    text-align: center;
                  }

                  .btn_wrap2 .btn_event_new {
                    display: inline-block;
                    margin-bottom: 40px;
                    padding: 11px 28px;
                    background: #015e31;
                    font-weight: 800;
                    color: #fff;
                    font-size: 25px;
                </style>
                <p>
                  <img src="resources/home/assets/img/f_sub/f_sub03_01.jpg" style="width: 100%;">
                  <br>
                </p><br>
                <p>
                  - 모집기간 : 2020.05.25 ~ 06.14
                  <br>
                  - 선정자 발표 : 2020.06.19 (금)
                  <br>
                  ※ 시민위원으로 선정된 자에 한해 개별 통보 예정
                  <br>
                  - 모집인원 : 10명 내외
                  <br>
                  - 모집대상 : 공사 기능 및 역할, 사업 등에 대해 관심 있는 국민
                  <br>
                  - 신청방법 : 지원서 작성 후 이메일 제출 (수신처 : greenlife@knto.or.kr)
                  <br>
                  - 활동내용 : 한국관광공사 사회적가치 창출 및 혁신을 위한 아이디어 제안, 공사 사업 모니터링 및 성과평가,
                  <br>
                  - 한국관광 발전을 위한 제안 등
                  <br>
                  - 활동기간 : 구성일로부터 2021년 6월까지
                  <br>
                  - 활동방법 : 시민참여단 회의 및 공사 사업 참여
                  <br>
                  - 문의사항 : 한국관광공사 사회적가치팀 박선미 과장 (TEL : 033-738-3194)
                </p>
                <br>
                <br>
                <div class="btn_wrap2">
                  <a class="btn_event_new" href="javascript:" onclick="gofileDown('1a2c2efe-fd64-41d2-9349-6016dacc6cc5.hwp')">
                    한국관광공사 시민참여단 지원서 다운받기 &gt;&gt;
                  </a>
                  <p>
                  </p>
                </div>
              </div>
              <div class="btn_wrap" sytle="display:none;" style="display: none;">
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
