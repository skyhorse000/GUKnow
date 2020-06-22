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
        <h2 class="ir_so">Recommend_blog</h2>
        <div id="contents">
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">1</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">12</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">1,009</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>한화리조트 거제 벨버디어 웰니스</h2>
            <div class="area_address">
              <span class="address">경남 거제시</span>
              <span id="modi_date">수정일 : 2020.03.10</span>
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

            <strong id="titCont" class="blind">본문 내용</strong><!-- 1108 id 추가 -->
            <!-- [D] 텍스트 미노출시 클래스 blind 추가 -->
            <div class="box_txtPhoto">
              <div class="txt_p">
                <p>아득히 펼쳐진 남쪽 바다의 그림 같은 풍경을 배경으로 과학적이고 체계적인 첨단 웰니스 프로그램을 즐겨보자.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog03_01.jpg" alt="" style="max-width: 750px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <p>‘Fill Body, Feel Mind.’ 몸을 채워 마음을 느끼는 온전한 쉼은 거제 벨버디어 웰니스의 슬로건이다. 투숙객이 몸과 마음의 균형을 되찾고, 일상에서 자신의 몸을 아껴 쓸 수 있도록 돕는다. 신기하게도 밖에서는 무척 어려워 보이는 건강한 생활을 위한 실천이 이곳에서는 쉽다. 아름다운 자연을 속에서 새롭게 거듭나는 경험을 하고 싶다면, 이곳이 답이다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="4" id3="1">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog03_02.jpg" alt="" style="max-width: 750px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <strong class="ar_title ">삶의 균형을 찾아 떠나는 여정</strong>
              <div class="txt_p">
                <div>거제 벨버디어 웰니스 프로그램은 ‘3R-System’을 따른다. ‘Refresh Your Body, Relax Your Mind, Reset Your Lifestyle’에서 각 앞 글자를 따서 지은 이름으로, 몸에 생기를 불어넣고 마음을 이완하며 생활 방식을 재정비한다는 의미다. 이 개념을 기본으로 투숙객 개인의 목적, 성향, 컨디션에 맞춰 에너지업(Energy up), 캄 앤드 힐링(Calm &amp;
                  Healing), 뷰티 플러스(Beauty Plus) 가운데 테마를 조합해 프로그램을 구성한다.</div>
                <div>웰니스 프로그램을 예약하면 리조트 방문 전 모바일 문진을 통해 개인의 건강 상태와 생활 습관을 점검한다. 체크인을 하면 미리 진행한 문진 결과를 설명해준다. 그리고 이를 기반으로 당일 컨디션을 고려한 프로그램을 구성하고, 전문 검사 장비로 체력과 체형에 대한 본격적인 측정에 들어간다. 많은 사람들이 체형 측정 과정에서 유심히 살피지 않고 마구&nbsp;쓴 내 몸의 불균형을 적나라하게 마주한다. 잘못된
                  습관으로 몸의 특정 부위가 불필요하게 많은 일을 하는 바람에 통증이 생겼다는 사실에 스스로에게 미안해질지도 모른다. 물리치료사, 트레이너, 요가 지도자로 구성된 7명의 웰니스 코치진은 체형 측정 결과를 바탕으로 불균형을 개선할 수 있는 운동법과 개개인의 직업에 따라 생활에서 지킬 수 있는 바른 자세를 알려준다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="2" id3="2">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog03_03.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="2" id3="3">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog03_04.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div><strong class="ar_title ">내 몸에 완벽히 맞춘 프로그램</strong>
              <div class="txt_p">
                <div>프로그램을 살펴보다 보면 오래 머물면서 두루 섭렵하고 싶다는 욕심이 절로 생긴다. 셰프가 거제 제철 식재료로 정성껏 차려낸 신선한 웰니스 식단, 편안한 잠자리를 위한 수면 코칭은 보다 바른 라이프스타일을 구축하도록 돕는다. 인도어 피트니스, 아웃도어 액티비티, 요가와 명상, 스파 테라피를 에너지업·캄 앤드 힐링·뷰티 플러스, 세 가지 테마에 맞춰 갖췄다. 바른 자세 교정 운동, 바다 건너 보이는 망봉산으로
                  떠나는 에코 트레킹, 시원하게 난 창으로 바다를 조망하며 즐기는 요가, 일출 명상, 달팡 제품을 이용한 다양한 스파 등의 프로그램은 면면이 매력적이다.</div>
                <div>특히 아웃도어 인피니티 풀에서 즐기는 수중 운동과 신기한 힐링 방식인 컬러 앤 사운드 테라피는 놓치기 아쉽다. 개인 혹은 소규모 그룹으로 진행하는 수중 운동은 중력의 저항을&nbsp;덜 받는 물속에서 저강도 스트레칭과 피트니스를 수행하는 프로그램이다. 인피니티 풀 아래 펼쳐진 아름다운 남해의 경치에 즐거움이 배가된다. 컬러 앤 사운드 테라피는 ‘힐링 소파’라는 독특한 기구에서 진행한다. 원형 지붕을 둥글게
                  친 침대로, 천장의 램프는 낮 동안 자연에서 받을 수 있는 빛의 색을 고스란히 재현해 세로토닌을 분비하게 한다. 자유로운 자세로 누워 편안하게 느껴지는 색을 선택하고 눈앞의 모니터를 통해 자연 풍광을 감상한다. 온몸이 이완되기에 깜빡 졸기 쉽지만, 빛과 적외선은 시신경을 통해 인체로 들어가니 되도록 눈을 뜨고 있는 게 좋다.</div>
              </div>
              <hr>
              <div class="txt_p pb10">
                <div><span style="font-weight: bold;">한화리조트 거제 벨버디어 웰니스</span></div>
                <div> - 주소 : 경상남도 거제시 장목면 거제북로 2501-40</div>
                <div> - 문의 : 055-951-4100</div>
                <div> - 홈페이지 : <a href="http://www.hanwharesort.co.kr" target="_blank">http://www.hanwharesort.co.kr</a></div>
                <div>휴무일 없음, 주차가능</div>
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
