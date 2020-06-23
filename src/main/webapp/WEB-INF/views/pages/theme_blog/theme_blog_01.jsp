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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">19</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">6</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">7,405</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>[리폼 여행 테마] 2020 여행 트렌드(R.E.F.O.R.M) 따라, 내 여행을 리폼하자! </h2>
            <div class="area_address">
              <span class="address">전국 </span>
              <span id="modi_date">수정일 : 2020.01.29</span>
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

            <strong id="titCont" class="blind">본문 내용</strong><!-- 1108 id 추가 -->
            <!-- [D] 텍스트 미노출시 클래스 blind 추가 -->
            <div class="box_txtPhoto">
              <div class="txt_p">
                <style>
                  #contents {
                    width: 100%;
                    padding: 0px;
                  }

                  .btm_team,
                  .tit_cont,
                  .wrap_reply,
                  .postBtnWrap,
                  .pictureInfo,
                  .authorWriting,
                  .area_lic,
                  .top_logo,
                  .surroundingsInfo,
                  .replyWrap,
                  .tag {
                    max-width: 980px;
                    width: 100%;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .box_modInfo .pictureInfo {
                    margin: 36px auto;
                  }

                  .btm_team.team_marg {
                    margin: 40px auto 10px auto;
                  }

                  .theme_contents {
                    background-color: red;
                    height: 8070px;
                    background: url('resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_02.jpg') no-repeat;
                    background-position: 50% 0%;
                    display: block;
                  }

                  .con_area {
                    width: 940px;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .con_movie_area {
                    width: 100%;
                    text-align: center;
                    position: relative;
                    top: 1900px;
                  }

                  .con_movie_more {
                    width: 100%;
                    padding: 0 20px 0 20px;
                  }

                  .con_movie_more img {
                    padding: 0 auto 0 auto;
                    width: 290px;
                  }

                  .con_sns_area {
                    width: 100%;
                    position: relative;
                    top: 2200px;
                  }

                  .con_sns_more {
                    width: 100%;
                    padding: 0 30px 0 30px;
                  }

                  .con_sns_more img {
                    width: 380px;
                    padding: 0 20px 35px 20px;
                  }

                  .con_FindMyTrip_area {
                    width: 100%;
                    position: relative;
                    top: 2500px;
                  }

                  .con_FindMyTrip_more {
                    width: 100%;
                    padding: 0 50px 0 50px;
                  }

                  .con_mental_area {
                    width: 100%;
                    position: relative;
                    top: 2800px;
                  }

                  .con_mental_more {
                    width: 100%;
                    padding: 0 100px 0 100px;
                  }

                  .con_mental_more img {
                    padding-bottom: 20px;
                    width: 350px;
                  }

                  .con_smart_area {
                    width: 100%;
                    position: relative;
                    top: 3100px;
                  }

                  .con_virtue_area {
                    width: 100%;
                    position: relative;
                    top: 3300px;
                  }

                  .con_virtue_more {
                    width: 100%;
                    padding: 0 20px 0 20px;
                  }

                  .con_virtue_more img {
                    padding: 0 10px 0 10px;
                  }

                  .con_weekly_area {
                    width: 100%;
                    position: relative;
                    top: 3529px;
                  }

                  .con_weekly_more {
                    width: 100%;
                    padding: 0 25px 0 25px;
                  }

                  .con_weekly_more img {
                    padding-bottom: 20px;
                  }

                  .theme_contents_mobile {
                    display: none;
                  }

                  .youtube_box {
                    position: absolute;
                    width: 940px;
                    padding: 0 20px 0 20px;
                    margin-top: -244px;
                  }

                  .youtube_con {
                    display: inline-block;
                    width: 290px;
                    height: 160px;
                  }
                </style>
                <div class="theme_contents">
                  <div class="con_area">
                    <div class="con_movie_area">
                      <!--무비 영역 -->
                      <div class="con_movie_more">
                        <a href="javascript:goLink(1);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_03.jpg"></a>
                        <a href="javascript:goLink(2);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_04.jpg"></a>
                        <a href="javascript:goLink(3);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_05.jpg"></a>
                      </div>
                    </div>
                    <div class="con_sns_area">
                      <!--SNS 영역 -->
                      <div class="con_sns_more">
                        <a href="javascript:goLink(4);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_06.jpg"></a>
                        <a href="javascript:goLink(5);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_07.jpg"></a>
                        <a href="javascript:goLink(6);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_08.jpg"></a>
                        <a href="javascript:goLink(7);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_09.jpg"></a>
                      </div>
                    </div>
                    <div class="con_FindMyTrip_area">
                      <!--FindMyTrip 영역 -->
                      <div class="con_FindMyTrip_more">
                        <a href="javascript:goLink(8);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_10.jpg" style="width:410px; padding-bottom:25px; padding-right: 15px;"></a>
                        <a href="javascript:goLink(9);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_11.jpg" style="width:410px; padding-bottom:25px;"></a>
                        <a href="javascript:goLink(10);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_12.jpg" style="width:840px;"></a>
                      </div>
                    </div>
                    <div class="con_mental_area">
                      <!--감성여행 영역 -->
                      <div class="con_mental_more">
                        <a href="javascript:goLink(11);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_13.png" style="padding-right: 22.5px;"></a>
                        <a href="javascript:goLink(12);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_14.png"></a>
                        <a href="javascript:goLink(13);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_15.png" style="padding-right: 22.5px;"></a>
                        <a href="javascript:goLink(14);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_16.png"></a>
                      </div>
                    </div>
                    <div class="con_smart_area">
                      <!--스마트 영역 -->
                      <div class="con_smart_more">
                        <a href="javascript:goLink(15);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_17.jpg"></a>
                      </div>
                    </div>
                    <div class="con_virtue_area">
                      <!--가상현실 영역 -->
                      <div class="con_virtue_more">
                        <a href="javascript:goLink(16);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_18.jpg"></a>
                        <a href="javascript:goLink(17);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_19.jpg"></a>
                        <a href="javascript:goLink(18);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_20.jpg"></a>
                      </div>
                    </div>
                    <div class="con_weekly_area">
                      <!--당일치기 영역 -->
                      <div class="con_weekly_more">
                        <a href="javascript:goLink(19);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_21.jpg"></a>
                        <a href="javascript:goLink(20);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_22.jpg"></a>
                        <a href="javascript:goLink(21);">
                          <img src="resources/home/assets/img/theme_blog/theme_blog01/theme_blog01_23.jpg"></a>
                      </div>
                    </div>
                  </div>
                  <!--con_area 끝 -->
                </div>
                <style>
                  @media screen and (max-width: 1023px) {
                    .tit_cont {
                      padding: 0 30px 30px 15px;
                    }

                    .post_area {
                      padding-right: 15px;
                    }

                    .tit_cont .btn_titview {
                      padding-right: 45px;
                    }

                    .theme_contents {
                      height: auto;
                      background-size: cover;
                    }

                    .theme_contents {
                      display: none;
                    }

                    .theme_contents_mobile {
                      display: block;
                      width: 100%;
                    }

                    .theme_contents_mobile img {
                      width: 100%;
                    }

                    .swiper-wrapper {
                      padding-bottom: 15%;
                      width: 100%;
                      text-align: center;
                    }

                    .mo_youtube {
                      background-color: #5dbcc2;
                    }

                    .mo_youtube_con,
                    .mo_mental_con {
                      padding: 0% 3% 0% 3%;
                    }

                    .mo_sns {
                      background-color: #5dbcc2;
                    }

                    .mo_sns_con img {
                      width: 70%;
                    }

                    .swiper_btn_area {
                      width: 100%;
                    }

                    .mo_findmytrip,
                    .mo_mental {
                      background-color: #59ba87;
                    }

                    .mo_findmytrip_con img {
                      padding-bottom: 2%;
                    }

                    .mo_weekly_con img {
                      padding-bottom: 2%;
                    }

                    .mo_smart,
                    .mo_weekly {
                      background-color: #d4f0bf;
                    }

                    .mo_smart_con {
                      padding: 0% 1% 0% 1%;
                    }

                    .swiper-button-next,
                    .swiper-container-rtl .swiper-button-prev {
                      background-image: url('https://support.visitkorea.or.kr/img/call?cmd=VIEW&id=a5d7f531-3ec6-4551-b0f9-62d00f293f96&mode=raw');
                      right: 10px;
                      left: auto;
                    }

                    .swiper-button-prev,
                    .swiper-container-rtl .swiper-button-next {
                      background-image: url('https://support.visitkorea.or.kr/img/call?cmd=VIEW&id=afdd77a9-d2e0-46ce-834c-ba5f98f9153c&mode=raw');
                      left: 10px;
                      right: auto;
                    }

                    .swiper-button-next,
                    .swiper-button-prev {
                      position: absolute;
                      top: 50%;
                      background-size: 18px 31px;
                    }

                    .theme_contents_mobile .swiper-pagination-bullet {
                      opacity: 1;
                      width: 15px;
                      height: 15px;
                    }

                    .theme_contents_mobile .swiper-pagination-bullet-active {
                      opacity: 1;
                      width: 40px;
                      height: 15px;
                      border-radius: 7pt;
                    }

                    .mo_youtube .swiper-pagination-bullet {
                      background-color: #87d8dc;
                    }

                    .mo_sns .swiper-pagination-bullet {
                      background-color: #87d8dc;
                    }

                    .mo_mental .swiper-pagination-bullet {
                      background-color: #17824a;
                    }

                    .mo_smart .swiper-pagination-bullet {
                      background-color: #82c551;
                    }

                    .mo_youtube .swiper-pagination-bullet-active {
                      background-color: #00949e;
                    }

                    .mo_sns .swiper-pagination-bullet-active {
                      background-color: #00949e;
                    }

                    .mo_mental .swiper-pagination-bullet-active {
                      background-color: #005027;
                    }

                    .mo_smart .swiper-pagination-bullet-active {
                      background-color: #4fa80e;
                    }
                  }
                </style>

                <script>
                  $(function() {
                    function ThemeSwipe_1() {
                      var ThemeSwipe_1Swipter = new Swiper('.swipe001', {
                        simulateTouch: true,
                        autoHeight: false,
                        loop: false,
                        autoplay: false,
                        observer: true,
                        observeParents: true,
                        pagination: {
                          el: '.swipe001 .swiper-pagination'
                        }
                      });
                    }
                    ThemeSwipe_1();
                  });
                  $(function() {
                    function ThemeSwipe_2() {
                      var ThemeSwipe_2Swipter = new Swiper('.swipe002', {
                        simulateTouch: true,
                        autoHeight: false,
                        loop: false,
                        autoplay: false,
                        navigation: {
                          nextEl: '.swipe002 .swiper-button-next',
                          prevEl: '.swipe002 .swiper-button-prev'
                        },
                        pagination: {
                          el: '.swipe002 .swiper-pagination'
                        }
                      });
                    }
                    ThemeSwipe_2();
                  });
                  $(function() {
                    function ThemeSwipe_3() {
                      var ThemeSwipe_3Swipter = new Swiper('.swipe003', {
                        simulateTouch: true,
                        autoHeight: false,
                        loop: false,
                        autoplay: false,
                        observer: true,
                        observeParents: true,
                        pagination: {
                          el: '.swipe003 .swiper-pagination'
                        }
                      });
                    }
                    ThemeSwipe_3();
                  });
                  $(function() {
                    function ThemeSwipe_4() {
                      var ThemeSwipe_4Swipter = new Swiper('.swipe004', {
                        simulateTouch: true,
                        autoHeight: false,
                        loop: false,
                        autoplay: false,
                        observer: true,
                        observeParents: true,
                        pagination: {
                          el: '.swipe004 .swiper-pagination'
                        }
                      });
                    }
                    ThemeSwipe_4();
                  });

                  function goLink(no) {
                    var i = no;
                    switch (i) {
                      case 1:
                        location.href = "https://www.youtube.com/watch?v=Px7Q1iuUrBw&list=PLTBEODrsBGWysMyUqOUhIH_bYafyklZ51";
                        break; /*동영상1*/
                      case 2:
                        location.href = "https://www.youtube.com/watch?v=zK_oeVB8-pE&list=PLTBEODrsBGWyiwAIW4m-_xzSuD3nbFycf";
                        break; /*동영상2*/
                      case 3:
                        location.href = "https://www.youtube.com/watch?v=mgV3A4l3jK0&list=PLTBEODrsBGWzgXRUKDZKpt44hlucj8nja";
                        break; /*동영상3*/
                      case 4:
                        location.href = "#";
                        break; /*온실 밖은 위험해, 서울 근교, 따뜻하고 평화로운 온실카페*/
                      case 5:
                        location.href = "#";
                        break; /*레트로 감성+예술가 감각, 대구 카페의 무한변신*/
                      case 6:
                        location.href = "#";
                        break; /*서울 수제버거 맛집 5선*/
                      case 7:
                        location.href = "#";
                        break; /*을지로 감성 제대로 느끼는 힙지로*/
                      case 8:
                        location.href = "#";
                        break; /*인천으로 떠나는 추억여행*/
                      case 9:
                        location.href = "#";
                        break; /*먹거리, 즐길거리, 살거리가 있는 군산 여행~*/
                      case 10:
                        location.href = "#";
                        break; /*남해로 멋진 가족 여행을 떠나요*/
                      case 11:
                        location.href = "# ";
                        break; /*폐허에서 예술 공간으로 리노베이션, 대구예술발전소와 수창청춘맨숀*/
                      case 12:
                        location.href = "#";
                        break; /*기암괴석과 출렁다리의 앙상블, 삼척 초곡용굴촛대바위길*/
                      case 13:
                        location.href = "#";
                        break; /*자연도 즐기고 역사도 되짚어보고, 서울식물원과 식민지역사박물관*/
                      case 14:
                        location.href = "#";
                        break; /*금강소나무 숲에서 만끽하는 힐링의 시간, 울진 금강송에코리움*/
                      case 15:
                        location.href = "#";
                        break; /*당신이 몰랐던 한강활용법, 드론공원 피크닉*/
                      case 16:
                        location.href = "#";
                        break; /*국내 최대 가상현실 테마파크, 제주 ‘플레이케이팝’*/
                      case 17:
                        location.href = "#";
                        break; /*VR스테이션*/
                      case 18:
                        location.href = "#";
                        break; /*VR 퓨처시네마 (VR FUTURE CINEMA)*/
                      case 19:
                        location.href = "#";
                        break; /*당일치기로 훑고 오는 겨울 '양주 여행'*/
                      case 20:
                        location.href = "#";
                        break; /*강릉이 가까워졌다. 경강선 KTX로 2시간이면 오케이!*/
                      case 21:
                        location.href = "#";
                        break; /*당일치기로 가볍게 떠나기 좋은 당진 여행!*/
                      default:
                        location.href = "#";
                        break;
                    }
                  } /* 이미지 썸네일 변경 */
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
