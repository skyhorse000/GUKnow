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
          <div style="display:none;"><img src="/resources/images/etc/app_ico.png" class="ico" alt=""></div>
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">30</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">63</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">26,224</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="/list/rem_list.do"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>[여름특집] 서핑에 반할 지도</h2>
            <div class="area_address">
              <span class="address">전국 </span>
              <span id="modi_date">수정일 : 2019.12.02</span>
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

            <div style="display:none;"><img src="/resources/images/etc/app_ico.png" class="ico" alt=""></div>
            <!-- 1108 추가 -->
            <!-- 기사 섹션 네비게이션 -->
            <div class="detail_nav" style="display:none;">
              <ul class="detail_nav_menu">
                <li><a href="#titCont"><img src="../resources/images/sub/ico_detail_nav01.png" class="ico" alt=""><span class="tit">본문내용</span></a></li>
                <li><a href="#titTrableInfo"><img src="../resources/images/sub/ico_detail_nav02.png" class="ico" alt=""><span class="tit">여행정보</span></a></li>
                <li style="display:none;" id="vtitMoveInfo"><a href="#titMoveInfo"><img src="../resources/images/sub/ico_detail_nav03.png" class="ico" alt=""><span class="tit">이동정보</span></a></li>
                <li style="display:none;" id="vtitFoodAcc"><a href="#titFoodAcc"><img src="../resources/images/sub/ico_detail_nav04.png" class="ico" alt=""><span class="tit">음식/숙박정보</span></a></li>
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
                  .mo_contents {
                    display: none;
                  }

                  .PC_contents {
                    display: block;
                  }

                  .pop-layer {
                    display: none;
                    position: absolute;
                    width: 700px;
                    height: 700px;
                    z-index: 10;
                    /*background: url('https://support.visitkorea.or.kr/img/call?cmd=VIEW&id=2445b81e-d1c2-445f-a7ee-8f718227f70e&mode=raw') no-repeat;*/
                    background-color: #ffd4de;
                  }

                  .dim-layer {
                    display: none;
                    position: fixed;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    z-index: 100;
                  }

                  .dim-layer .dimBg {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background: #000;
                    opacity: .5;
                    filter: alpha(opacity=50);
                  }

                  .btn-r {
                    position: absolute;
                    z-index: 100;
                    margin-left: 670px;
                    cursor: pointer;
                  }

                  .sub_conbox {
                    width: 97%;
                    margin-left: auto;
                    margin-right: auto;
                    background-color: #fff;
                  }

                  .sub_top {
                    width: 95%;
                    margin-top: 20px;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                    border-bottom: 2px solid;
                  }

                  .spot_tit {
                    font-size: 20pt;
                    font-weight: 900;
                    letter-spacing: -3px;
                    text-align: left;
                  }

                  .spot_more {
                    position: relative;
                    font-size: 14pt;
                    font-weight: 400;
                    margin-left: 6px;
                    letter-spacing: -1pt;
                  }

                  .level {
                    position: relative;
                    float: right;
                    margin-top: -30px;
                    margin-right: 20px;
                  }

                  .level_strong {
                    font-size: 14pt;
                    font-weight: 900;
                    color: #009494;
                  }

                  .strong_btn {
                    color: #ff6600;
                  }

                  .spot_img_tit {
                    text-align: center;
                    margin-top: 20px;
                  }

                  .spot_body {
                    width: 100%;
                    vertical-align: top;
                    position: relative;
                    height: 190px;
                  }

                  .spot_body img {
                    float: left;
                    margin-top: 20px;
                    width: 300px;
                    height: 150px;
                    margin-left: 20px;
                  }

                  .spot_body p {
                    font-size: 13pt;
                    margin-left: 267px;
                    margin-left: 330px;
                    letter-spacing: -0.8pt:;
                    line-height: 1.3em;
                    margin-top: 20px;
                    position: absolute;
                    font-weight: 700;
                  }

                  .sub_bottom {
                    width: 95%;
                    clear: both;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .sub_bottom_tit {
                    width: 100%;
                  }

                  .sub_bottom_tit p {
                    width: 100%;
                    hight: 20px;
                    text-align: center;
                    vertical-align: middle;
                    color: #fff;
                    background-color: #333;
                  }

                  .sub_bottom_box {
                    text-align: center;
                    width: 100%;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .sub_bottom_left,
                  .sub_bottom_right {
                    width: 50%;
                    text-align: left;
                    float: left;
                    margin-top: 16px;
                    margin-left: 5px;
                  }

                  .sub_bottom_left {
                    position: relative;
                  }

                  .sub_bottom_right {
                    position: absolute;
                    left: 360px;
                  }

                  .hidden_spot {
                    width: 95%;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                    clear: both;
                    background-color: #fff;
                    height: auto;
                    min-height: 130px;
                  }

                  .hidden_spot img {
                    width: 55px;
                    height: 64px;
                    float: left;
                    position: relative;
                    margin-top: 10px;
                  }

                  .sub_bottom_spot_tit {
                    font-size: 14pt;
                    font-weight: 900;
                    position: absolute;
                    margin-top: -150px;
                  }

                  .sub_bottom_spot_body {
                    font-size: 12pt;
                    font-weight: 500;
                    margin-top: -120px;
                    letter-spacing: -0.3pt;
                    margin-left: 10px;
                    width: 95%;
                  }

                  .hidden_spot_cu {
                    text-align: left;
                    position: absolute;
                    margin-left: 80px;
                    margin-top: 15px;
                    font-size: 12pt;
                    letter-spacing: -0.4pt;
                    width: 70%;
                  }

                  .hidden_spot_tit {
                    width: 100%;
                    background-color: #333;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                    color: #fff;
                  }

                  .table_bg {
                    height: 145px;
                    border-top: 2px solid #333;
                    border-bottom: 2px solid #333;
                  }

                  /*PC 본화면 */
                  .pc_bg img {
                    width: 100%;
                  }

                  .pc_bg {
                    width: 100%;
                  }

                  .movie {
                    width: 100%;
                    position: absolute;
                    top: 450px;
                    margin-left: 6px;
                  }

                  .movie_1 {
                    width: 290px;
                    height: 165px;
                    float: left;
                    margin-right: 1%;
                    margin-left: 1%;
                  }

                  /*button 영역 */
                  .beachspot {
                    position: absolute;
                    /*border: 1px solid red; */
                    width: 200px;
                    height: 35px;
                  }

                  .spot1 {
                    top: 818px;
                    right: 134px;
                  }

                  /*봉수대 해변 */
                  .spot2 {
                    top: 858px;
                    right: 100px;
                  }

                  /*낙산 해변 */
                  .spot3 {
                    top: 898px;
                    right: 100px;
                  }

                  /*죽도 해변 */
                  .spot4 {
                    top: 946px;
                    right: 60px;
                  }

                  /*경포 해변 */
                  .spot5 {
                    top: 987px;
                    right: 60px;
                  }

                  /*금진 해변 */
                  .spot6 {
                    top: 884px;
                    right: 403px;
                  }

                  /*서피 비치 */
                  .spot7 {
                    top: 923px;
                    right: 403px;
                  }

                  /*기사문 해변 */
                  .spot8 {
                    top: 1065px;
                    left: 115px;
                  }

                  /*만리포 해변 */
                  .spot9 {
                    top: 1406px;
                    right: 36px;
                  }

                  /*송정 해변 */
                  .spot10 {
                    top: 1446px;
                    right: 36px;
                  }

                  /*다대포 해변 */
                  .spot11 {
                    top: 1516px;
                    left: 275px;
                    width: 218px;
                  }

                  /*남열 해돋이 해변 */
                  .spot12 {
                    top: 1649px;
                    left: 328px;
                  }

                  /*이호테우 해변 */
                  .spot13 {
                    top: 1689px;
                    left: 328px;
                  }

                  /*중문 해변 */
                  .spot14 {
                    top: 963px;
                    left: 337px;
                  }

                  /*남애 해변 */
                  .spot15 {
                    top: 1729px;
                    left: 328px;
                  }

                  /*월정 해변 */
                  .notice {
                    text-align: right;
                    font-size: smaller;
                    position: absolute;
                    right: 10px;
                    margin-top: 140px;
                  }
                </style>
                <div class="PC_contents">
                  <div class="contWrap">
                    <!--배경 이미지 -->
                    <div class="pc_bg"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0fc0a306-e6a7-417d-864e-e5768cbd0d31&amp;mode=raw"> </div> <!-- 배경 끝 -->
                    <div class="movie">
                      <div class="movie_1">
                        <!-- 동영상 -->
                        <div class="video_wrap"> <img alt="video dummy" src="/resources/images/temp/temp_video.jpg">
                          <div class="video_area">
                            <div id="youtube" style="height:100%;"> <iframe allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="1" frameborder="0" height="100%" id="24e37132-1034-44c2-a72b-59d633f931bf"
                                src="https://www.youtube.com/embed/Gx-lBIfWDu4?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=1" title="YouTube video player" width="100%"> </iframe> </div>
                          </div>
                        </div> <!-- 동영상 끝 -->
                      </div>
                      <div class="movie_1">
                        <!-- 동영상 -->
                        <div class="video_wrap"> <img alt="video dummy" src="/resources/images/temp/temp_video.jpg">
                          <div class="video_area">
                            <div id="youtube" style="height:100%;"> <iframe allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="1" frameborder="0" height="100%" id="4f81d0d1-31da-4d97-bcef-6536c3fcda9b"
                                src="https://www.youtube.com/embed/Ml5E4Caphlk?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=2" title="YouTube video player" width="100%"> </iframe> </div>
                          </div>
                        </div> <!-- 동영상 끝 -->
                      </div>
                      <div class="movie_1">
                        <!-- 동영상 -->
                        <div class="video_wrap"> <img alt="video dummy" src="/resources/images/temp/temp_video.jpg">
                          <div class="video_area">
                            <div id="youtube" style="height:100%;"> <iframe allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="1" frameborder="0" height="100%" id="40f01216-5c1b-43f4-af84-0f837b053279"
                                src="https://www.youtube.com/embed/fe43bpy1UEs?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=3" title="YouTube video player" width="100%"> </iframe> </div>
                          </div>
                        </div> <!-- 동영상 끝 -->
                      </div>
                    </div> <!-- movie 끝 -->
                    <!-- 버튼 영역 (해변 스폿) --> <button class="beachspot spot1" onclick="openLayer('layer1');" type="button"> </button> <button class="beachspot spot2" onclick="openLayer('layer2');" type="button"> </button> <button class="beachspot spot3"
                      onclick="openLayer('layer3');" type="button"> </button> <button class="beachspot spot4" onclick="openLayer('layer4');" type="button"> </button> <button class="beachspot spot5" onclick="openLayer('layer5');" type="button">
                    </button> <button class="beachspot spot6" onclick="openLayer('layer6');" type="button"> </button> <button class="beachspot spot7" onclick="openLayer('layer7');" type="button"> </button> <button class="beachspot spot8"
                      onclick="openLayer('layer8');" type="button"> </button> <button class="beachspot spot9" onclick="openLayer('layer9');" type="button"> </button> <button class="beachspot spot10" onclick="openLayer('layer10');" type="button">
                    </button> <button class="beachspot spot11" onclick="openLayer('layer11');" type="button"> </button> <button class="beachspot spot12" onclick="openLayer('layer12');" type="button"> </button> <button class="beachspot spot13"
                      onclick="openLayer('layer13');" type="button"> </button> <button class="beachspot spot14" onclick="openLayer('layer14');" type="button"> </button> <button class="beachspot spot15" onclick="openLayer('layer15');" type="button">
                    </button> <!-- 버튼 영역 끝(해변 스폿) -->
                  </div>
                  <!--콘텐츠 1 시작-->
                  <div id="wrapper">
                    <div class="pop-layer" id="layer1">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer1')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <!--닫기 버튼 끝 -->
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 고성 봉수대 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=6c50b2fd-264f-47cd-ab66-8b25e58cda8e"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=81e1d390-1cc4-49c2-b239-fa25bb4aaca5&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=7eaf166d-a1ad-4240-86b7-e764ffdb8494&amp;mode=raw">
                          <p> 양 방향으로 파도길이 이어지는 훌륭한 포인트. <br> 하지만 파도 사이즈가 커지면 조류를 동반하는 <br> 경우가 많아 초급자에게 주의가 필요하다. </p>
                        </div>
                        <div class="sub_bottom">
                          <div class="sub_bottom_tit">
                            <p> 강습정보 </p>
                          </div>
                          <div class="sub_bottom_box">
                            <table class="table_bg">
                              <tbody>
                                <tr>
                                  <td style="border-right:2px solid #333; width:50%"> </td>
                                  <td> </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="sub_bottom_left">
                              <div class="sub_bottom_spot_tit"> | 렛미서프 </div>
                              <div class="sub_bottom_spot_body"> - 주소 : 고성군 토성면 천진해변길 <br> - 홈페이지 : <a href="https://cafe.naver.com/letmesurf"> https://cafe.naver.com/letmesurf </a> </div>
                            </div>
                            <div class="sub_bottom_right">
                              <div class="sub_bottom_spot_tit"> </div>
                              <div class="sub_bottom_spot_body"> </div>
                            </div>
                          </div> <!-- sub_bottom_box 끝 -->
                        </div> <!-- sub_bottom_끝 -->
                        <div class="hidden_spot">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> <strong> 봉수대 오토캠핑장 </strong> <br> 깨끗한 해변 백사장과 얕은 수심으로 가족여행, 캠핑활동의 최적지 </p>
                        </div> <!-- hidden spot 끝 -->
                      </div> <!-- sub_conbox 끝-->
                    </div> <!-- 콘텐츠 1 끝 -->
                    <!-- 콘텐츠 2-->
                    <div class="pop-layer" id="layer2">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer2')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 양양 낙산 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f58b6922-b961-4464-a746-aba2e44b3ac0"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=53b9a264-4d09-4723-8e2c-2f8cf5a4a58a&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=7333e571-0bc4-4edc-bf55-be77439e32ee&amp;mode=raw">
                          <div class="notice"> 사진제공: 강원도 서핑협회 </div>
                          <p> 낙산사와 설악산이 가까이 있어서 주변 관광지와 함께 서핑을 즐길 수 있는 장점이 있으며 주위에 숙박 및 횟집 같은 맛집이 많아서 서핑 이후에 다양한 먹거리와 볼거리를 즐길 수 있다. </p>
                        </div>
                        <div class="sub_bottom">
                          <div class="sub_bottom_tit">
                            <p> 강습정보 </p>
                          </div>
                          <div class="sub_bottom_box">
                            <table class="table_bg">
                              <tbody>
                                <tr>
                                  <td style="border-right:2px solid #333; width:50%"> </td>
                                  <td> </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="sub_bottom_left">
                              <div class="sub_bottom_spot_tit"> | 양양서핑학교 </div>
                              <div class="sub_bottom_spot_body"> - 주소 : 강원 양양군 강현면 전진리 7-3 <br> - 홈페이지 : <a href="http://www.yangyangsurfingschool.com"> http://www.yangyangsurfingschool.com </a> </div>
                            </div>
                            <div class="sub_bottom_right">
                              <div class="sub_bottom_spot_tit"> </div>
                              <div class="sub_bottom_spot_body"> </div>
                            </div>
                          </div>
                        </div>
                        <div class="hidden_spot">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu" style="width:80%"> <strong> 양양서핑학교 : </strong> 카페 2층에서 명사십리 낙산 해변을 전망 가능, 더치커피와 라떼가 유명. <br> <strong> 주의사항: </strong> 동력수상레저와 무동력수상레저가 바다를 공유하는 곳이라 안전을 위해 서로의 구역 넘지 말아야 함 </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 2 끝 -->
                    <!-- 콘텐츠 3-->
                    <div class="pop-layer" id="layer3">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer3')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 양양 죽도 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=872ce342-8207-43e5-aa6b-1584ade516b8"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f2118ab3-d2a8-48ab-876b-4d362204ce50&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=7ffde6cc-c9a4-4e58-9e85-5f81f4a6d59a&amp;mode=raw">
                          <p> 죽도 인구 동산 해변으로 30여 개의 서프숍들이 줄지어 있으며 <br> 서퍼들이 많아 붐비는 해변이므로 안전사고에 주의를 요한다. </p>
                        </div>
                        <div class="sub_bottom">
                          <div class="sub_bottom_tit">
                            <p> 강습정보 </p>
                          </div>
                          <div class="sub_bottom_box">
                            <table class="table_bg">
                              <tbody>
                                <tr>
                                  <td style="border-right:2px solid #333; width:50%"> </td>
                                  <td> </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="sub_bottom_left">
                              <div class="sub_bottom_spot_tit"> | 낭만비치 </div>
                              <div class="sub_bottom_spot_body"> - 주소 : 양양군 현북면 잔교리 38선 휴게소 <br> - 홈페이지 : <a href="https://cafe.naver.com/arksurf"> https://cafe.naver.com/arksurf </a> </div>
                            </div>
                            <div class="sub_bottom_right">
                              <div class="sub_bottom_spot_tit"> </div>
                              <div class="sub_bottom_spot_body"> </div>
                            </div>
                          </div>
                        </div>
                        <div class="hidden_spot">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> 함께 가면 좋을 곳으로 죽도정 전망대, 죽도암이 유명하다. </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 3 끝 -->
                    <!-- 콘텐츠 4-->
                    <div class="pop-layer" id="layer4">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer4')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 강릉 경포 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=60ad68a9-2222-4558-96d7-7f0b44736aef"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=54d37c43-2758-45cb-bbe5-90a62af9eca1&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dd1a62ea-4812-4dc5-9f24-9ada7f8a121b&amp;mode=raw">
                          <p> 지리적 접근성이 좋으며 주변 관광지 시설도 <br> 두루 갖추고 있어 주말을 이용해 쾌적하게 즐길 수 있다. </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> 인생샷 명소로 불리는 도깨비촬영지와 아기자기한 카페들이 많이 있는 안목카페거리가 함께 가볼만 한 곳. </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 4 끝 -->
                    <!-- 콘텐츠 5-->
                    <div class="pop-layer" id="layer5">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer5')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 강릉 금진 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f95258c0-7b32-466c-a4ac-2f3e0e4b3e30"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0dea2ef8-d835-4dff-8268-e5071c041b48&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=cb534777-c8ce-49be-95b8-fec2a39675da&amp;mode=raw">
                          <p> 900미터 정도 길이의 해변을 가지고 있고 주변에 상가나 어촌 시설이 없어 비교적 맑은 바다를 자랑한다. </p>
                        </div>
                        <div class="sub_bottom">
                          <div class="sub_bottom_tit">
                            <p> 강습정보 </p>
                          </div>
                          <div class="sub_bottom_box">
                            <table class="table_bg">
                              <tbody>
                                <tr>
                                  <td style="border-right:2px solid #333; width:50%"> </td>
                                  <td> </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="sub_bottom_left">
                              <div class="sub_bottom_spot_tit"> | 서프홀릭 강릉점 </div>
                              <div class="sub_bottom_spot_body"> - 주소 : 강릉시 옥계면 헌화로275 <br> - 홈페이지 : <a href="https://surfholicgangneung.modoo.at/"> https://surfholicgangneung.modoo.at/ </a> </div>
                            </div>
                            <div class="sub_bottom_right">
                              <div class="sub_bottom_spot_tit"> </div>
                              <div class="sub_bottom_spot_body"> </div>
                            </div>
                          </div>
                        </div>
                        <div class="hidden_spot">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu" style="wdith:82%;"> <strong> 세컨포인트 : </strong> 서프홀릭 강릉점 바로 앞. 말랑거리는 파도와 낮은 수심으로 편안한 서핑이 가능. <br> <strong> 풍차포인트 : </strong> 금진해변의 포인트 중 가장 날카로운 컬을 자랑하고 A프레임의 적당한 파도가 만들어지는 스폿 </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 5 끝 -->
                    <!-- 콘텐츠 6-->
                    <div class="pop-layer" id="layer6">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer6')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 양양 서피 비치 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=05f647eb-db7f-4308-9b3c-2989254f8aba"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6be1ff1c-61a5-4d41-8e3f-8e0ae921eb9f&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ec9f17ec-7300-4cf1-a05a-acf0fdb05dd7&amp;mode=raw">
                          <p> 동호해변까지 총 6km에 달하는 대형 해변답게 모든 타이드와 모든 스웰에 반응하며 비교적 덜 붐비는 자연 그대로의 해변이다. </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> 일명 양리단길이라 불리는 핫플 모음 거리. 수제 맥주로 유명한 ‘싱글핀에일웍스’와 다양한 맥주와 보드카를 만날 수 있는 ‘알로하 웨이브’, 수제버거 맛집으로 유명한 ‘파머스 키친’ 등이 있다. <br> *현재 서피비치 내 숙박은 이용불가. 라운지와 서핑 이용가능 </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 6 끝 -->
                    <!-- 콘텐츠 7-->
                    <div class="pop-layer" id="layer7">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer7')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 양양 기사문 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=c2462f7c-9fce-4707-87e1-567a4425c968"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=efa5313f-e65c-4026-92a6-9a54358b3cf8&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=98b69233-4afe-46a4-9cf1-a42639106320&amp;mode=raw">
                          <div class="notice"> 사진제공: 강원도 서핑협회 </div>
                          <p> 서핑하는 구역 가까이 어업을 하는 어선 입출항이 있으니 서핑 시 주의해야 한다. </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> <strong> 38휴게소 : </strong> <br> 한국전쟁의 아픔이 깃들어 있는 곳으로 서핑하는 모습을 보며 우동이나, 닭강정 같은 간식을 즐 길 수 있다. 서퍼들 사이에 숨겨진 우동 맛집. <br> *모래 유실을 막기 위해 세워진 방사제에서 먼 바다 방향으로 늘 역파도가 있어, 어선의 입출항에 방해가 되지 않는다면 서핑을 하러 바다에 나갈 때
                            아주 편리함. <br> </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 7 끝 -->
                    <!-- 콘텐츠 8-->
                    <div class="pop-layer" id="layer8">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer8')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 태안 만리포 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f43e862a-2595-483f-976b-5364e97acd2b"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=36e07503-c8ca-495b-b33d-7f16e6d5113a&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a760934a-15e0-4026-979e-a96bc43c3dbc&amp;mode=raw">
                          <p> 해변 길이 2km로 모래가 곱고 소나무 숲이 울창한 포인트가 되며 입문자 및 초.중급까지 가능하다 </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> <strong> A 포인트(갯바위 포인트) : </strong> <br> 겨울철 만리포해변의 주요 포인트이며 서쪽 및 북서 스웰*에 파도가 좋다. 조수간만의 차이가 크고 조류가 심하기에 파도가 큰 날은 조심해야 한다. <br> *스웰 : 파도, 물결을 뜻하는 서퍼들의 용어 <br> <strong> B 포인트 : </strong> <br> 여름철 주요
                            포인트이며 남서 스웰을 받는 날 파도가 크고 좋으며 해수욕장이 개장하는 시즌(7, 8월)은 해수욕과의 안전사고에 신경써야 한다. <br> </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 8 끝 -->
                    <!-- 콘텐츠 9-->
                    <div class="pop-layer" id="layer9">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer9')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 부산 송정해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=b0136743-e02d-4f1b-bef6-cc1b63536489"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6c29975b-7655-4936-a903-2d4623bfc1a8&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a9f22d3b-4463-478a-a9b2-59beecb7029f&amp;mode=raw">
                          <p> 서핑을 시작하기에 알맞은 곳. <br> 무릎 정도의 파도가 잦고 허리 정도의 깊이에서 <br> 강습이 이뤄진다. </p>
                        </div>
                        <div class="sub_bottom">
                          <div class="sub_bottom_tit">
                            <p> 강습정보 </p>
                          </div>
                          <div class="sub_bottom_box">
                            <table class="table_bg">
                              <tbody>
                                <tr>
                                  <td style="border-right:2px solid #333; width:50%"> </td>
                                  <td> </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="sub_bottom_left">
                              <div class="sub_bottom_spot_tit"> | 서프홀릭 </div>
                              <div class="sub_bottom_spot_body"> - 주소 : 부산광역시 해운대구 송정해변로 50 엔젤리너스 1층 <br> - 문의 : 051-701-4851 <br> - 홈페이지 : https://surfholic.co.kr </div>
                            </div>
                            <div class="sub_bottom_right">
                              <div class="sub_bottom_spot_tit"> | 요서프 </div>
                              <div class="sub_bottom_spot_body"> - 주소 : 해운대구 송정중앙로 36번길 60 <br> - 홈페이지 : <a href="https://cafe.naver.com/busanyosurf"> https://surfschool.co.kr </a> </div>
                            </div>
                          </div>
                        </div>
                        <div class="hidden_spot">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> <strong> 죽도공원 포인트 : </strong> <br> 송정해변의 왼쪽에 있으며 다른 곳에 비해 파도가 작게 들어오는 편으로 파도가 큰 날 초보자들이 안전하게 서핑을 즐기기에 적당하다. <br> </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 9 끝 -->
                    <!-- 콘텐츠 10-->
                    <div class="pop-layer" id="layer10">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer10')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 부산 다대포 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=9ac39dd9-4dfe-4dc0-866e-b3a98fd581c7"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9e902969-aa66-486e-a168-69bfbc5e89f0&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=cc80f8f1-719c-40af-8c78-1e72428ff02e&amp;mode=raw">
                          <p> 강물과 바다가 만나는 포인트라 바다 중간쯤 수심이 갑자기 깊어지고 조류가 심해지므로 주의가 필요하다. </p>
                        </div>
                        <div class="sub_bottom">
                          <div class="sub_bottom_tit">
                            <p> 강습정보 </p>
                          </div>
                          <div class="sub_bottom_box">
                            <table class="table_bg">
                              <tbody>
                                <tr>
                                  <td style="border-right:2px solid #333; width:50%"> </td>
                                  <td> </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="sub_bottom_left">
                              <div class="sub_bottom_spot_tit"> | 웨이브시티 </div>
                              <div class="sub_bottom_spot_body"> - 주소 : 부산광역시 사하구 다대로 704 <br> - 홈페이지 : <a href="https://wavecity.co.kr/"> https://wavecity.co.kr/ </a> </div>
                            </div>
                            <div class="sub_bottom_right">
                              <div class="sub_bottom_spot_tit"> </div>
                              <div class="sub_bottom_spot_body"> </div>
                            </div>
                          </div>
                        </div>
                        <div class="hidden_spot">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu" style="width:81%;"> <strong> 미들 포인트 : </strong> <br> 얕은 수심, 적당한 파도로 다대포에서 가장 많은 서퍼들이 서핑을 하는 포인트. <br> 간조에는 파도가 빠르고 중간에서 만조로 가는 시간에 롱보드를 타기 좋은 컨디션이 나온다. </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 10 끝 -->
                    <!-- 콘텐츠 11-->
                    <div class="pop-layer" id="layer11">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer11')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 고흥 남열 해돋이 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=bee61105-1d21-40f7-a83c-f55440ac422d"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9e7defdb-e5fe-4c60-8d32-d2a2d4982f29&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bccd7a10-f58b-42a7-9060-329ba7f7e2ea&amp;mode=raw">
                          <p> 약 800m 길이의 해변에 수심의 편차가 심하지 않고 해변 앞쪽에는 섬이 없기 때문에 먼 대양의 너울들이 막힘 없이 해변까지 도착하여 파도가 거센 편이다. </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> 기암괴석과 깨끗한 바다로 이름난 나로도에 함께 가볼 만하고, 해변 주변을 아우르는 나로호 우주발사 전망대 인근 기암절벽의 풍경이 일품이다. </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 11 끝 -->
                    <!-- 콘텐츠 12-->
                    <div class="pop-layer" id="layer12">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer12')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 제주 이호테우 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=5ea8d513-cffc-4993-abad-197d736651da"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★★☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dc34eb04-df2a-4f92-bf50-7262565232a4&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c52819c1-2590-45e2-bcad-488c5a1c3d40&amp;mode=raw">
                          <p> 제주 특유의 관광환경이 잘 조성되어 있는 곳으로 서핑 스폿들이 두루 갖춰져 있다. 접근성이 좋아 비교적 서핑을 즐기기에 어렵지 않다. </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> 수많은 인증샷을 만들어 낸 일몰 명소, 목마 등대에 함께 가볼만하다. </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 12 끝 -->
                    <!-- 콘텐츠 13-->
                    <div class="pop-layer" id="layer13">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer13')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 제주 중문 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f0488695-d42b-4b5f-9772-73ad6865a5e8"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=42108e5f-c803-45fa-9ba4-f5816991a7c7&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=690d0300-518f-4d27-911a-f37574c4ae8d&amp;mode=raw">
                          <p> 주로 5~10월 사이 가장 좋은 파도가 들어오며 대한민국의 서핑 스폿 중 가장 높은 수온 덕분에 이국적인 분위기에서 서핑을 할 수 있다 </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> <strong> 비치포인트 : </strong> <br> 크게 세 군데에서 브레이크가 생기며 매일 스웰의 미세한 방향에 따라 파도의 방향이 조금씩 달라진다. 대부분의 바닥이 모래라서 초보자들에게 적합하며 간조 전후로 서핑하기 좋다. <br> <strong> 듀크 포인트 : </strong> <br> 모든 바닥이 뾰족한 현무암 리프이며 브레이크가 빨라
                            초보자들에겐 추천하지 않는다. <br> 로컬 서퍼들에게 문의 후 입수 추천! </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 13 끝 -->
                    <!-- 콘텐츠 14-->
                    <div class="pop-layer" id="layer14">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer14')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 양양 남애 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=b2f4d2a8-504a-4559-83eb-1244a09cd655"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b0897a99-fa44-4f7d-81ff-f7497b2465c8&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0b29c545-4520-4512-b5c2-8ed4b7d15693&amp;mode=raw">
                          <div class="notice"> 사진제공: 강원도 서핑협회 </div>
                          <p> 여름에는 입문자가 강습받기 좋은 사이즈의 파도가 들어오고 가을부터 겨울,봄에는 상급자들이 탈 수 있는 그림같은 파도가 들어오는 곳이다. </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> 남애항 회센터 : 3대 미항을 바라보면서 해산물을 즐길 수 있다. 신선한 해산물과 자연산 회를 즐긴 후 남애항 전망대에 올라 해변 전체를 감상할 수 있는 바다뷰 맛집. </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 14 끝 -->
                    <!-- 콘텐츠 15-->
                    <div class="pop-layer" id="layer15">
                      <!-- 닫기 버튼 -->
                      <div class="btn-r"> <a onclick="closeLayer('layer15')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                      <div class="sub_conbox">
                        <div class="sub_top">
                          <p class="spot_tit"> 제주 월정리 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=6c953741-c857-48ad-a423-75ad8c98fc91"> <span class="spot_more"> 더 많은 내용 보기 <span class="strong_btn"> ▶ </span> </span> </a>
                          </p>
                        </div>
                        <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                        <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d895ed2b-68cc-4777-a597-cef758566271&amp;mode=raw"> </div>
                        <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=cd7ea3fd-3266-458b-88b4-87cdfe6c3f40&amp;mode=raw">
                          <p> 해변을 보았을 때 중앙에 리프 지역이 길게 일직선으로 중앙을 갈라놓고 있으므로 물이 많이 빠지는 간조에는 주의해야 한다. </p>
                        </div>
                        <div class="hidden_spot" style="height:300px;">
                          <div class="hidden_spot_tit"> Hidden Spot </div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                          <p class="hidden_spot_cu"> <strong> 오빠밥죠 </strong> “혼밥하기 좋은 덮밥 맛집” <br> 주소 : 제주시 구좌읍 해맞이해안로 474 <br> 연락처 : 010-3156-9418 <br> <strong> 배롱개 국밥 </strong> “살짝 매콤한 국밥이 인기” <br> 주소 : 제주시 구좌읍 해맞이해안로 434 <br> 연락처 : 064-784-0030
                          </p>
                        </div>
                      </div>
                    </div> <!-- 콘텐츠 15 끝 -->
                  </div>
                </div>
                <style>
                  #deemed {
                    width: 100%;
                    height: 100%;
                    position: absolute;
                    top: 0;
                    left: 0;
                    filter: Alpha(opacity=50);
                    opacity: 0.5;
                    background: #000;
                    z-index: 1;
                  }

                  #pop-layer .close {
                    position: absolute;
                    bottom: 5px;
                    right: 5px;
                  }
                </style>
                <script>
                  function dEI(elementID) {
                    return document.getElementById(elementID);
                  } /*레이어 팝엽 열기*/
                  function openLayer(IdName) {
                    var pop = dEI(IdName);
                    pop.style.display = "block";
                    $(".pop-layer").css({
                      "top": (((($(window).height() - $(".pop-layer").height()) / 2 + $(window).scrollTop()) - $(".tit_cont").height()) - 100) + "px",
                      "left": ((940 - $(".pop-layer").width()) / 2 + $(window).scrollLeft()) + "px" /*팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정*/
                    });
                    var wrap = dEI("wrapper");
                    var reservation = document.createElement("div");
                    reservation.setAttribute("id", "deemed");
                    wrap.appendChild(reservation);
                  } /*레이어 팝엽 닫기*/
                  function closeLayer(IdName) {
                    var pop = dEI(IdName);
                    pop.style.display = "none";
                    var clearEl = parent.dEI("deemed");
                    var momEl = parent.dEI("wrapper");
                    momEl.removeChild(clearEl);
                  }
                  $("#deemed").click(function() {
                    $("#deemed").fadeOut();
                    return false;
                  });
                </script>
              </div>
              <div class="txt_p">
                <style>
                  @media screen and (max-width: 1023px) {
                    .PC_contents {
                      display: none;
                    }

                    .mo_contents {
                      display: block;
                      width: 100%;
                      height: auto;
                    }

                    .pop-layer {
                      display: block;
                      width: 100%;
                      height: auto;
                      position: static;
                      padding: 1% 0 1% 0;
                    }

                    .m_header {
                      width: 100%
                    }

                    .m_movieWrap {
                      width: 100%;
                      background-color: #caf1ff;
                      padding-top: 5%;
                      padding-bottom: 10%;
                    }

                    .m_movie {
                      width: 95%;
                      text-align: center;
                      margin-left: auto;
                      margin-right: auto;
                      position: relative;
                    }

                    .mo_contents2 .pop-layer {
                      background-color: #fff !important;
                    }

                    .mo_contents3 .pop-layer {
                      background-color: #fff !important;
                    }

                    .mo_contents4 .pop-layer {
                      background-color: #fff !important;
                    }

                    .mo_contents2 {
                      background-color: #fff !important;
                    }

                    .mo_contents3 {
                      background-color: #fff !important;
                    }

                    .mo_contents4 {
                      background-color: #fff !important;
                    }

                    .swiper-wrapper {
                      padding-bottom: 1%;
                    }

                    .m_level1 {
                      width: 100%;
                      height: auto;
                    }

                    .m_cover {
                      width: 100%;
                      height: auto;
                    }

                    .m_spot {
                      width: 100%;
                      height: auto;
                    }

                    .btn-r {
                      display: none;
                    }

                    .spot_tit {
                      font-size: large;
                      letter-spacing: -1px;
                    }

                    .level {
                      margin-right: 1%;
                      font-size: small;
                    }

                    .level_strong {
                      font-size: small;
                    }

                    .spot_img_tit img {
                      width: 100%;
                    }

                    .spot_body img {
                      margin-top: 0%;
                      width: 70%;
                      height: auto;
                      text-align: center;
                      margin-left: auto;
                      margin-right: auto;
                      position: relative;
                      float: none;
                    }

                    .spot_img_tit {
                      padding: 3% 0 3% 0;
                      margin-top: 0px;
                    }

                    .spot_body p {
                      font-size: smaller;
                      margin-left: auto;
                      letter-spacing: -0.8pt:;
                      margin-right: auto;
                      line-height: 1.3em;
                      position: relative;
                      font-weight: 700;
                      text-align: left;
                      width: 90%;
                      padding: 3% 0 3% 0;
                    }

                    .spot_body {
                      text-align: center;
                      height: auto;
                    }

                    .table_bg {
                      display: none;
                    }

                    .sub_bottom_left,
                    .sub_bottom_right {
                      width: 100%;
                      text-align: left;
                      float: none;
                      margin-top: 0;
                      margin-left: 0;
                    }

                    .sub_bottom_spot_tit {
                      font-size: small;
                      font-weight: bold;
                      position: relative;
                      margin-top: 0px;
                    }

                    .sub_bottom_spot_body {
                      font-size: smaller;
                      margin-top: 0px;
                      letter-spacing: -0.3pt;
                      margin-left: 10px;
                      width: 100%;
                    }

                    .hidden_spot_tit {
                      font-size: smaller;
                    }

                    .hidden_spot img {
                      width: 10%;
                      height: auto;
                      float: left;
                      position: absolute;
                      margin-top: 3%;
                      left: 1%;
                    }

                    .sub_bottom_tit {
                      font-size: smaller;
                      padding: 3% 0 3% 0;
                    }

                    .sub_bottom {
                      padding: 3% 0 3% 0;
                    }

                    .hidden_spot_cu {
                      text-align: left;
                      position: absolute;
                      margin-left: 8%;
                      font-size: smaller;
                      letter-spacing: -0.4pt;
                      width: 85%;
                      margin-top: 0%;
                      padding: 3% 0 3% 0;
                    }

                    .mo_contents .swiper-slide {
                      width: 90%;
                    }

                    .m_movie .swiper-slide {
                      width: 100%;
                    }

                    .m_movie .swiper-wrapper {
                      padding-bottom: 10%;
                    }

                    .spot_more {
                      font-size: x-small;
                    }

                    .swiper-pagination-bullet-active {
                      opacity: 1;
                      background: #000;
                    }

                    .m_title,
                    .m_header {
                      margin: 2% 0 2% 0;
                    }

                    .notice {
                      margin-top: 0px;
                    }
                  }

                  .m_header img {
                    width: 100%;
                  }

                  .m_title img {
                    width: 100%;
                  }

                  .m_cover img {
                    width: 100%;
                  }
                </style>
                <div class="mo_contents">
                  <div class="m_header" style="margin-bottom:0px;"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9d9f7668-d499-4024-b161-2d0f19c1b0b3&amp;mode=raw"> </div>
                  <!--m_header 끝-->
                  <div class="m_movieWrap">
                    <div class="m_movie">
                      <div class="swiper-container swiper-container-horizontal mo_contents1 swiper-container-initialized">
                        <ul class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                          <li class="swiper-slide">
                            <div class="video_wrap"> <img src="/resources/images/temp/temp_video.jpg" alt="video dummy">
                              <div class="video_area">
                                <div id="youtube" style="height:100%;"><iframe id="24e37132-1034-44c2-a72b-59d633f931bf" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                    title="YouTube video player" width="100%" height="100%"
                                    src="https://www.youtube.com/embed/Gx-lBIfWDu4?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=1"></iframe></div>
                              </div>
                            </div>
                          </li>
                          <li class="swiper-slide">
                            <div class="video_wrap"> <img src="/resources/images/temp/temp_video.jpg" alt="video dummy">
                              <div class="video_area">
                                <div id="youtube" style="height:100%;"><iframe id="4f81d0d1-31da-4d97-bcef-6536c3fcda9b" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                    title="YouTube video player" width="100%" height="100%"
                                    src="https://www.youtube.com/embed/Ml5E4Caphlk?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=2"></iframe></div>
                              </div>
                            </div>
                          </li>
                          <li class="swiper-slide">
                            <div class="video_wrap"> <img src="/resources/images/temp/temp_video.jpg" alt="video dummy">
                              <div class="video_area">
                                <div id="youtube" style="height:100%;"><iframe id="40f01216-5c1b-43f4-af84-0f837b053279" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                    title="YouTube video player" width="100%" height="100%"
                                    src="https://www.youtube.com/embed/fe43bpy1UEs?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=3"></iframe></div>
                              </div>
                            </div>
                          </li>
                        </ul> <!-- 좌/우 버튼 -->
                        <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                        <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div> <!-- 좌/우 버튼 끝-->
                        <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div> <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                      </div>
                    </div>
                    <!--m_movie 끝-->
                  </div>
                  <!--m_movieWrap 끝-->
                  <div class="m_level1">
                    <div class="m_title"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=301a98e4-fbf3-4be1-8e5a-889abf901e1a&amp;mode=raw"> </div>
                    <div class="swiper-container swiper-container-horizontal mo_contents2 swiper-container-initialized">
                      <ul class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                        <li class="swiper-slide">
                          <div class="m_cover"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=1b174567-12a8-4bab-9f3b-38e78cec7c5e&amp;mode=raw"> </div>
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 5 시작 -->
                          <div class="pop-layer" id="layer5">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer5')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 강릉 금진 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f95258c0-7b32-466c-a4ac-2f3e0e4b3e30"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0dea2ef8-d835-4dff-8268-e5071c041b48&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=cb534777-c8ce-49be-95b8-fec2a39675da&amp;mode=raw">
                                <p> 900미터 정도 길이의 해변을 가지고 있고 주변에 상가나 어촌 시설이 없어 비교적 맑은 바다를 자랑한다. </p>
                              </div>
                              <div class="sub_bottom">
                                <div class="sub_bottom_tit">
                                  <p> 강습정보 </p>
                                </div>
                                <div class="sub_bottom_box">
                                  <table class="table_bg">
                                    <tbody>
                                      <tr>
                                        <td style="border-right:2px solid #333; width:50%"></td>
                                        <td></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                  <div class="sub_bottom_left">
                                    <div class="sub_bottom_spot_tit"> | 서프홀릭 강릉점 </div>
                                    <div class="sub_bottom_spot_body"> - 주소 : 강릉시 옥계면 헌화로275<br> - 홈페이지 : <a href="https://surfholicgangneung.modoo.at/">https://surfholicgangneung.modoo.at/</a> </div>
                                  </div>
                                  <div class="sub_bottom_right">
                                    <div class="sub_bottom_spot_tit"> </div>
                                    <div class="sub_bottom_spot_body"> </div>
                                  </div>
                                </div>
                              </div>
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu" style="wdith:82%;"> <strong>세컨포인트 : </strong> 서프홀릭 강릉점 바로 앞. 말랑거리는 파도와 낮은 수심으로 편안한 서핑이 가능. <br> <strong>풍차포인트 : </strong> 금진해변의 포인트 중 가장 날카로운 컬을 자랑하고 A프레임의 적당한 파도가 만들어지는 스폿 </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 5 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 10-->
                          <div class="pop-layer" id="layer10">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer10')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 부산 다대포 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=36f54304-e9a8-4615-9226-eb749bf6ce75"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a>
                                </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9e902969-aa66-486e-a168-69bfbc5e89f0&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=cc80f8f1-719c-40af-8c78-1e72428ff02e&amp;mode=raw">
                                <p> 강물과 바다가 만나는 포인트라 바다 중간쯤 수심이 갑자기 깊어지고 조류가 심해지므로 주의가 필요하다. </p>
                              </div>
                              <div class="sub_bottom">
                                <div class="sub_bottom_tit">
                                  <p> 강습정보 </p>
                                </div>
                                <div class="sub_bottom_box">
                                  <table class="table_bg">
                                    <tbody>
                                      <tr>
                                        <td style="border-right:2px solid #333; width:50%"></td>
                                        <td></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                  <div class="sub_bottom_left">
                                    <div class="sub_bottom_spot_tit"> | 웨이브시티 </div>
                                    <div class="sub_bottom_spot_body"> - 주소 : 부산광역시 사하구 다대로 704 <br> - 홈페이지 : <a href="https://wavecity.co.kr/">https://wavecity.co.kr/</a> </div>
                                  </div>
                                  <div class="sub_bottom_right">
                                    <div class="sub_bottom_spot_tit"> </div>
                                    <div class="sub_bottom_spot_body"> </div>
                                  </div>
                                </div>
                              </div>
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu" style="width:81%;"> <strong>미들 포인트 :</strong><br> 얕은 수심, 적당한 파도로 다대포에서 가장 많은 서퍼들이 서핑을 하는 포인트.<br> 간조에는 파도가 빠르고 중간에서 만조로 가는 시간에 롱보드를 타기 좋은 컨디션이 나온다. </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 10 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 8-->
                          <div class="pop-layer" id="layer8">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer8')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 태안 만리포 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f43e862a-2595-483f-976b-5364e97acd2b"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a>
                                </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=36e07503-c8ca-495b-b33d-7f16e6d5113a&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a760934a-15e0-4026-979e-a96bc43c3dbc&amp;mode=raw">
                                <p> 해변 길이 2km로 모래가 곱고 소나무 숲이 울창한 포인트가 되며 입문자 및 초.중급까지 가능하다 </p>
                              </div>
                              <!--										<div class="sub_bottom">											<div class="sub_bottom_tit">												<p>													강습정보												</p>											</div>											<div class="sub_bottom_box">												<table class="table_bg">													<tr>														<td style="border-right:2px solid #333; width:50%"></td>														<td></td>													</tr>												</table>												<div class="sub_bottom_left">													<div class="sub_bottom_spot_tit">														| 서프홀릭													</div>													<div class="sub_bottom_spot_body">														- 주소 : 부산광역시 해운대구 송정해변로 50 엔젤리너스 1층														<br>														- 문의 : 051-701-4851														<br>														- 홈페이지 : https://surfholic.co.kr													</div>												</div>												<div class="sub_bottom_right">													<div class="sub_bottom_spot_tit">														| 송정서핑학교													</div>													<div class="sub_bottom_spot_body">														- 주소 : 부산광역시 해운대구 송정해변로 54														<br>														- 문의 : 051-704-0664														<br>														- 홈페이지 : https://surfschool.co.kr													</div>												</div>											</div>										</div>										-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> <strong>A 포인트(갯바위 포인트) : </strong><br> 겨울철 만리포해변의 주요 포인트이며 서쪽 및 북서 스웰*에 파도가 좋다. 조수간만의 차이가 크고 조류가 심하기에 파도가 큰 날은 조심해야 한다. <br> *스웰 : 파도, 물결을 뜻하는 서퍼들의 용어 <strong>B 포인트 </strong><br> 여름철 주요 포인트이며
                                  남서 스웰을 받는 날 파도가 크고 좋으며 해수욕장이 개장하는 시즌(7, 8월)은 해수욕과의 안전사고에 신경써야 한다. <br> </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 8 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 6-->
                          <div class="pop-layer" id="layer6">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer6')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 양양 서피 비치 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=05f647eb-db7f-4308-9b3c-2989254f8aba"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6be1ff1c-61a5-4d41-8e3f-8e0ae921eb9f&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ec9f17ec-7300-4cf1-a05a-acf0fdb05dd7&amp;mode=raw">
                                <p> 동호해변까지 총 6km에 달하는 대형 해변답게 모든 타이드와 모든 스웰에 반응하며 비교적 덜 붐비는 자연 그대로의 해변이다. </p>
                              </div>
                              <!--										<div class="sub_bottom">											<div class="sub_bottom_tit">												<p>													강습정보												</p>											</div>											<div class="sub_bottom_box">												<table class="table_bg">													<tr>														<td style="border-right:2px solid #333; width:50%"></td>														<td></td>													</tr>												</table>												<div class="sub_bottom_left">													<div class="sub_bottom_spot_tit">														| 서프홀릭													</div>													<div class="sub_bottom_spot_body">														- 주소 : 부산광역시 해운대구 송정해변로 50 엔젤리너스 1층														<br>														- 문의 : 051-701-4851														<br>														- 홈페이지 : https://surfholic.co.kr													</div>												</div>												<div class="sub_bottom_right">													<div class="sub_bottom_spot_tit">														| 송정서핑학교													</div>													<div class="sub_bottom_spot_body">														- 주소 : 부산광역시 해운대구 송정해변로 54														<br>														- 문의 : 051-704-0664														<br>														- 홈페이지 : https://surfschool.co.kr													</div>												</div>											</div>										</div>										-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> 일명 양리단길이라 불리는 핫플 모음 거리. 수제 맥주로 유명한 ‘싱글핀에일웍스’와 다양한 맥주와 보드카를 만날 수 있는 ‘알로하 웨이브’, 수제버거 맛집으로 유명한 ‘파머스 키친’ 등이 있다.<br> *현재 서피비치 내 숙박은 이용불가. 라운지와 서핑 이용가능 </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 6 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 7-->
                          <div class="pop-layer" id="layer7">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer7')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 양양 기사문 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=c2462f7c-9fce-4707-87e1-567a4425c968"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a>
                                </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★☆☆☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=efa5313f-e65c-4026-92a6-9a54358b3cf8&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=98b69233-4afe-46a4-9cf1-a42639106320&amp;mode=raw">
                                <div class="notice">사진제공: 강원도 서핑협회 </div>
                                <p> 서핑하는 구역 가까이 어업을 하는 어선 입출항이 있으니 서핑 시 주의해야 한다. </p>
                              </div>
                              <!--											<div class="sub_bottom">												<div class="sub_bottom_tit">													<p>														강습정보													</p>												</div>												<div class="sub_bottom_box">													<table class="table_bg">														<tr>															<td style="border-right:2px solid #333; width:50%"></td>															<td></td>														</tr>													</table>													<div class="sub_bottom_left">														<div class="sub_bottom_spot_tit">															| 서프홀릭														</div>														<div class="sub_bottom_spot_body">															- 주소 : 부산광역시 해운대구 송정해변로 50 엔젤리너스 1층															<br>															- 문의 : 051-701-4851															<br>															- 홈페이지 : https://surfholic.co.kr														</div>													</div>													<div class="sub_bottom_right">														<div class="sub_bottom_spot_tit">															| 송정서핑학교														</div>														<div class="sub_bottom_spot_body">															- 주소 : 부산광역시 해운대구 송정해변로 54															<br>															- 문의 : 051-704-0664															<br>															- 홈페이지 : https://surfschool.co.kr														</div>													</div>												</div>											</div>											-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> <strong>38휴게소 :</strong><br> 한국전쟁의 아픔이 깃들어 있는 곳으로 서핑하는 모습을 보며 우동이나, 닭강정 같은 간식을 즐 길 수 있다. 서퍼들 사이에 숨겨진 우동 맛집. <br> *모래 유실을 막기 위해 세워진 방사제에서 먼 바다 방향으로 늘 역파도가 있어, 어선의 입출항에 방해가 되지 않는다면 서핑을 하러 바다에
                                  나갈 때 아주 편리함.<br> </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 7 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <div class="m_cover"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=df2f26ef-b7b8-4567-ab3c-9f2757f669ff&amp;mode=raw"> </div>
                        </li>
                      </ul>
                      <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div> <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                    <div class="m_header"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=253dae8e-fe9d-4fd9-bec0-deeb1c54474d&amp;mode=raw"> </div>
                    <!--m_header 끝-->
                    <div class="swiper-container swiper-container-horizontal mo_contents3 swiper-container-initialized">
                      <ul class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                        <li class="swiper-slide">
                          <div class="m_cover"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=2250e60d-eeaf-4b71-976d-6bd56511c9f7&amp;mode=raw"> </div>
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 3-->
                          <div class="pop-layer" id="layer3">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer3')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 양양 죽도 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=872ce342-8207-43e5-aa6b-1584ade516b8"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f2118ab3-d2a8-48ab-876b-4d362204ce50&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=7ffde6cc-c9a4-4e58-9e85-5f81f4a6d59a&amp;mode=raw">
                                <p> 죽도 인구 동산 해변으로 30여 개의 서프숍들이 줄지어 있으며 <br>서퍼들이 많아 붐비는 해변이므로 안전사고에 주의를 요한다. </p>
                              </div>
                              <div class="sub_bottom">
                                <div class="sub_bottom_tit">
                                  <p> 강습정보 </p>
                                </div>
                                <div class="sub_bottom_box">
                                  <table class="table_bg">
                                    <tbody>
                                      <tr>
                                        <td style="border-right:2px solid #333; width:50%"></td>
                                        <td></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                  <div class="sub_bottom_left">
                                    <div class="sub_bottom_spot_tit"> | 낭만비치 </div>
                                    <div class="sub_bottom_spot_body"> - 주소 : 양양군 현북면 잔교리 38선 휴게소 <br> - 홈페이지 : <a href="https://cafe.naver.com/arksurf">https://cafe.naver.com/arksurf</a> </div>
                                  </div>
                                  <div class="sub_bottom_right">
                                    <div class="sub_bottom_spot_tit"> </div>
                                    <div class="sub_bottom_spot_body"> </div>
                                  </div>
                                </div>
                              </div>
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> 함께 가면 좋을 곳으로 죽도정 전망대, 죽도암이 유명하다. </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 3 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 11-->
                          <div class="pop-layer" id="layer11">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer11')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 고흥 남열 해돋이 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=bee61105-1d21-40f7-a83c-f55440ac422d"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a>
                                </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9e7defdb-e5fe-4c60-8d32-d2a2d4982f29&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bccd7a10-f58b-42a7-9060-329ba7f7e2ea&amp;mode=raw">
                                <p> 약 800m 길이의 해변에 수심의 편차가 심하지 않고 해변 앞쪽에는 섬이 없기 때문에 먼 대양의 너울들이 막힘 없이 해변까지 도착하여 파도가 거센 편이다. </p>
                              </div>
                              <!--								<div class="sub_bottom">									<div class="sub_bottom_tit">										<p>											강습정보										</p>									</div>									<div class="sub_bottom_box">										<table class="table_bg">											<tr>												<td style="border-right:2px solid #333; width:50%"></td>												<td></td>											</tr>										</table>										<div class="sub_bottom_left">											<div class="sub_bottom_spot_tit">												| 웨이브시티 											</div>											<div class="sub_bottom_spot_body">												- 주소 : 부산광역시 사하구 다대로 704												<br>												- 홈페이지 : <a href="https://wavecity.co.kr/" >https://wavecity.co.kr/</a>											</div>										</div>										<div class="sub_bottom_right">											<div class="sub_bottom_spot_tit">											  </div>											<div class="sub_bottom_spot_body">											</div>										</div>									</div>								</div>								-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> 기암괴석과 깨끗한 바다로 이름난 나로도에 함께 가볼 만하고, 해변 주변을 아우르는 나로호 우주발사 전망대 인근 기암절벽의 풍경이 일품이다. </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 11 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 15-->
                          <div class="pop-layer" id="layer15">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer15')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 제주 월정리 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=6c953741-c857-48ad-a423-75ad8c98fc91"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a>
                                </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d895ed2b-68cc-4777-a597-cef758566271&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=cd7ea3fd-3266-458b-88b4-87cdfe6c3f40&amp;mode=raw">
                                <p> 해변을 보았을 때 중앙에 리프 지역이 길게 일직선으로 중앙을 갈라놓고 있으므로 물이 많이 빠지는 간조에는 주의해야 한다. </p>
                              </div>
                              <!--										<div class="sub_bottom">											<div class="sub_bottom_tit">												<p>													강습정보												</p>											</div>											<div class="sub_bottom_box">												<table class="table_bg">													<tr>														<td style="border-right:2px solid #333; width:50%"></td>														<td></td>													</tr>												</table>												<div class="sub_bottom_left">													<div class="sub_bottom_spot_tit">														| 웨이브시티 													</div>													<div class="sub_bottom_spot_body">														- 주소 : 부산광역시 사하구 다대로 704														<br>														- 홈페이지 : <a href="https://wavecity.co.kr/" >https://wavecity.co.kr/</a>													</div>												</div>												<div class="sub_bottom_right">													<div class="sub_bottom_spot_tit">													  </div>													<div class="sub_bottom_spot_body">													</div>												</div>											</div>										</div>										-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> <strong> 오빠밥죠 </strong>“혼밥하기 좋은 덮밥 맛집”<br> 주소 : 제주시 구좌읍 해맞이해안로 474<br> 연락처 : 010-3156-9418<br> <strong> 배롱개 국밥 </strong>“살짝 매콤한 국밥이 인기”<br> 주소 : 제주시 구좌읍 해맞이해안로 434<br> 연락처 : 064-784-0030 </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 15 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 4-->
                          <div class="pop-layer" id="layer4">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer4')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 강릉 경포 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=60ad68a9-2222-4558-96d7-7f0b44736aef"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=54d37c43-2758-45cb-bbe5-90a62af9eca1&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dd1a62ea-4812-4dc5-9f24-9ada7f8a121b&amp;mode=raw">
                                <p> 지리적 접근성이 좋으며 주변 관광지 시설도 <br>두루 갖추고 있어 주말을 이용해 쾌적하게 즐길 수 있다. </p>
                              </div>
                              <!--								<div class="sub_bottom">									<div class="sub_bottom_tit">										<p>											강습정보										</p>									</div>									<div class="sub_bottom_box">										<table class="table_bg">											<tr>												<td style="border-right:2px solid #333; width:50%"></td>												<td></td>											</tr>										</table>										<div class="sub_bottom_left">											<div class="sub_bottom_spot_tit">												| 서프홀릭											</div>											<div class="sub_bottom_spot_body">												- 주소 : 부산광역시 해운대구 송정해변로 50 엔젤리너스 1층												<br>												- 문의 : 051-701-4851												<br>												- 홈페이지 : https://surfholic.co.kr											</div>										</div>										<div class="sub_bottom_right">											<div class="sub_bottom_spot_tit">												| 송정서핑학교											</div>											<div class="sub_bottom_spot_body">												- 주소 : 부산광역시 해운대구 송정해변로 54												<br>												- 문의 : 051-704-0664												<br>												- 홈페이지 : https://surfschool.co.kr											</div>										</div>									</div>								</div>								-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> 인생샷 명소로 불리는 도깨비촬영지와 아기자기한 카페들이 많이 있는 안목카페거리가 함께 가볼만 한 곳. </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 4 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 2-->
                          <div class="pop-layer" id="layer2">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer2')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 양양 낙산 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f58b6922-b961-4464-a746-aba2e44b3ac0"><span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★☆☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=53b9a264-4d09-4723-8e2c-2f8cf5a4a58a&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=7333e571-0bc4-4edc-bf55-be77439e32ee&amp;mode=raw">
                                <div class="notice">사진제공: 강원도 서핑협회 </div>
                                <p> 낙산사와 설악산이 가까이 있어서 주변 관광지와 함께 서핑을 즐길 수 있는 장점이 있으며 주위에 숙박 및 횟집 같은 맛집이 많아서 서핑 이후에 다양한 먹거리와 볼거리를 즐길 수 있다. </p>
                              </div>
                              <div class="sub_bottom">
                                <div class="sub_bottom_tit">
                                  <p> 강습정보 </p>
                                </div>
                                <div class="sub_bottom_box">
                                  <table class="table_bg">
                                    <tbody>
                                      <tr>
                                        <td style="border-right:2px solid #333; width:50%"></td>
                                        <td></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                  <div class="sub_bottom_left">
                                    <div class="sub_bottom_spot_tit"> | 양양서핑학교 </div>
                                    <div class="sub_bottom_spot_body"> - 주소 : 강원 양양군 강현면 전진리 7-3 <br> - 홈페이지 : <a href="http://www.yangyangsurfingschool.com">http://www.yangyangsurfingschool.com</a> </div>
                                  </div>
                                  <div class="sub_bottom_right">
                                    <div class="sub_bottom_spot_tit"> </div>
                                    <div class="sub_bottom_spot_body"> </div>
                                  </div>
                                </div>
                              </div>
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu" style="width:80%"> <strong>양양서핑학교 : </strong>카페 2층에서 명사십리 낙산 해변을 전망 가능, 더치커피와 라떼가 유명. <br> <strong>주의사항: </strong>동력수상레저와 무동력수상레저가 바다를 공유하는 곳이라 안전을 위해 서로의 구역 넘지 말아야 함 </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 2 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <div class="m_cover"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d10c0720-3d3c-466b-8d20-8afe7db4de88&amp;mode=raw"> </div>
                        </li>
                      </ul>
                      <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div> <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                    <div class="m_header"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=5f94f65d-0040-49a2-985a-faa2fe7b21e8&amp;mode=raw"> </div>
                    <!--m_header 끝-->
                    <div class="swiper-container swiper-container-horizontal mo_contents4 swiper-container-initialized">
                      <ul class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                        <li class="swiper-slide">
                          <div class="m_cover"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f1a36573-e538-4556-b547-8919d7bb29ef&amp;mode=raw"> </div>
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 9-->
                          <div class="pop-layer" id="layer9">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer9')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 부산 송정해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=b0136743-e02d-4f1b-bef6-cc1b63536489"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6c29975b-7655-4936-a903-2d4623bfc1a8&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a9f22d3b-4463-478a-a9b2-59beecb7029f&amp;mode=raw">
                                <p> 서핑을 시작하기에 알맞은 곳. <br> 무릎 정도의 파도가 잦고 허리 정도의 깊이에서 <br> 강습이 이뤄진다. </p>
                              </div>
                              <div class="sub_bottom">
                                <div class="sub_bottom_tit">
                                  <p> 강습정보 </p>
                                </div>
                                <div class="sub_bottom_box">
                                  <table class="table_bg">
                                    <tbody>
                                      <tr>
                                        <td style="border-right:2px solid #333; width:50%"></td>
                                        <td></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                  <div class="sub_bottom_left">
                                    <div class="sub_bottom_spot_tit"> | 서프홀릭 </div>
                                    <div class="sub_bottom_spot_body"> - 주소 : 부산광역시 해운대구 송정해변로 50 엔젤리너스 1층 <br> - 문의 : 051-701-4851 <br> - 홈페이지 : https://surfholic.co.kr </div>
                                  </div>
                                  <div class="sub_bottom_right">
                                    <div class="sub_bottom_spot_tit"> | 요서프 </div>
                                    <div class="sub_bottom_spot_body"> - 주소 : 해운대구 송정중앙로 36번길 60 <br> - 홈페이지 : <a href="https://cafe.naver.com/busanyosurf">https://surfschool.co.kr</a> </div>
                                  </div>
                                </div>
                              </div>
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> <strong>죽도공원 포인트 : </strong><br> 송정해변의 왼쪽에 있으며 다른 곳에 비해 파도가 작게 들어오는 편으로 파도가 큰 날 초보자들이 안전하게 서핑을 즐기기에 적당하다.<br> </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 9 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!--콘텐츠 1 시작-->
                          <div id="wrapper">
                            <div class="pop-layer" id="layer1">
                              <!-- 닫기 버튼 -->
                              <div class="btn-r">
                                <a onclick="closeLayer('layer1')">
                                  <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw">
                                </a>
                              </div>
                              <!--닫기 버튼 끝 -->
                              <div class="sub_conbox">
                                <div class="sub_top">
                                  <p class="spot_tit"> 고성 봉수대 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=6c50b2fd-264f-47cd-ab66-8b25e58cda8e"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a>
                                  </p>
                                </div>
                                <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                                <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=81e1d390-1cc4-49c2-b239-fa25bb4aaca5&amp;mode=raw"> </div>
                                <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=7eaf166d-a1ad-4240-86b7-e764ffdb8494&amp;mode=raw">
                                  <p> 양 방향으로 파도길이 이어지는 훌륭한 포인트. <br> 하지만 파도 사이즈가 커지면 조류를 동반하는 <br> 경우가 많아 초급자에게 주의가 필요하다. </p>
                                </div>
                                <div class="sub_bottom">
                                  <div class="sub_bottom_tit">
                                    <p> 강습정보 </p>
                                  </div>
                                  <div class="sub_bottom_box">
                                    <table class="table_bg">
                                      <tbody>
                                        <tr>
                                          <td style="border-right:2px solid #333; width:50%"></td>
                                          <td></td>
                                        </tr>
                                      </tbody>
                                    </table>
                                    <div class="sub_bottom_left">
                                      <div class="sub_bottom_spot_tit"> | 렛미서프 </div>
                                      <div class="sub_bottom_spot_body"> - 주소 : 고성군 토성면 천진해변길 <br> - 홈페이지 : <a href="https://cafe.naver.com/letmesurf">https://cafe.naver.com/letmesurf</a> </div>
                                    </div>
                                    <div class="sub_bottom_right">
                                      <div class="sub_bottom_spot_tit"> </div>
                                      <div class="sub_bottom_spot_body"> </div>
                                    </div>
                                  </div> <!-- sub_bottom_box 끝 -->
                                </div> <!-- sub_bottom_끝 -->
                                <div class="hidden_spot">
                                  <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                  <p class="hidden_spot_cu"> <strong>봉수대 오토캠핑장</strong> <br> 깨끗한 해변 백사장과 얕은 수심으로 가족여행, 캠핑활동의 최적지 </p>
                                </div> <!-- hidden spot 끝 -->
                              </div> <!-- sub_conbox 끝-->
                            </div> <!-- 콘텐츠 1 끝 -->
                          </div>
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 12-->
                          <div class="pop-layer" id="layer12">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer12')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 제주 이호테우 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=5ea8d513-cffc-4993-abad-197d736651da"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a>
                                </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★★☆ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dc34eb04-df2a-4f92-bf50-7262565232a4&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c52819c1-2590-45e2-bcad-488c5a1c3d40&amp;mode=raw">
                                <p> 제주 특유의 관광환경이 잘 조성되어 있는 곳으로 서핑 스폿들이 두루 갖춰져 있다. 접근성이 좋아 비교적 서핑을 즐기기에 어렵지 않다. </p>
                              </div>
                              <!--									<div class="sub_bottom">										<div class="sub_bottom_tit">											<p>												강습정보											</p>										</div>										<div class="sub_bottom_box">											<table class="table_bg">												<tr>													<td style="border-right:2px solid #333; width:50%"></td>													<td></td>												</tr>											</table>											<div class="sub_bottom_left">												<div class="sub_bottom_spot_tit">													| 웨이브시티 												</div>												<div class="sub_bottom_spot_body">													- 주소 : 부산광역시 사하구 다대로 704													<br>													- 홈페이지 : <a href="https://wavecity.co.kr/" >https://wavecity.co.kr/</a>												</div>											</div>											<div class="sub_bottom_right">												<div class="sub_bottom_spot_tit">												  </div>												<div class="sub_bottom_spot_body">												</div>											</div>										</div>									</div>									-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> 수많은 인증샷을 만들어 낸 일몰 명소, 목마 등대에 함께 가볼만하다. </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 12 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 13-->
                          <div class="pop-layer" id="layer13">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer13')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 제주 중문 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f0488695-d42b-4b5f-9772-73ad6865a5e8"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=42108e5f-c803-45fa-9ba4-f5816991a7c7&amp;mode=raw"> </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=690d0300-518f-4d27-911a-f37574c4ae8d&amp;mode=raw">
                                <p> 주로 5~10월 사이 가장 좋은 파도가 들어오며 대한민국의 서핑 스폿 중 가장 높은 수온 덕분에 이국적인 분위기에서 서핑을 할 수 있다 </p>
                              </div>
                              <!--									<div class="sub_bottom">										<div class="sub_bottom_tit">											<p>												강습정보											</p>										</div>										<div class="sub_bottom_box">											<table class="table_bg">												<tr>													<td style="border-right:2px solid #333; width:50%"></td>													<td></td>												</tr>											</table>											<div class="sub_bottom_left">												<div class="sub_bottom_spot_tit">													| 웨이브시티 												</div>												<div class="sub_bottom_spot_body">													- 주소 : 부산광역시 사하구 다대로 704													<br>													- 홈페이지 : <a href="https://wavecity.co.kr/" >https://wavecity.co.kr/</a>												</div>											</div>											<div class="sub_bottom_right">												<div class="sub_bottom_spot_tit">												  </div>												<div class="sub_bottom_spot_body">												</div>											</div>										</div>									</div>									-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> <strong>비치포인트 :</strong><br> 크게 세 군데에서 브레이크가 생기며 매일 스웰의 미세한 방향에 따라 파도의 방향이 조금씩 달라진다. 대부분의 바닥이 모래라서 초보자들에게 적합하며 간조 전후로 서핑하기 좋다.<br> <strong>듀크 포인트 :</strong><br> 모든 바닥이 뾰족한 현무암 리프이며 브레이크가 빨라
                                  초보자들에겐 추천하지 않는다.<br> 로컬 서퍼들에게 문의 후 입수 추천! </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 13 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <!-- 콘텐츠 14-->
                          <div class="pop-layer" id="layer14">
                            <!-- 닫기 버튼 -->
                            <div class="btn-r"> <a onclick="closeLayer('layer14')"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40247c1f-4a8e-4f60-8bac-2c140e0324df&amp;mode=raw"> </a> </div>
                            <div class="sub_conbox">
                              <div class="sub_top">
                                <p class="spot_tit"> 양양 남애 해변 <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=b2f4d2a8-504a-4559-83eb-1244a09cd655"> <span class="spot_more"> 더보기 <span class="strong_btn"> ▶ </span> </span> </a> </p>
                              </div>
                              <div class="level"> 난이도: <span class="level_strong"> ★★★★★ </span> </div>
                              <div class="spot_img_tit"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b0897a99-fa44-4f7d-81ff-f7497b2465c8&amp;mode=raw">
                                <div class="notice" style="margin-top: 40%;">사진제공: 강원도 서핑협회 </div>
                              </div>
                              <div class="spot_body"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0b29c545-4520-4512-b5c2-8ed4b7d15693&amp;mode=raw">
                                <p> 여름에는 입문자가 강습받기 좋은 사이즈의 파도가 들어오고 가을부터 겨울,봄에는 상급자들이 탈 수 있는 그림같은 파도가 들어오는 곳이다. </p>
                              </div>
                              <!--								<div class="sub_bottom">									<div class="sub_bottom_tit">										<p>											강습정보										</p>									</div>									<div class="sub_bottom_box">										<table class="table_bg">											<tr>												<td style="border-right:2px solid #333; width:50%"></td>												<td></td>											</tr>										</table>										<div class="sub_bottom_left">											<div class="sub_bottom_spot_tit">												| 웨이브시티 											</div>											<div class="sub_bottom_spot_body">												- 주소 : 부산광역시 사하구 다대로 704												<br>												- 홈페이지 : <a href="https://wavecity.co.kr/" >https://wavecity.co.kr/</a>											</div>										</div>										<div class="sub_bottom_right">											<div class="sub_bottom_spot_tit">											  </div>											<div class="sub_bottom_spot_body">											</div>										</div>									</div>								</div>								-->
                              <div class="hidden_spot">
                                <div class="hidden_spot_tit">Hidden Spot</div> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=731dfd2b-9945-4f5a-acd5-e3d6273d56db&amp;mode=raw">
                                <p class="hidden_spot_cu"> 남애항 회센터 : 3대 미항을 바라보면서 해산물을 즐길 수 있다. 신선한 해산물과 자연산 회를 즐긴 후 남애항 전망대에 올라 해변 전체를 감상할 수 있는 바다뷰 맛집. </p>
                              </div>
                            </div>
                          </div> <!-- 콘텐츠 14 끝 -->
                        </li>
                        <li class="swiper-slide">
                          <div class="m_cover"> <img src="https://support.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=38a107cb-399f-4c0c-bca9-75cd451b8a1b&amp;mode=raw"> </div>
                        </li>
                      </ul>
                      <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div> <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                  </div>
                  <!--m_level1 끝-->
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
  <script src="resources/home/assets/js/movie.js"></script>

</body>

</html>
