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
                  <li><a href="login/register" >회원가입</a></li>
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
            <h2>야간관광 100선 | 어두운 밤 즐길만한 명소 “바로 여기”</h2>
            <div class="area_titDate">
              <span>2020-04-08</span>
            </div>
          </div>

          <div class="wrap_contView clfix">

            <!-- 내용 -->
            <div class="view_board1">
              <div class="view_data">
                <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
                <style>
                  .image_grid {
                    display: grid;
                    grid-template-columns: 468px 468px;
                    grid-gap: 2px;
                    text-align: center;
                  }

                  @media screen and (max-width: 1023px) {
                    .image_grid {
                      grid-template-columns: repeat(2, 1fr);
                      grid-gap: 2px;
                    }
                  }
                </style>
                <p style="text-align: justify; ">
                  <span style="font-weight: bold; font-size: 20px;"> - 한국관광공사, ‘야간관광 100선’ 발표 - </span>
                </p>
                <p style="text-align: justify; ">
                  <span style="font-weight: bold; font-size: 20px;"> - “코로나19 진정 후 신규 중점사업으로 추진” - </span>
                </p>
                <p style="text-align: justify; "> <br> </p>
                <p style="text-align: center;">
                  <img src="resources/home/assets/img/f_sub/f_sub02_01.jpg" width="80%">
                </p>
                <p style="text-align: center;">
                  <span style="font-size: 30px;"> 동궁과 월지 </span>
                </p>
                <p style="text-align: justify; "> <br> </p>
                <p style="text-align: justify; "> 한국관광공사(사장 안영배)는 국내 곳곳의 유망한 야간관광자원과 프로그램을 모아 ‘야간관광 100선’을 발표했다.&nbsp; </p>
                <p style="text-align: justify; "> <br> </p>
                <p style="text-align: justify; "> 야간관광은 침체된 관광산업 회복을 위해 공사가 올해 추진 중인 신규 핵심 사업으로, 공사는 지난 2월 중순부터 ‘야간관광 100선’ 선정 작업에 착수, 전국의 지방자치단체 및 전문가 추천, SK텔레콤 T맵의 야간시간대 목적지 빅 데이터(281만 건)를 통해 약 370개 데이터베이스를 수집했다. 이를 토대로 전문가 선정위원회를 실시, 야간관광 매력도,
                  접근성, 치안‧안전, 지역 기여도를 종합적으로 판단해 최종 100선을 선정했다.&nbsp; </p>
                <p style="text-align: justify; "> <br> </p>
                <p style="text-align: justify; "> 야간관광 100선으로 최종 선정된 곳은 ▲서울특별시(덕수궁 돌담길, 반포한강공원 등), ▲부산광역시(달맞이언덕 문탠로드, 송도해상케이블카 등) ▲대구광역시(김광석 다시그리기길, 수성못 등) ▲인천광역시(강화문화재 야행, 송도센트럴파크 등) ▲광주광역시(국립아시아문화전당, 월봉서원) ▲대전광역시(대동하늘공원, 달빛 품은 계족산 낭만산책) ▲울산광역시(시티투어
                  생태탐방, 대왕암공원 등) ▲세종특별자치도(세종호수공원) ▲경기도(화성행궁 야간개장, 행주산성 등) ▲강원도(별마로천문대, 안목해변 등) ▲충청남도(서산해미읍성, 궁남지 등) ▲충청북도(중앙탑 일원, 단양강 잔도 등) ▲전라남도(여수 해상케이블카, 보성차밭빛축제 등) ▲전라북도(전주 문화재야행) ▲경상남도(통영밤바다 야경투어, 저도 콰이강의 다리 스카이워크 등) ▲경상북도(동궁과 월지, 월영야행 등)
                  ▲제주특별자치도(라이트 아트 페스타, 새연교 등) 등으로 지역별로 고르게 분포됐다. </p>
                <p style="text-align: justify; "> <br> </p>
                <p style="text-align: center;">
                  <img src="resources/home/assets/img/f_sub/f_sub02_02.jpg" width="80%">
                </p>
                <p style="text-align: center;"> <span style="font-size: 30px;"> 월영교 </span> <br class="Apple-interchange-newline"> </p>
                <p style="text-align: justify; "> <br> </p>
                <p style="text-align: justify; "> 공사는 야간관광을 코로나19로 침체된 관광산업의 회복 및 경기 부양 방안으로 추진할 계획이다. 특히 타 경쟁국에 비해 국내는 치안이 우수한 데다, 지역의 매력적인 야간관광 콘텐츠를 발굴·육성하면 관광객 체재일수 확대에 따른 관광소비와 함께 일자리 창출 효과가 나타날 것으로 기대를 모으고 있다. 향후 공사는 코로나19 진정 국면에서 전사적으로 내‧외국인
                  관광객 취향에 맞게 야간관광100선을 활용한 마케팅 활동을 적극 전개해 나갈 방침이다. 공사 하상석 일본팀장은 “이번 기회를 통해 지금까지 홍보가 부족했거나 숨겨져 있던 야간관광 콘텐츠를 대외에 널리 알려, 야간시간대 관광객 유치 확보 및 체재시간 증대를 통해 지역 숙박까지 유도해 두 마리 토끼를 함께 잡으려고 한다“고 전했다. </p> <br>
                <p class="image_grid">
                  <img src="resources/home/assets/img/f_sub/f_sub02_03.jpg" width="100%">
                  <img src="resources/home/assets/img/f_sub/f_sub02_04.jpg" width="100%">
                </p>
                <p style="text-align: center;"> <span style="font-size: 30px;"> (왼/오) 대동하늘공원 / 여수해상케이블카 </span> </p>
                <p style="text-align: center;"> <br> </p>
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

</body>

</html>
