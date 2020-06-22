<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
            <a href="home"> <em><img src="resources/home/assets/img/logo.png" alt="G.U.Know travel"></em> <strong><img src="resources/home/assets/img/logo-sub.png" alt="TRAVEL"></strong>
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
  <section id="banner">
    <div class="banner_menu">
      <h2 class="ir_so">배너 영역</h2>
      <div class="container">
        <div class="row">
          <div class="bm_left">
          </div>
          <div class="bm_right">
            <ul>
              <li class="line"><a href="#">여행지 날씨</a></li>
              <li class="line"><a href="#">이용가이드 & 지도</a></li>
              <li><a href="./board/list">공지사항</a></li>
            </ul>
            <ul>
              <li class="white"><a href="planlist">일정 보기</a></li>
              <li class="purple"><a href="create">일정 만들기</a></li>
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
                <p>1997년 유네스코 세계문화유산으로 등록된 수원화성</p>
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
                <p>젊은 여행자들의 천년 고도</p>
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
      </div>
    </div>
  </section>
  <!-- //banner -->
  <section id="movie">
    <div class="container">
      <div class="row">
        <h2 class="ir_so">Favorite</h2>
        <div class="movie">
          <div class="movie_title">
            <ul class="clearfix">
              <li class="active"><a href="#">추천 여행지 소개 Blog</a></li>
              <li><a href="#">추천 숙소 소개 Blog</a></li>
              <li><a href="#">코스 추천</a></li>
              <li><a href="#">꿀잼보장</a></li>
            </ul>
          </div>
          <div class="movie_chart">
            <!-- chart_cont1 -->
            <div class="swiper-container2">
              <div class="chart_cont1 swiper-wrapper">
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_01.png" alt="슬로시티 하동">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>슬로시티 하동</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_01">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_01.png" alt="전국 가볼 만 한 숲 5곳">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>전국 가볼 만 한 숲 5곳</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_02">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_01.png" alt="힐링 광양여행">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>힐링 광양여행</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_03">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_01.png" alt="포항 가볼만한곳">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>포항 가볼만한곳</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_04">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_01.png" alt="1박2일 남도 기행">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>1박2일 남도 기행</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_05">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_01.png" alt="대한민국구석구석!">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>대한민국구석구석!</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_06">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_01.png" alt="광양여행">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>광양여행</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_07">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_01.png" alt="태안 가의도">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>태안 가의도</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="recommend_blog_08">상세정보</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- //chart_cont1 -->
            <!-- chart_cont2 -->
            <div class="swiper-container2">
              <div class="chart_cont2 swiper-wrapper">
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/accommodation_blog/accommodation_blog01_01.jpg" alt="파라다이스 시티 씨메르">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>파라다이스 시티 씨메르</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="accommodation_blog_01">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/accommodation_blog/accommodation_blog02_01.jpg" alt="테라피 스파 소베">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>테라피 스파 소베</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="accommodation_blog_02">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/accommodation_blog/accommodation_blog03_01.jpg" alt="한화리조트 거제 벨버디어 웰니스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>거제 벨버디어 웰니스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="accommodation_blog_03">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/accommodation_blog/accommodation_blog04_01.jpg" alt="아일랜드캐슬 리조트">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>아일랜드캐슬 리조트</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="accommodation_blog_04">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/accommodation_blog/accommodation_blog01_01.jpg" alt="파라다이스 시티 씨메르">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>파라다이스 시티 씨메르</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="accommodation_blog_01">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/accommodation_blog/accommodation_blog02_01.jpg" alt="테라피 스파 소베">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>테라피 스파 소베</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="accommodation_blog_02">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/accommodation_blog/accommodation_blog03_01.jpg" alt="한화리조트 거제 벨버디어 웰니스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>거제 벨버디어 웰니스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="accommodation_blog_03">상세정보</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- //chart_cont2 -->
            <!-- chart_cont3 -->
            <div class="swiper-container2">
              <div class="chart_cont3 swiper-wrapper">
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog01/course_blog01_01.jpg" alt="고흥의 문화유적 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>고흥의 문화유적 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_01">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog02/course_blog02_01.jpg" alt="혼자 먹는 밥상 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>혼자 먹는 밥상 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_02">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_01.jpg" alt="사천 여행 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>사천 여행 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_03">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog04/course_blog04_01.jpg" alt="기찬랜드와 낙지요리 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>기찬랜드와 낙지요리 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_04">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog05/course_blog05_01.jpg" alt="백학동 마을 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>백학동 마을 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_05">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog06/course_blog06_01.jpg" alt="태백시 힐링여행 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>태백시 힐링여행 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_06">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_01.jpg" alt="진주&산청 여행 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>진주&산청 여행 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_07">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/course_blog/course_blog08/course_blog08_01.jpg" alt="부산의 자연생태 체험 코스">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>부산의 자연생태 체험 코스</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="course_blog_08">상세정보</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- //chart_cont3 -->
            <!-- chart_cont4 -->
            <div class="swiper-container2">
              <div class="chart_cont4 swiper-wrapper">
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster13.jpg" alt="침묵">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>북촌 한옥마을</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster14.jpg" alt="침묵">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>경북궁</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster15.jpg" alt="침묵">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>무창포 갯벌</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster16.jpg" alt="침묵">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>서울 강남</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster29.jpg" alt="북촌 한옥마을">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>북촌 한옥마을</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster30.jpg" alt="경북궁">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>경북궁</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster31.jpg" alt="무창포 갯벌">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>무창포 갯벌</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="poster">
                    <figure>
                      <img src="resources/home/assets/img/poster32.jpg" alt="서울 강남">
                    </figure>
                  </div>
                  <div class="infor">
                    <h3>
                      <strong>서울 강남</strong>
                    </h3>
                    <div class="infor_btn">
                      <a href="#">상세정보</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- //chart_cont4 -->
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //movie -->
  <section id="event">
    <div class="container">
      <div class="row">
        <div class="event">
          <h2>
            <em>새로운 이벤트</em>
          </h2>
          <div class="event_left">
            <div class="event_slider">
              <img src="resources/home/assets/img/main_event/main_event01.png" alt="세상 모든 여행 이벤트 어디까지 해봤니?">
            </div>
            <figure class="event_box1">
              <a href="main_event"> <img src="resources/home/assets/img/main_event/main_event02.png" alt="가상현실 국내여행 영상 공모전">
              </a>
            </figure>
            <figure class="event_box2">
              <a href="main_event"> <img src="resources/home/assets/img/main_event/main_event08.png" alt="제1회 양양관광 전국사진 공모전. 2020년 11월 2일에서 2020년 11월 30일까지 양양 관광의 다양하고 아름다운 사진을 공모합니다. 출품 접수일 확인 필수!">
              </a>
            </figure>
          </div>
          <figure class="event_right">
            <a href="main_event"> <img src="resources/home/assets/img/main_event/main_event05_01.jpg" alt="2020 청춘여행공모전 트래블리그">
            </a>
          </figure>
        </div>
      </div>
    </div>
  </section>
  <!-- //event -->
  <!-- opening -->
  <section id="opening">
    <div class="container">
      <div class="row">
        <div id="contents" class="main_contents">
          <div>
            <!-- 0601 태그제거 -->
            <ul class="snbMain clfix">
              <li class="menu1"><a href="recommend" onclick="goContentMain('추천');"> <span class="ico">Now</span> <em>추천</em>
                </a></li>
              <li class="menu2"><a href="popular" onclick="goContentMain('여행지');"> <span class="ico">All</span> <em>여행지</em>
                </a></li>
              <li class="menu3"><a href="course" onclick="goContentMain('코스');"> <span class="ico">Easy</span> <em>코스</em>
                </a></li>
              <li class="menu4"><a href="main_event" onclick="goContentMain('이벤트');"> <span class="ico hvr-push">Fun</span> <em>이벤트</em>
                </a></li>
              <!-- 0924 추가 -->
            </ul>
            <div class="specialEdition" style="height: 540px;">
              <div class="mc_inner">
                <!-- 190315 div.mc_inner 추가 -->
                <div class="top_cont clfix">
                  <div class="top_leftCont">
                    <div class="imgbannerArea">
                      <a href="favorite01"> <img src="resources/home/assets/img/favorite/favorite01.png" alt="쉿, 비밀이야! 나만 알고 싶은 한적한 여행지" style="vertical-align: middle;">
                      </a>
                    </div>
                    <div class="article bd0">
                      <!-- 1002 div.article 추가 -->
                      <a href="./board/list" class="tit_atc">오늘의 공지사항<span class="btn_more">더보기</span>
                      </a>
                      <hr />
                      <!-- 1205 a 태그로 변경, 더보기 추가 -->
                      <ul class="list_board">
                        <li><a href="covid" onclick="" title="여행정보 변동사항 로 이동"> <em style="color: #FF5E00">코로나바이러스감염증-19ㅣ</em>여행정보 변동사항
                          </a></li>
                        <c:forEach var="vo" items="${boardList }">
                          <li>
                            <a class="goToDetail" href="${vo.bno }">
                              <em style="color: #62acc9">
                                <fmt:formatDate value="${vo.regdate }" pattern="yyyy/MM/dd" />
                              </em>${vo.title }
                            </a>
                          </li>
                        </c:forEach>
                      </ul>
                      <div>
                        <form id="pagingForm" style="display: none;">
                          <input type="text" name="page" value="${pageMaker.criteria.page }"> <input type="text" name="bno">
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- 홍보배너 (PC)-->
                  <div class="banner_pcTop active">
                    <!-- pc banner-->
                    <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
                      <ul class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
                        <li class="swiper-slide swiper-slide-duplicate swiper-slide-active" data-swiper-slide-index="1" style="width: 465px;">
                          <ul>
                            <li><a href="f_sub01"> <img src="resources/home/assets/img/f_sub/f_sub01.png" alt="근로자 휴가지원 사업">
                              </a></li>
                            <li><a href="f_sub02"> <img src="resources/home/assets/img/f_sub/f_sub02.png" alt="어두운 밤에도 계속될 여행! 한국관광공사 야간 관광 100선">
                              </a></li>
                            <li><a href="f_sub03"> <img src="resources/home/assets/img/f_sub/f_sub03.png" alt="방구석 여행 안내 키트 증정">
                              </a></li>
                            <li><a href="f_sub04"> <img src="resources/home/assets/img/f_sub/f_sub04.png" alt="한국관광품질인증">
                              </a></li>
                          </ul>
                        </li>
                        <li class="swiper-slide swiper-slide-next swiper-slide-duplicate-prev" data-swiper-slide-index="0" style="width: 465px;">
                          <ul>
                            <li><a href="f_sub05"> <img src="resources/home/assets/img/f_sub/f_sub05.png" alt="따르릉~ 비켜나세요! 라이딩하기 딱 좋은 전국 자전거 여행 코스">
                              </a></li>
                            <li><a href="f_sub06"> <img src="resources/home/assets/img/f_sub/f_sub06.png" alt="집콕 힐링 프로젝트, 슬기로운 드라이브 여행">
                              </a></li>
                            <li><a href="f_sub07"> <img src="resources/home/assets/img/f_sub/f_sub07.png" alt="리틀홈Pick 체험이 있는 야외 나들이 12">
                              </a></li>
                            <li><a href="f_sub08"> <img src="resources/home/assets/img/f_sub/f_sub08.png" alt="KTO 시민 참여단 시민 위원 모집">
                              </a></li>
                          </ul>
                        </li>
                        <li class="swiper-slide swiper-slide-duplicate-active" data-swiper-slide-index="1" style="width: 465px;">
                          <ul>
                            <li><a href="f_sub01"> <img src="resources/home/assets/img/f_sub/f_sub01.png" alt="근로자 휴가지원 사업">
                              </a></li>
                            <li><a href="f_sub02"> <img src="resources/home/assets/img/f_sub/f_sub02.png" alt="어두운 밤에도 계속될 여행! 한국관광공사 야간 관광 100선">
                              </a></li>
                            <li><a href="f_sub03"> <img src="resources/home/assets/img/f_sub/f_sub03.png" alt="방구석 여행 안내 키트 증정">
                              </a></li>
                            <li><a href="f_sub04"> <img src="resources/home/assets/img/f_sub/f_sub04.png" alt="한국관광품질인증">
                              </a></li>
                          </ul>
                        </li>
                        <li class="swiper-slide swiper-slide-duplicate swiper-slide-prev swiper-slide-duplicate-next" data-swiper-slide-index="0" style="width: 465px;">
                          <ul>
                            <li><a href="f_sub05"> <img src="resources/home/assets/img/f_sub/f_sub05.png" alt="따르릉~ 비켜나세요! 라이딩하기 딱 좋은 전국 자전거 여행 코스">
                              </a></li>
                            <li><a href="f_sub06"> <img src="resources/home/assets/img/f_sub/f_sub06.png" alt="집콕 힐링 프로젝트, 슬기로운 드라이브 여행">
                              </a></li>
                            <li><a href="f_sub07"> <img src="resources/home/assets/img/f_sub/f_sub07.png" alt="리틀홈Pick 체험이 있는 야외 나들이 12">
                              </a></li>
                            <li><a href="f_sub08"> <img src="resources/home/assets/img/f_sub/f_sub08.png" alt="KTO 시민 참여단 시민 위원 모집">
                              </a></li>
                          </ul>
                        </li>
                      </ul>
                      <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                  </div>
                  <!-- // 홍보배너 (PC)-->
                </div>
              </div>
            </div>
          </div>
          <!-- 테마관 -->
          <!-- //contents -->
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

    //영화차트 이미지 슬라이드
    var swiper = new Swiper('.swiper-container2', {
      slidesPerView: 4,
      spaceBetween: 10,
      //            mousewheel: {
      //                invert: true,
      //            },
      keyboard: {
        enabled: true,
        onlyInViewport: false,
      },
      autoplay: {
        delay: 3000,
      },
      breakpoints: {
        600: {
          slidesPerView: 1.4,
          spaceBetween: 24
        },
        768: {
          slidesPerView: 2,
          spaceBetween: 24
        },
        960: {
          slidesPerView: 3,
          spaceBetween: 24
        }
      }
    });

    //태그 이미지 슬라이드
    var swiper = new Swiper('.swiper-container3', {
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

    //추천 이미지 슬라이드
    var swiper = new Swiper('.swiper-container4', {
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

    //영화차트 탭 메뉴
    var movBtn = $(".movie_title > ul > li");
    var movCont = $(".movie_chart > div");

    movCont.hide().eq(0).show();

    movBtn.click(function(e) {
      e.preventDefault(); //a 태그에 #이 들어 있어서 클릭시 상단으로 올라가는 문제 해결
      var target = $(this);
      var index = target.index();
      movBtn.removeClass("active");
      target.addClass("active");
      movCont.css("display", "none");
      movCont.eq(index).css("display", "block");
    });

    //공지사항 탭 메뉴
    var tabMenu = $(".notice");

    //컨텐츠 내용을 숨겨주세요!
    tabMenu.find("ul > li > ul").hide();
    tabMenu.find("li.active > ul").show();

    function tabList(e) {
      e.preventDefault(); //#의 기능을 차단
      var target = $(this);
      target.next().show().parent("li").addClass("active")
        .siblings("li").removeClass("active").find("ul").hide();
      //버튼을 클릭하면 ~ div를 보여주고
      //부모의 li 태그에 클래스 추가하고
      //형제의 li 태그에 클래스 제거하고
      //제거한 자식의 div 태그를 숨겨줌
    }

    tabMenu.find("ul > li > a").click(tabList).focus(tabList);

    $(document).ready(function() {

      // 게시판 내용 상세 detail 페이지 이동
      $('.goToDetail').click(function() {
        console.log("Detail page 이동 ");
        event.preventDefault();
        var bno = $(this).attr('href');
        var frm = $('#pagingForm');
        frm.attr('action', 'detail');
        frm.attr('method', 'get');
        frm.find('[name="bno"]').val(bno);
        frm.submit();
      }); // end click()

    });
  </script>
</body>

</html>
<!-- //help -->
