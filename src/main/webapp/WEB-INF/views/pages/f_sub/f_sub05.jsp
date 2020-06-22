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
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">51</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">110</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">11,566</span></span>
            </div>

            <div class="area_tag">
              <span class="name3">
                <a href="#">
                  <span class="ico">Now</span>추천
                </a>
              </span>
            </div>
            <h2>따르릉~ 비켜나세요! 라이딩하기 딱 좋은 전국 자전거 여행 코스</h2>
            <div class="area_address">

              <span id="modi_date">수정일 : 2020.04.23</span>
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
                <li>
                  <a href="#titCont">
                    <img src="resources/home/assets/img/ico_detail_nav01.png" class="ico" alt="">
                    <span class="tit">본문내용</span>
                  </a>
                </li>
                <li>
                  <a href="#titTrableInfo">
                    <img src="resources/home/assets/img/ico_detail_nav02.png" class="ico" alt="">
                    <span class="tit">여행정보</span>
                  </a>
                </li>
                <li style="display:none;" id="vtitMoveInfo">
                  <a href="#titMoveInfo">
                    <img src="resources/home/assets/img/ico_detail_nav03.png" class="ico" alt="">
                    <span class="tit">이동정보</span>
                  </a>
                </li>
                <li style="display:none;" id="vtitFoodAcc">
                  <a href="#titFoodAcc">
                    <img src="resources/home/assets/img/ico_detail_nav04.png" class="ico" alt="">
                    <span class="tit">음식/숙박정보</span>
                  </a>
                </li>
              </ul>
            </div>
            <!-- // 기사 섹션 네비게이션 -->
            <!-- // 1108 추가 -->

            <!-- 0808 추가 -->
            <!-- div class="link_vr_area">
				<a href="#" class="link_vr_img">360 VR 사진</a><a href="#" class="link_vr_video">360 VR 동영상</a>
			</div-->
            <!-- // 0808 추가 -->
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

                  .theme_pc img {
                    width: 100%;
                  }

                  .theme_pc {
                    display: block;
                  }

                  .theme_mo {
                    display: none;
                  }

                  .theme_mo img {
                    width: 100%;
                  }

                  .pc_header {
                    width: 100%;
                  }

                  .theme_contents {
                    width: 100%;
                    height: 11600px;
                    background: url('resources/home/assets/img/f_sub/f_sub05_bg01.png');
                    background-repeat: no-repeat;
                    background-position: 50% 0%;
                    overflow-x: hidden;
                    overflow-y: auto;
                  }

                  .thme_contents_detail {
                    width: 940px;
                    position: relative;
                    top: 850px;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .thme_contents_detail img {
                    width: 100%;
                  }

                  .theme_mo {
                    width: 100%;
                  }

                  .mo_header,
                  .mo_footer {
                    width: 100%;
                  }

                  .mo_body {
                    width: 100%;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .mo_header,
                  .mo_footer {
                    width: 100%;
                  }

                  .mo_body {
                    width: 100%;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .mo_title {
                    width: 100%;
                  }

                  .mo_contents {
                    width: 100%;
                    padding-bottom: 7%;
                  }

                  .mo_contents .swiper-container {
                    padding-bottom: 10%;
                  }

                  .mo_contents .swiper-wrapper {
                    width: 90%;
                    margin: 0% 0% 2% 4%;
                  }

                  .mo_contents .swiper-wrapper li.swiper-slide:last-child {
                    padding-right: 7%;
                  }

                  .mo_contents .swiper-container {
                    text-align: left;
                    margin-left: 0 auto;
                  }

                  .mo_contents .swiper-slide {
                    width: 90%;
                  }

                  .family {
                    background-color: #fefdf5;
                  }

                  .family .swiper-pagination-bullet {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon01.png);
                    width: 15px;
                    height: 15px;
                    opacity: 1;
                  }

                  .family .swiper-pagination-bullet-active {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon02.png);
                    width: 15px;
                    height: 15px;
                  }

                  .couple {
                    background-color: #eafdfc;
                  }

                  .couple .swiper-pagination-bullet {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon03.png);
                    width: 15px;
                    height: 15px;
                    opacity: 1;
                  }

                  .couple .swiper-pagination-bullet-active {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon04.png);
                    width: 15px;
                    height: 15px;
                  }

                  .friend {
                    background-color: #e4f9fe;
                  }

                  .friend .swiper-pagination-bullet {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon05.png);
                    width: 15px;
                    height: 15px;
                    opacity: 1;
                  }

                  .friend .swiper-pagination-bullet-active {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon06.png);
                    width: 15px;
                    height: 15px;
                  }

                  .alone {
                    background-color: #fff1f1;
                  }

                  .alone .swiper-pagination-bullet {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon07.png);
                    width: 15px;
                    height: 15px;
                    opacity: 1;
                  }

                  .alone .swiper-pagination-bullet-active {
                    background: url(resources/home/assets/img/f_sub/f_sub05_icon08.png);
                    width: 15px;
                    height: 15px;
                  }

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

                    .theme_pc {
                      display: none;
                    }

                    .theme_mo {
                      display: block;
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
                  }
                </style>
                <div class="theme_pc">
                  <div class="theme_contents">
                    <div class="thme_contents_detail">
                      <img src="resources/home/assets/img/f_sub/f_sub05_bg02.png" usemap="#imagemap001">
                      <map id="imagemap001" name="imagemap001">
                        <!-- 지도맵 -->
                        <area alt="춘천 공지천" title="" href="javascript:goLink(1);" shape="rect" coords="476,356,582,386">
                        <area alt="창녕 우포늪" title="" href="javascript:goLink(2);" shape="rect" coords="483,834,590,864">
                        <area alt="가평 호명산" title="" href="javascript:goLink(3);" shape="rect" coords="346,304,452,334">
                        <area alt="속초 영랑호" title="" href="javascript:goLink(4);" shape="rect" coords="597,301,703,331">
                        <area alt="부산삼락생태공원" title="" href="javascript:goLink(5);" shape="rect" coords="643,868,798,899">
                        <area alt="인천 신시모도" title="" href="javascript:goLink(6);" shape="rect" coords="76,400,205,431">
                        <area alt="강릉 경포호 산소길" title="" href="javascript:goLink(7);" shape="rect" coords="646,375,805,404">
                        <area alt="군산 선유도" title="" href="javascript:goLink(8);" shape="rect" coords="98,731,210,760">
                        <area alt="부안 변산반도" title="" href="javascript:goLink(9);" shape="rect" coords="92,770,219,800">
                        <area alt="통영 삼칭이길" title="" href="javascript:goLink(10);" shape="rect" coords="546,938,673,968">
                        <area alt="제주 우도" title="" href="javascript:goLink(11);" shape="rect" coords="707,1035,800,1066">
                        <area alt="양평 남양주 남한강" title="" href="javascript:goLink(12);" shape="rect" coords="453,436,620,465">
                        <area alt="남양주 북한강" title="" href="javascript:goLink(13);" shape="rect" coords="234,365,355,391">
                        <area alt="화천 파로호 산소100리길" title="" href="javascript:goLink(14);" shape="rect" coords="325,232,539,260">
                        <area alt="곡성 섬진강" title="" href="javascript:goLink(15);" shape="rect" coords="224,847,333,878">
                        <area alt="옥천 향수100리길" title="" href="javascript:goLink(16);" shape="rect" coords="223,654,388,685">
                        <area alt="울산 태화강" title="" href="javascript:goLink(17);" shape="rect" coords="696,796,807,828">
                        <area alt="서울 한강 잠실지구" title="" href="javascript:goLink(18);" shape="rect" coords="342,399,509,429">
                        <area alt="세종호수공원" title="" href="javascript:goLink(19);" shape="rect" coords="197,609,318,640">
                        <area alt="파주DMZ" title="" href="javascript:goLink(20);" shape="rect" coords="171,323,272,353">
                        <area alt="인천 아라뱃길" title="" href="javascript:goLink(21);" shape="rect" coords="128,436,255,469">
                        <area alt="시흥 그린웨이" title="" href="javascript:goLink(22);" shape="rect" coords="226,477,353,509">
                        <area alt="경주 역사탐방자전거길" title="" href="javascript:goLink(23);" shape="rect" coords="677,712,874,743"> <!-- 리스트맵 -->
                        <area alt="춘천 공지천" title="" href="javascript:goLink(1);" shape="rect" coords="1,1408,940,1777">
                        <area alt="창녕 우포늪" title="" href="javascript:goLink(2);" shape="rect" coords="1,1908,940,2277">
                        <area alt="가평 호명산" title="" href="javascript:goLink(3);" shape="rect" coords="1,2409,939,2778">
                        <area alt="속초 영랑호" title="" href="javascript:goLink(4);" shape="rect" coords="1,2908,939,3277">
                        <area alt="부산 삼락생태공원" title="" href="javascript:goLink(5);" shape="rect" coords="2,3408,940,3777">
                        <area alt="인천 신시모도" title="" href="javascript:goLink(6);" shape="rect" coords="15,3997,455,4489">
                        <area alt="강릉 경포호 산소길" title="" href="javascript:goLink(7);" shape="rect" coords="485,3997,925,4489">
                        <area alt="군산 선유도" title="" href="javascript:goLink(8);" shape="rect" coords="15,4517,455,5009">
                        <area alt="부안 변산반도" title="" href="javascript:goLink(9);" shape="rect" coords="485,4515,925,5007">
                        <area alt="통영 삼칭이길" title="" href="javascript:goLink(10);" shape="rect" coords="15,5036,455,5528">
                        <area alt="제주 우도" title="" href="javascript:goLink(11);" shape="rect" coords="485,5038,925,5530">
                        <area alt="양평 남한강" title="" href="javascript:goLink(12);" shape="rect" coords="15,5739,455,6231">
                        <area alt="남양주 북한강" title="" href="javascript:goLink(13);" shape="rect" coords="485,5739,925,6231">
                        <area alt="화천 파로호 산소100리길" title="" href="javascript:goLink(14);" shape="rect" coords="15,6260,455,6752">
                        <area alt="곡성 섬진강" title="" href="javascript:goLink(15);" shape="rect" coords="485,6259,925,6751">
                        <area alt="옥천 향수100리길" title="" href="javascript:goLink(16);" shape="rect" coords="15,6780,455,7272">
                        <area alt="울산 태화강" title="" href="javascript:goLink(17);" shape="rect" coords="485,6780,925,7272">
                        <area alt="서울 한강 잠실지구" title="" href="javascript:goLink(18);" shape="rect" coords="14,7489,454,7981">
                        <area alt="세종 호수공원" title="" href="javascript:goLink(19);" shape="rect" coords="483,7490,924,7982">
                        <area alt="파주DMZ" title="" href="javascript:goLink(20);" shape="rect" coords="14,8010,454,8502">
                        <area alt="인천 아라뱃길" title="" href="javascript:goLink(21);" shape="rect" coords="483,8010,924,8502">
                        <area alt="시흥 그린웨이" title="" href="javascript:goLink(22);" shape="rect" coords="14,8549,454,9041">
                        <area alt="경주역사탐방 자전거길" title="" href="javascript:goLink(23);" shape="rect" coords="483,8549,924,9041">
                        <area alt="서울 따릉이" title="" href="javascript:goLink(24);" shape="rect" coords="15,9372,929,9574">
                        <area alt="경기 고양 피프틴" title="" href="javascript:goLink(25);" shape="rect" coords="15,9592,929,9794">
                        <area alt="대전 타슈" title="" href="javascript:goLink(26);" shape="rect" coords="15,9812,929,10014">
                        <area alt="세종 어울링" title="" href="javascript:goLink(27);" shape="rect" coords="14,10032,928,10234">
                      </map>
                    </div>
                  </div>
                  <script>
                    function goLink(no) {
                      var i = no;
                      switch (i) {
                        case 1:
                          location.href = 'https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=a14084d4-e9da-4be4-b17f-faa0077bdc3d';
                          break; /*춘천 공지천*/
                        case 2:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?pageNum=&crs_idx=T_CRS_MNG0000003357&brd_div=DNBW', '_blank');
                          break; /*창녕 우포늪*/
                        case 3:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?pageNum=&crs_idx=T_CRS_MNG0000004935&brd_div=DNBW', '_blank');
                          break; /*가평 호명산*/
                        case 4:
                          location.href = 'https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=876c8f68-208f-4c0a-ab5a-77e37f21ad98';
                          break; /*속초 영랑호*/
                        case 5:
                          location.href = 'https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3cce5d2d-5bc6-46d4-ad77-a36c6288451f';
                          break; /*부산 삼락생태공원*/
                        case 6:
                          location.href = 'https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b0a732a7-bbee-464f-be69-fafa201a07cd';
                          break; /*인천 신시모도*/
                        case 7:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?crs_idx=T_CRS_MNG0000002596&brd_div=DNBW', '_blank');
                          break; /*강릉 경포호 산소길*/
                        case 8:
                          location.href = 'https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=bd7f2b9d-82d5-4457-b560-ce0216da591c';
                          break; /*군산 선유도*/
                        case 9:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?pageNum=&crs_idx=T_CRS_MNG0000003349&brd_div=DNBW', '_blank');
                          break; /*부안 변산반도*/
                        case 10:
                          location.href = 'https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=829aace1-0b6f-4a20-a043-7f4d804aec34';
                          break; /*통영 삼칭이길*/
                        case 11:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?crs_idx=T_CRS_MNG0000004631&brd_div=DNBW', '_blank');
                          break; /*제주 우도*/
                        case 12:
                          location.href = 'https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=b75a4dff-68c3-4099-afae-eb3fd07008dd';
                          break; /*양평 남한강*/
                        case 13:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?crs_idx=T_CRS_MNG0000004934&brd_div=DNBW', '_blank');
                          break; /*남양주 북한강*/
                        case 14:
                          location.href = 'https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=1e4f0ef5-b352-4604-b1b8-01b0ec39e011';
                          break; /*화천 파로호 산소100리길*/
                        case 16:
                          location.href = 'https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=7ea7bc42-72c0-4e8f-abf4-c584a52053da ';
                          break; /*옥천 향수100리길*/
                        case 15:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?pageNum=&crs_idx=T_CRS_MNG0000004947&brd_div=DNBW', '_blank');
                          break; /*곡성 섬진강*/
                        case 17:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?crs_idx=T_CRS_MNG0000004995&brd_div=DNBW', '_blank');
                          break; /*울산 태화강*/
                        case 18:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?pageNum=&crs_idx=T_CRS_MNG0000002603&brd_div=DNBW', '_blank');
                          break; /*서울 한강 잠실지구*/
                        case 19:
                          location.href = 'https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=d25bea6d-fce9-4dea-b98c-76b70932ec01';
                          break; /*세종 호수공원*/
                        case 20:
                          location.href = 'https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=97fc93d4-e259-4a38-bdb1-45bfcb8691ba';
                          break; /*파주 DMZ*/
                        case 21:
                          location.href = 'https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=57d81233-696d-44a8-a751-915ee2fc580d';
                          break; /*인천 아라뱃길*/
                        case 22:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?pageNum=&crs_idx=T_CRS_MNG0000003334&brd_div=DNBW', '_blank');
                          break; /*시흥 그린웨이*/
                        case 23:
                          window.open('https://www.durunubi.kr/5-2-1-1-cycle-mobility-view-detail.do?pageNum=&crs_idx=T_CRS_MNG0000004955&brd_div=DNBW', '_blank');
                          break; /*경주역사탐방 자전거길*/
                        case 24:
                          window.open('https://www.bikeseoul.com/main.do', '_blank');
                          break; /*서울 따릉이*/
                        case 25:
                          window.open('https://www.fifteenlife.com/main/index.jsp', '_blank');
                          break; /*경기 고양 피프틴*/
                        case 26:
                          window.open('https://www.tashu.or.kr/mainPageAction.do?process=mainPage', '_blank');
                          break; /*대전 타슈*/
                        case 27:
                          window.open('https://www.sejongbike.kr/introduceAction.do?process=howtouse&menu=12', '_blank');
                          break; /*세종 어울링*/
                      }
                    }
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
