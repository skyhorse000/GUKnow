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
        <h2 class="ir_so">Favorite</h2>
        <div id="contents">
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">23</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">5</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">5,995</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>취향껏 떠나보자! 모두의 여행</h2>
            <div class="area_address">

              <span id="modi_date">수정일 : 2020.05.04</span>
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
                <div class="theme_bg">
                  <div class="contWrap">
                    <div class="topVisu">
                      <img src="resources/home/assets/img/f_sub/f_sub07_bg01.png" class="pc" alt="조선의 선비, 대한민국을 유람하다. - 조선손님유람기">
                    </div> <!-- 1번 섹션 시작 -->
                    <div class="theme_title02"> </div>
                    <div class="listView">
                      <ul>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_01.jpg" alt="">
                              <div style="area_con"> ✔ 충북 옥천 </div>
                              <p class="text_st"> 꿈엔들 잊힐리야 <br> <span> 향수 자극하는 옥천의 봄 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_02.jpg" alt="">
                              <div style="area_con"> ✔ 충남 부여 </div>
                              <p class="text_st"> 눈부신 백제의 흔적을 찾아 <br> <span> 부여 시간 여행 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_03.jpg" alt="">
                              <div style="area_con"> ✔ 경기 포천 </div>
                              <p class="text_st"> 60대 ‘인싸’들의 <br> <span> 흥겨운 청춘 여행 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_04.jpg" alt="">
                              <div style="area_con"> ✔ 강원 동해 </div>
                              <p class="text_st"> 생애 최고의 일출 <br> <span> 추암 촛대바위 &amp; 출렁다리 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_05.jpg" alt="">
                              <div style="area_con"> ✔ 전남 해남 </div>
                              <p class="text_st"> 다채로운 풍경이 펼쳐지는 <br> <span> 두륜산 케이블카 &amp; 전망대 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_06.jpg" alt="">
                              <div style="area_con"> ✔ 전남 장흥 </div>
                              <p class="text_st"> 편히 걷기 좋은 열린관광지 <br> <span> 정남진 편백숲 우드랜드 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <!--2번 동영상 섹션 시작-->
                    <div class="theme_title03"> </div>
                    <div class="theme_video">
                      <ul>
                        <li>
                          <div class="video_wrap">
                            <img src="resources/home/assets/img/temp_video.jpg" alt="video dummy">
                            <div class="video_area">
                              <div id="youtube" style="height:100%;">
                                <iframe id="cc12dfe6-8869-4ec2-875d-95dd98bfa682" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" title="YouTube video player" width="100%"
                                  height="100%" src="https://www.youtube.com/embed/WrzJnRUAfUA?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=1">
                                </iframe>
                                <p class="text_st"> ( feat. 애견동반여행 꿀팁 ★★★ ) <br> <span> 강형욱과 다올이의 첫 동해여행 브이로그 </span> </p>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="video_wrap">
                            <img src="resources/home/assets/img/temp_video.jpg" alt="video dummy">
                            <div class="video_area">
                              <div id="youtube" style="height:100%;">
                                <iframe id="554c4887-18a0-43db-9ca2-5e719553ce51" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" title="YouTube video player" width="100%"
                                  height="100%" src="https://www.youtube.com/embed/mgV3A4l3jK0?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=1">
                                </iframe>
                                <p class="text_st"> 댕댕과 함께 온천도 즐길 수 있다?! <br> <span> 양양 반려견 온천편 </span> </p>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="video_wrap">
                            <img src="resources/home/assets/img/temp_video.jpg" alt="video dummy">
                            <div class="video_area">
                              <div id="youtube" style="height:100%;">
                                <iframe id="fe1b673f-2d6b-4b08-9d81-fac5cb5f3b48" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" title="YouTube video player" width="100%"
                                  height="100%" src="https://www.youtube.com/embed/bUO90GGXUp4?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=1">
                                </iframe>
                                <p class="text_st"> 레일바이크 타고 바다 한 바퀴🎵 <br> <span> 삼척 해양레일바이크편 </span> </p>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="video_wrap">
                            <img src="resources/home/assets/img/temp_video.jpg" alt="video dummy">
                            <div class="video_area">
                              <div id="youtube" style="height:100%;">
                                <iframe id="1483d69e-10a0-49f1-a255-799c22981df5" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" title="YouTube video player" width="100%"
                                  height="100%" src="https://www.youtube.com/embed/YICROLsPZ-o?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=1">
                                </iframe>
                                <p class="text_st"> 놀이터가 있는 휴게소가 있다?! <br> <span> 덕평휴게소편 </span> </p>
                              </div>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div> <!-- 3번 섹션 시작 -->
                    <div class="theme_title04"> </div>
                    <div class="listView">
                      <ul>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_07.jpg" alt="">
                              <div style="area_con"> ✔ 서울 은평 </div>
                              <p class="text_st"> 계절의 아름다움 따라 <br> <span> 걷기 좋은 북한산 둘레길 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_08.jpg" alt="">
                              <div style="area_con"> ✔ 충남 당진 </div>
                              <p class="text_st"> 시간을 걷는 뉴트로 여행 <br> <span> 당진면천읍성 성안마을 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_09.jpg" alt="">
                              <div style="area_con"> ✔ 전국 </div>
                              <p class="text_st"> 신나게 라이딩 한 판! <br> <span> 전국 자전거 여행 코스 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_10.jpg" alt="">
                              <div style="area_con"> ✔ 경남 사천 </div>
                              <p class="text_st"> 하루를 봄으로 채우는 <br> <span> 봄 냄새 가득 사천 여행 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_11.jpg" alt="">
                              <div style="area_con"> ✔ 부산 일대 </div>
                              <p class="text_st"> 소소하지만 확실한 행복! <br> <span> 부산 핫플레이스 카페 여행 </span> </p>
                            </a>
                          </div>
                        </li>
                        <li>
                          <div class="wrap">
                            <a href="#">
                              <img src="resources/home/assets/img/f_sub/f_sub07_12.jpg" alt="">
                              <div style="area_con"> ✔ 강원 일대 </div>
                              <p class="text_st"> 맑은 공기 속 힐링 타임 <br> <span> 나만 알고 싶은 산책길 </span>
                              </p>
                            </a>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div> <br> <br> <br>
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

                      .theme_bg {
                        background: #fef9ea;
                      }

                      .contWrap {
                        width: 940px;
                        position: relative;
                        text-align: center;
                        margin-left: auto;
                        margin-right: auto;
                      }

                      .topVisu .mo {
                        display: none;
                      }

                      .listView {
                        overflow: hidden;
                        margin-top: 30px;
                        margin-bottom: 30px;
                      }

                      .listView ul {
                        overflow: hidden;
                        display: table;
                      }

                      .listView ul li {
                        float: left;
                        width: 297px;
                        margin: 8px;
                        margin-bottom: 30px;
                      }

                      .listView ul li .wrap {
                        margin-left: 0px;
                        height: 363px;
                        background-color: #ffffff;
                        border-radius: 10px;
                        line-height: 1.5;
                        box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .1);
                      }

                      .listView ul li a {
                        position: relative;
                        width: 297px;
                        height: 270px;
                        display: block;
                      }

                      .listView ul li a img {
                        width: 100%;
                        height: 100%;
                        border-top-left-radius: 10px;
                        border-top-right-radius: 10px;
                      }

                      .listView ul li a div {
                        right: 0px;
                        background-color: #7c8b22;
                        color: #ffffff;
                        transform: translate(0%, -100%);
                        position: absolute;
                        padding: 4px 8px;
                        font-size: 15px;
                        font-weight: 200;
                      }

                      .listView ul li .text_st {
                        padding: 17px 0 0;
                        min-height: 75px;
                        font-size: 18px;
                        color: #4d4d4d;
                        letter-spacing: -1px;
                        word-break: keep-all;
                      }

                      .listView ul li .text_st>span {
                        font-weight: 800;
                        color: #596c1e;
                        font-size: 19px;
                      }

                      .listView ul li .up {
                        font-size: 14px;
                        color: #f23939;
                        border: 1px solid #f23939;
                        height: 16px;
                        line-height: 14px;
                        width: 36px;
                        text-align: center;
                        display: inline-block;
                        border-radius: 30px;
                        margin-left: 5px;
                      }

                      .listView ul li .comingSoon {
                        display: block;
                        width: 100%;
                        height: 100%;
                        position: absolute;
                        left: 0;
                        top: 0;
                        background: rgba(0, 0, 0, 0.7);
                        color: #fff;
                        text-align: center;
                        font-size: 16px;
                      }

                      .listView ul li .comingSoon em {
                        display: block;
                        padding: 0 0 4px;
                      }

                      .listView ul li .comingSoon:before {
                        content: '';
                        display: inline-block;
                        width: 49px;
                        height: 38px;
                        background: url('resources/home/assets/img/f_sub/f_sub07_icon01.png') no-repeat;
                        margin-top: 50px;
                      }

                      .listView ul li .comingSoon>p {
                        line-height: 28px;
                      }

                      .moreinfo {
                        text-align: center;
                        margin-top: 25px;
                      }

                      .morebtn {
                        background-color: #f0f0f0;
                        color: #0292ff;
                        border: 1px solid #c3c1c1;
                        border-radius: 5px;
                        margin-left: 10px;
                        width: 150px;
                        height: 40px;
                      }

                      .strong_btn {
                        background: #4caf50;
                      }

                      .theme_video {
                        overflow: hidden;
                        margin-top: 30px;
                        margin-bottom: 30px;
                      }

                      .theme_video ul {
                        overflow: hidden;
                        display: table;
                      }

                      .theme_video ul li {
                        float: left;
                        margin: 8px;
                        margin-bottom: 30px;
                        width: 453px;
                        height: 345px;
                        background-color: #fff;
                        border-radius: 10px;
                        box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .1);
                      }

                      .theme_video ul li div iframe {
                        width: 100%;
                        height: 100%;
                        border-top-left-radius: 10px;
                        border-top-right-radius: 10px;
                      }

                      .theme_video ul li a {
                        position: relative;
                        display: block;
                      }

                      .theme_video ul li a img {
                        width: 100%;
                        height: auto;
                      }

                      .theme_video ul li .text_st {
                        padding: 9px 0 13px 0;
                        min-height: 60px;
                        font-size: 18px;
                        color: #4d4d4d;
                        letter-spacing: -1px;
                        word-break: keep-all;
                      }

                      .theme_video ul li .text_st>span {
                        font-weight: 800;
                        color: #596c1e;
                        font-size: 19px;
                      }

                      .theme_title02 {
                        background: URL(resources/home/assets/img/f_sub/f_sub07_bg02.png);
                        height: 150px;
                      }

                      .theme_title03 {
                        background: URL(resources/home/assets/img/f_sub/f_sub07_bg03.png);
                        height: 150px;
                      }

                      .theme_title04 {
                        background: URL(resources/home/assets/img/f_sub/f_sub07_bg04.png);
                        height: 150px;
                      }
                    </style>
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

                        .box_modInfo,
                        .btm_team,
                        .replyWrap .write,
                        .replyWrap .wrap_reply {
                          padding: 10px 15px;
                        }

                        .replyWrap.login .fileRegbtn {
                          right: 70px;
                        }

                        .replyWrap.login .btn_apply {
                          right: 15px;
                        }

                        .contWrap {
                          width: auto;
                          padding: 0 0px;
                        }

                        img {
                          width: 100%;
                        }

                        .topVisu .pc {
                          display: none;
                        }

                        .topVisu .mo {
                          display: block;
                        }

                        .theme_title02,
                        .theme_title03,
                        .theme_title04 {
                          background-position: 100% 0%;
                          background-size: 140%;
                          background-repeat: no-repeat;
                          height: 88px;
                        }

                        .listView {
                          margin-top: 22px;
                        }

                        .listView ul li {
                          width: 47%;
                          margin: 4.5px;
                          margin-bottom: 15px
                        }

                        .listView ul li .wrap {
                          height: 240px;
                        }

                        .listView ul li a {
                          width: auto;
                          height: 165px;
                        }

                        .listView ul li a img {
                          width: 100%;
                          height: 100%;
                        }

                        .listView ul li a div {
                          font-size: 13px;
                        }

                        .listView ul li .text_st {
                          font-size: 14px;
                          min-height: 50px;
                          height: 50px;
                          line-height: 1.4;
                          display: block;
                        }

                        .listView ul li .text_st>span {
                          font-size: 15px;
                        }

                        .theme_video {
                          margin-top: 22px;
                          margin-bottom: 25px;
                        }

                        .theme_video ul {
                          display: block;
                        }

                        .theme_video ul li {
                          float: none;
                          margin-bottom: 20px;
                          width: 95%;
                          height: 300px;
                        }

                        .theme_video ul li iframe,
                        .theme_video ul li div iframe {
                          width: 100%;
                          height: 220px;
                        }

                        .theme_video ul li .text_st {
                          font-size: 16px;
                          min-height: 55px;
                          height: 50px;
                          line-height: 1.4;
                          display: block;
                          line-height: 1.4;
                        }

                        .theme_video ul li .text_st>span {
                          font-size: 17px;
                        }

                        .listView ul li .up {
                          font-size: 12px;
                          height: 14px;
                          line-height: 12px;
                          width: 30px;
                        }

                        .listView ul li .comingSoon {
                          width: 100%;
                          height: 100%;
                        }

                        .listView ul li .comingSoon span {
                          display: block;
                          width: 100%;
                          position: absolute;
                          left: 0;
                          top: 50%;
                          transform: translateY(-50%);
                        }

                        .listView ul li .comingSoon span:before {
                          content: '';
                          display: inline-block;
                          width: 49px;
                          height: 38px;
                          background: url('resources/home/assets/img/f_sub/f_sub07_icon01.png') no-repeat;
                        }

                        .listView ul li .comingSoon:before {
                          display: none;
                        }

                        .moreinfo {
                          text-align: center;
                          margin-top: 15px;
                          margin-left: auto;
                          margin-right: auto;
                        }

                        .morebtn {
                          background-color: #333333;
                          color: #ffffff;
                          border: 1px solid #333333;
                          border-radius: 5px;
                          width: 90px;
                          height: 40px;
                          margin-left: 0;
                        }

                        .strong_btn {
                          background: #4caf50;
                        }
                      }
                    </style>
                  </div>
                </div>
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
