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
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">1</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">346</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>파라다이스 시티 씨메르</h2>
            <div class="area_address">
              <span class="address">인천 중구</span>
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
                <p>파라다이스 시티 씨메르는 한국 찜질방 문화에 유럽 스파 감성을 접목해 고급스러움과 화려함을 자랑한다. 씨메르가 마련한 다채로운 스파 프로그램은 아름다운 공간을 더욱 빛나게 한다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog01_01.jpg" alt="" style="max-height: 413px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <p>파라다이스 시티 씨메르의 곳곳을 둘러보면 마치 전 세계의 고급스러운 스파 시설을 두루 여행하는 듯한 기분이 든다. 색다른 공간에 체험 거리 또한 넘쳐 온천수 없이도 헝가리의 세체니나 독일의 바덴바덴이 부럽지 않다. 스파 개념을 끝없이 확장하며 진화하는 한국 스파의 정점이다.</p>
              </div><strong class="ar_title ">몸과 마음이 두둥실, 아쿠아존</strong>
              <div class="txt_p">
                <p>실내와 실외에 마련한 8개의 아쿠아존 가운데 중심이 되는 공간은 아쿠아플라자다. 이탈리아의 산 마르코 광장을 모티브로 설계한 수심 1.3m의 풀로, 이곳에서는 주말마다 아쿠아 줌바 프로그램을 진행한다. 40분간 줌바와 저강도 아쿠아 피트니스를 결합한 동작을 따라한다. 신나는 비트에 맞춰 물장구치며 몸을 흔들다 보면 절로 운동이 된다. 수면에 아쿠아 베이스를 띄우고 요가와 피트니스를 즐기는 아쿠아 플로트 요가와
                  아쿠아 플로트 핏 프로그램도 있다. 빠른 음악에 맞춰 맥주나 음료를 마시며 하는 비어 요가, 역동적인&nbsp;EDM 비트에 카디오 댄스, 요가, 피트니스를 결합한 동작을 선보이는 EDM 요가 등 하나같이 놓치기 아쉽다. 실외 기온이 따뜻한 봄부터 가을까지는 야외 풀에서도 진행한다. 보다 정적인 이완을 원한다면 케이브 스파와 버츄얼 스파를 추천한다. 케이브 스파는 입구 안쪽 미로 같은 공간에서 즐기는 플로팅 인
                  사운드 프로그램이다. 아쿠아봉과 수중 목베개의 부력을 이용해 수면에 몸을 편안하게 띄운 상태에서 귀만 살짝 물에 담가 수중 스피커에서 흘러나오는 음악을 듣는다. 어둡고 아늑한 공간에서 둥실둥실 떠다니며 감상하는 아름다운 선율에 마음이 느긋해진다. 버츄얼 스파에서 보내는 시간 역시 소중하다. 따뜻한 풀에 몸을 담그고 3개의 벽면에 설치된 대형 LED 화면으로 신비롭고 아름다운 대자연의 풍경을 감상한다. 눈과 몸이
                  이완되는 몽환적인 경험을 하고 싶다면 놓치지 말자.</p>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="2" id3="1">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog01_02.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="2" id3="2">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog01_03.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div><strong class="ar_title ">이보다 핫할 수 없다, 찜질 스파존</strong>
              <div class="txt_p">
                <div>강원도 횡성의 굴참나무, 녹주산 맥반석, 후쿠오카현의 편백나무, 북한산 자수정. 찜질 룸을 구성한 재료다. 이름만 들어도 묵은 피로가 풀리는 듯하다. 파라다이스 시티 씨메르의 찜질 스파존은 독특하고 창의적인 프로그램을 운영한다. 자수정방에서 진행하는 ‘핫샷 서비스’는 주말 오후 3시부터 3회에 걸쳐 10~15분간 진행되는 프로그램으로, 이름 그대로 핫하다. 60~65℃로 데운 스토브에 얼음, 아로마 용액,
                  물을 섞어 스토브에 부으면 수증기가 피어오르는데, 한국무용 전공자가 부채 퍼포먼스로 증기를 퍼뜨린다. 참가자는 스토브에서 올라온 아로마 향과 열기를 한껏 누리면 된다. 핀란드 사우나에 엔터테인먼트적 요소를 결합한 것으로, 1회 선착순 30명까지 입장 가능하다.</div>
                <div>온기로 이완된 신체를 요가로 단련한다면 그야말로 화룡점정이다. 피트니스 룸에서는 아로마를 이용해 심신 안정을 돕는 아로마 요가를 진행한다. 아로마 에센셜 오일을 손에 바르고 두 손을 모아 깊이 호흡하는 것을 시작으로, 초보자도 따라 할 수 있는 동작을 수련한 후 이완과 명상의 시간인 사바사나를 맞는다. 그러고 나면 무거웠던 몸이 한결 개운해진다. 아로마 요가 프로그램은 분기별 이용 시간에 따라 1일 1회
                  12명을 대상으로 30분간 진행한다.</div>
                <div>씨메르 찜질 스파존에서는 인바디 측정과 스트레스 정도를 진단하는 보디 밸런스 컨설팅은 물론, 분기별로 다양한 프로그램을 선정해 진행한다. 상하좌우로 흔들리는 보드 위에서 근육과 신체 밸런스를 강화하는 서프핏, 서해의 일몰을 감상하며 수련하는 선셋 요가, 편백나무방에서 다량의 피톤치드를 들이마시며 몸과 마음의 안정을 찾는 네이처 힐링 요가, 폼롤러로 근막을 이완하는 힐링터치, 필라테스와 요가를 결합한 피요 등
                  알차고 신선한 프로그램이 가득하다.</div>
              </div>
              <hr>
              <div class="txt_p pb10">
                <div><span style="font-weight: bold;">파라다이스 시티 씨메르</span></div>
                <div> - 주소 : 인천시 중구 영통해안남로 321번길 186</div>
                <div> - 문의 : 02-1833-8855</div>
                <div> - 홈페이지 : <a href="http://www.p-city.com" target="_blank">http://www.p-city.com</a></div>
                <div>휴무일 없음(매년 4월 일주일간 휴장), 주차가능</div>
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
