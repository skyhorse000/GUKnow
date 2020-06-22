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
  <link rel="stylesheet" href="resources/home/assets/css/favorite01.css">

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
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();">
                <span class="ico">좋아요</span>
                <span class="num" id="conLike">20</span>
              </button>
              <button type="button" class="btn_sharing" onclick="openShare();">
                <span class="ico">공유하기</span>
                <span class="num" id="conShare">5</span>
              </button>
              <span class="num_view">
                <em class="tit">조회수</em>
                <span class="num" id="conRead">2,348</span>
              </span>
            </div>

            <div class="area_tag">
              <span class="name3">
                <a href="favorite01">
                  <span class="ico">Now</span>추천
                </a>
              </span>
            </div>
            <h2>쉿, 비밀이야! 나만 알고 싶은 한적한 여행지</h2>
            <div class="area_address">

              <span id="modi_date">수정일 : 2020.05.26</span>
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

            <div style="display:none;"><img src="resources/home/assets/img/logo.png" class="ico" alt=""></div>
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
                    height: 3330px;
                    background: url('resources/home/assets/img/bg_favorite01.png');
                    background-repeat: no-repeat;
                    background-position: 50% 0%;
                    overflow-x: hidden;
                    overflow-y: auto;
                  }

                  .thme_contents_detail {
                    width: 940px;
                    position: relative;
                    top: 830px;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .thme_contents_detail img {
                    width: 100%;
                  }
                </style>
                <div class="theme_contents">
                  <div class="thme_contents_detail"> <img src="resources/home/assets/img/secluded_detail.png" usemap="#imagemap001">
                    <map id="imagemap001" name="imagemap001">
                      <area alt="풍경 좋은 신상 전망대, 서울 창신숭인채석장전망대" title="" href="javascript:goLink(1);" shape="rect" coords="20,550,465,950">
                      <area alt="기암괴석과 출렁다리의 만남, 삼척 초곡용굴촛대바위길" title="" href="javascript:goLink(2);" shape="rect" coords="475,550,920,950">
                      <area alt="마음 포근해지는 산책길, 광주호호수생태원" title="" href="javascript:goLink(3);" shape="rect" coords="20,960,465,1360">
                      <area alt="응답하라 1980, 목포 서산동 시화골목" title="" href="javascript:goLink(4);" shape="rect" coords="475,960,920,1360">
                      <area alt="짚트랙이 있는 청정 섬마을, 강진 가우도" title="" href="javascript:goLink(5);" shape="rect" coords="20,1610,465,2009">
                      <area alt="느릿느릿 쉬어가는 비밀정원, 고흥 애도" title="" href="javascript:goLink(6);" shape="rect" coords="475,1610,920,2009">
                      <area alt="사계절 꽃피는 해상유원지, 창원 돝섬" title="" href="javascript:goLink(7);" shape="rect" coords="20,2020,465,2420">
                      <area alt="밤하늘 별 헤는 섬, 신안 증도" title="" href="javascript:goLink(8);" shape="rect" coords="475,2020,920,2420">
                    </map>
                  </div>
                </div>
                <script>
                  function goLink(no) {
                    var i = no;
                    switch (i) {
                      case 1:
                        location.href = 'http://localhost:8080/project/favorite01_1';
                        break; /*풍경 좋은 신상 전망대, 서울 창신숭인채석장전망대*/
                      case 2:
                        location.href = 'http://localhost:8080/project/favorite01_2';
                        break; /*기암괴석과 출렁다리의 만남, 삼척 초곡용굴촛대바위길*/
                      case 3:
                        location.href = 'http://localhost:8080/project/favorite01_3';
                        break; /*마음 포근해지는 산책길, 광주호호수생태원*/
                      case 4:
                        location.href = 'http://localhost:8080/project/favorite01_4';
                        break; /*응답하라 1980, 목포 서산동 시화골목*/
                      case 5:
                        location.href = 'http://localhost:8080/project/favorite01_5';
                        break; /*짚트랙이 있는 청정 섬마을, 강진 가우도*/
                      case 6:
                        location.href = 'http://localhost:8080/project/favorite01_6';
                        break; /*느릿느릿 쉬어가는 비밀정원, 고흥 애도*/
                      case 7:
                        location.href = 'http://localhost:8080/project/favorite01_7';
                        break; /*사계절 꽃피는 해상유원지, 창원 돝섬*/
                      case 8:
                        location.href = 'http://localhost:8080/project/favorite01_8';
                        break; /*밤하늘 별 헤는 섬, 신안 증도*/
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
  <script src="resources/home/assets/js/movie.js"></script>
  <script src="resources/home/assets/js/login.js"></script>
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
  </script>
</body>

</html>
