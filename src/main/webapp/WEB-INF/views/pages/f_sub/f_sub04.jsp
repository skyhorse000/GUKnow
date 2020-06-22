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
        <div id="contents" style="height: 1530px;">
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();">
                <span class="ico">좋아요</span>
                <span class="num" id="conLike">4</span>
              </button>
              <button type="button" class="btn_sharing" onclick="openShare();">
                <span class="ico">공유하기</span>
                <span class="num" id="conShare">7</span>
              </button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">1,089</span></span>
            </div>

            <div class="area_tag">
              <span class="name8">
                <a href="#">
                  <span class="ico">Fun</span>이벤트
                </a>
              </span>
            </div>
            <h2>2020 청춘여행공모전 트래블리그</h2>
            <button type="button" title="열기" class="btn_titview">더보기</button>
            <!-- 팝업 메뉴 -->
            <div class="pop_subMenu">
              <ul>
                <li class="btn_far">
                  <a href="javascript:" onclick="setFavoContentDetail()">즐겨찾기</a>
                </li>
                <li class="btn_share">
                  <a href="javascript:openShare();">공유하기</a>
                </li>
              </ul>
            </div>
            <!-- //팝업 메뉴 -->
          </div>

          <!-- 이벤트 내용 -->
          <div class="eventDetailCont">
            <div class="box_txtPhoto" style="width: 100%; height: 1191px;">
              <div class="img_typeBox typeFix clfix">
                <div>
                  <a>
                    <img src="resources/home/assets/img/f_sub/f_sub04_01.jpg" alt="2020 청춘여행공모전 트래블리그" style="max-width: 842px;">
                  </a>
                </div>
              </div>
              <div class="txt_p">
                <a href="https://kto.visitkorea.or.kr/kor/notice/news/nma/board/view.kto?id=441594" target="_blank">
                  <div class="event_btn"> &lt; 모집 안내문 바로가기 &gt; </div>
                </a>
                <style>
                  .box_txtPhoto .txt_p {
                    text-align: center;
                  }

                  .event_btn {
                    width: 30%;
                    display: inline-block;
                    padding: 1%;
                    color: #fff;
                    text-align: center;
                    font-size: 1.0em;
                    font-weight: 700;
                    vertical-align: middle;
                    border: 2px solid#ccc;
                    border-radius: 20px;
                    background-color: #ef3f4a;
                    cursor: pointer;
                    margin-top: 5%;
                    margin-left: 3%;
                    margin-right: 3%;
                  }

                  @media screen and (max-width: 1023px) {
                    .event_btn {
                      width: 80%;
                      padding: 4%;
                    }
                  }
                </style>
                <a href="https://forms.gle/g49jViU95Fg1FHwW7" target="_blank">
                  <div class="event_btn"> &lt; 지원서 작성 바로가기 &gt; </div>
                </a>
              </div>
            </div>
          </div>
          <!-- //이벤트 내용 -->
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
