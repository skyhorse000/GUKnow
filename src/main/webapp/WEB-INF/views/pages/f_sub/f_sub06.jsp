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
              <button type="button" class="btn_good" onclick="setLike();">
                <span class="ico">좋아요</span>
                <span class="num" id="conLike">75</span>
              </button>
              <button type="button" class="btn_sharing" onclick="openShare();">
                <span class="ico">공유하기</span>
                <span class="num" id="conShare">211</span>
              </button>
              <span class="num_view">
                <em class="tit">조회수</em>
                <span class="num" id="conRead">51,400</span>
              </span>
            </div>

            <div class="area_tag">
              <span class="name3">
                <a href="#">
                  <span class="ico">Now</span>추천
                </a>
              </span>
            </div>
            <h2>집콕 힐링 프로젝트, 슬기로운 드라이브 여행</h2>
            <div class="area_address">
              <span class="address">전국 </span>
              <span id="modi_date">수정일 : 2020.04.09</span>
            </div>
            <button type="button" title="열기" class="btn_titview">더보기</button>
            <!-- 팝업 메뉴 -->
            <div class="pop_subMenu">
              <ul>
                <li class="btn_far">
                  <a href="javascript:" onclick="setFavoContentDetail()">즐겨찾기
                  </a>
                </li>
                <li class="btn_share">
                  <a href="javascript:openShare();">공유하기
                  </a>
                </li>
                <li class="btn_print">
                  <a href="javascript:openPrint();">인쇄하기
                  </a>
                </li>
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
                <meta name="viewport" content="width=device-width, user-scalable=yes">
              </div>
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
                    width: 100%;
                    height: 7980px;
                    background: url('resources/home/assets/img/f_sub/f_sub06_bg01.png');
                    background-repeat: no-repeat;
                    background-position: 50% 0%;
                    overflow-x: hidden;
                    overflow-y: auto;
                  }

                  .theme_gif {
                    width: 100%;
                    position: absolute;
                    top: 530px;
                    z-index: 2;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .theme_gif img {
                    width: 940px;
                  }

                  .thme_contents_detail {
                    width: 940px;
                    position: relative;
                    top: 1060px;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .thme_contents_detail img {
                    width: 100%;
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

                    .theme_contents {
                      height: auto;
                      background-size: cover;
                    }

                    .theme_gif {
                      top: 6%;
                    }

                    .theme_gif img {
                      width: 72%;
                      margin-top: 7%;
                    }

                    .thme_contents_detail {
                      width: 100%;
                      text-align: center;
                      margin-left: auto;
                      margin-right: auto;
                      margin-top: 50px;
                      padding-top: 96%;
                      padding-bottom: 27%;
                      top: 0px;
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

                  @media screen and (min-width: 768px) and (max-width: 1023px) {
                    .theme_gif {
                      top: 6%;
                    }

                    .thme_contents_detail {
                      padding-bottom: 22.5%;
                    }
                  }
                </style>
                <div class="theme_contents">
                  <div class="theme_gif">
                    <img src="resources/home/assets/img/f_sub/f_sub06_bg02.gif" alt="자동차">
                  </div>
                  <div class="thme_contents_detail">
                    <img src="resources/home/assets/img/f_sub/f_sub06_bg03.png" usemap="#imagemap001">
                    <map id="imagemap001" name="imagemap001">
                      <area alt="야간 드라이브의 백미, 서울 북악스카이웨이" title="" href="javascript:goLink(1);" shape="rect" coords="20,260,450,860"> <area alt="아라뱃길 따라 바다로, 인천 영종도" title="" href="javascript:goLink(2);" shape="rect" coords="490,260,920,860"> <area alt="부산의 몽마르트 언덕, 해운대 달맞이길" title="" href="javascript:goLink(3);" shape="rect" coords="20,900,450,1500">
                      <area alt="바다와 가장 가까운 도로, 강릉 헌화로" title="" href="javascript:goLink(4);" shape="rect" coords="20,1855,450,2455"> <area alt="자연이 만든 길 위의 쉼터, 삼척 새천년해안도로" title="" href="javascript:goLink(5);" shape="rect" coords="490,1855,920,2455">
                      <area alt="갈대밭에서 낭만 한 스푼, 화성 시화호" title="" href="javascript:goLink(6);" shape="rect" coords="20,2495,450,3095">
                      <area alt="노을이 있는 바다, 영광 백수해안도로" title="" href="javascript:goLink(7);" shape="rect" coords="490,2495,920,3095">
                      <area alt="곡성 메타세쿼이아길" title=""
                      href="javascript:goLink(8);" shape="rect" coords="23,3267,309,3567">
                      <area alt="진안 메타세쿼이아길" title=""
                      href="javascript:goLink(9);" shape="rect" coords="328,3267,614,3567">
                      <area alt="담양 메타세쿼이아길" title="" href="javascript:goLink(10);" shape="rect" coords="631,3267,918,3567">
                      <area alt="산과 호수의 만남, 충북 제천 코스" title="" href="javascript:goLink(11);" shape="rect" coords="20,3935,920,4535">
                      <area alt="쪽빛 남해를 따라, 경남 거제 코스" title="" href="javascript:goLink(12);" shape="rect" coords="20,4595,920,5195">
                      <area alt="입소문 난 도심 여행지, 인천 영흥도" title="" href="javascript:goLink(13);" shape="rect" coords="20,5560,450,6163">
                      <area alt="신선이 노닐던 곳, 군산 고군산군도" title="" href="javascript:goLink(14);" shape="rect" coords="490,5560,920,6163">
                      <area alt="천사대교 너머 고즈넉한 풍경, 신안 4色 섬" title="" href="javascript:goLink(15);" shape="rect" coords="20,6200,450,6803">
                      <area alt="역사가 살아 숨 쉬는 섬, 완도 고금도" title="" href="javascript:goLink(16);" shape="rect" coords="490,6200,920,6803">
                    </map>
                  </div>
                </div>
                <script>
                  function goLink(no) {
                    var i = no;
                    switch (i) {
                      case 1:
                        location.href = '#';
                        break; /*야간 드라이브의 백미, 서울 북악스카이웨이*/
                      case 2:
                        location.href = '#';
                        break; /*아라뱃길 따라 바다로, 인천 영종도*/
                      case 3:
                        location.href = '#';
                        break; /*부산의 몽마르트 언덕, 해운대 달맞이길*/
                      case 4:
                        location.href = '#';
                        break; /*바다와 가장 가까운 도로, 강릉 헌화로*/
                      case 5:
                        location.href = '#';
                        break; /*자연이 만든 길 위의 쉼터, 삼척 새천년해안도로*/
                      case 6:
                        location.href = '#';
                        break; /*갈대밭에서 낭만 한 스푼, 화성 시화호*/
                      case 7:
                        location.href = '#';
                        break; /*노을이 있는 바다, 영광 백수해안도로*/
                      case 8:
                        location.href = '#';
                        break; /*곡성 메타세쿼이아길*/
                      case 9:
                        location.href = '#';
                        break; /*진안 메타세쿼이아길*/
                      case 10:
                        location.href = '#';
                        break; /*담양 메타세쿼이아길*/
                      case 11:
                        location.href = '#';
                        break; /*산과 호수의 만남, 충북 제천 코스*/
                      case 12:
                        location.href = '#';
                        break; /*쪽빛 남해를 따라, 경남 거제 코스*/
                      case 13:
                        location.href = '#';
                        break; /*입소문 난 도심 여행지, 인천 영흥도*/
                      case 14:
                        location.href = '#';
                        break; /*신선이 노닐던 곳, 군산 고군산군도*/
                      case 15:
                        location.href = '#';
                        break; /*천사대교 너머 고즈넉한 풍경, 신안 4色 섬*/
                      case 16:
                        location.href = '#';
                        break; /*역사가 살아 숨 쉬는 섬, 완도 고금도*/
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
