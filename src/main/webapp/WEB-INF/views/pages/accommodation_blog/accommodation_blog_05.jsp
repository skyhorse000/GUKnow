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
          <div style="display:none;"><img src="/resources/images/etc/app_ico.png" class="ico" alt=""></div>
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">1</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">5</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">543</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="/list/rem_list.do"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>용평리조트 발왕산</h2>
            <div class="area_address">
              <span class="address">강원 평창군</span>
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
                <li><a href="#titCont"><img src="../resources/images/sub/ico_detail_nav01.png" class="ico" alt=""><span class="tit">본문내용</span></a></li>
                <li><a href="#titTrableInfo"><img src="../resources/images/sub/ico_detail_nav02.png" class="ico" alt=""><span class="tit">여행정보</span></a></li>
                <li style="display:none;" id="vtitMoveInfo"><a href="#titMoveInfo"><img src="../resources/images/sub/ico_detail_nav03.png" class="ico" alt=""><span class="tit">이동정보</span></a></li>
                <li style="display:none;" id="vtitFoodAcc"><a href="#titFoodAcc"><img src="../resources/images/sub/ico_detail_nav04.png" class="ico" alt=""><span class="tit">음식/숙박정보</span></a></li>
              </ul>
            </div>

            <strong id="titCont" class="blind">본문 내용</strong><!-- 1108 id 추가 -->
            <!-- [D] 텍스트 미노출시 클래스 blind 추가 -->
            <div class="box_txtPhoto">
              <div class="txt_p">
                <p>산은 인간이 감히 탐낼 수 없는 덕을 지녔다. 좋은 것이 나고 자라도 쉬이 자랑하지 않는 겸양, 그러나 절로 드러나는 위엄. 사람을 품고 기르며 쉬게 하는 산, 용평 발왕산 이야기다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog05_01.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <p>용평 발왕산은 사계절 언제나 아름답다. 여느 산과 다른 점이라면 모두에게 열려 있다는 것이다. 케이블카를 이용하면 휠체어를 탄 사람도, 어린아이도, 거동이 불편한 어르신도 발왕산 정상에서 장쾌한 풍경을 즐길 수 있다. 해발 1458m 꼭대기에서 리조트까지 800m에 걸쳐 이어지는 숲에서는 자연을 배우며 살아갈 힘을 얻는 프로그램을 진행한다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="4" id3="1">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog05_02.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div><strong class="ar_title ">가만히 들어보는, 숲과 나무의 이야기</strong>
              <div class="txt_p">
                <p>발왕산의 숲은 자랑거리가 많다. 수천 년 수령의 주목 군락지는 물론 국내 최대 독일가문비나무 군락지가 자리했다. 국내에서 가장 둘레가 큰 것으로 추정되는 산사나무, 특이한 모양으로 자라나 위트 있는 이름으로 불리는 겸손나무(숲길을 가로질러 자라 길을 통과하는 사람들은 인사를 하듯 고개를 숙이고 걸어야 한다)와 서울대의 심벌을 닮은 서울대나무 등 구경할 나무도 많다. 특히 정상 부근에 서식하는 마유목은 발왕산
                  탐방의 핵심 코스다. 마가목 씨가 야광나무 안에 발아해 야광나무 몸통 속으로 뿌리를 내린 국내 유일의 이종(異種) 복합 일체형 나무다. 이 세상에서 유일한 마가목이라는 뜻으로, 마유목이라고 이름 붙였다. 마가목이 자라며 야광나무가 뒤틀렸는데, 그 수피가 경이롭다. 사람들이 나무를 보며 감동하는 이유는 상생의 의미를 지녀서다. 야광나무는 쓰러져 고사할 만한 수령이 지났음에도 마가목이 파고들어 자란 덕에 지금까지
                  꿋꿋하게 살아 있다고 한다. 소나무와 자작나무가 군락을 이룬 지혜숲길, 주목 치유숲길, 산악인 엄홍길의 이름을 딴 등산 코스 엄홍길, 독일가문비나무 치유숲길 등 리조트가 있는 지대에서 정상까지는 8개 트레킹 코스가 펼쳐진다.</p>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="2" id3="2">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog05_03.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="2" id3="3">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog05_04.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div><strong class="ar_title ">산에 몸을 누이면</strong>
              <div class="txt_p">
                <div>용평리조트는 발왕산의 아름다운 생태를 많은 이들과 공유하기 위해 다채로운 체험 프로그램을 꾸렸다. 나에게 주는 진정한 휴식이라는 의미의 아휴(我休), 황후의 궁중 산책, 임금님의 밤 나들이, 발왕산 숲속 걷기, 발왕산 천기누설, 발왕산 백패킹 등은 봄부터 초가을까지 즐길 수 있는 프로그램이다. 1박 2일 일정의 백패킹을 제외한 프로그램은 3~6시간 동안 진행한다. 프로그램은 산림욕 체조, 숲 좌식 명상, 숲
                  와식 명상, 약선차 테라피, 식물 향기 요법, 별달거리 힐링 체험, 향낭 만들기, 발왕수 체험, 크나이프 족욕, 음악을 들으며 건강 지압기 밟기, 달팽이 걷기, 발왕밥 도시락 먹기 등으로 구성했다. 개인·가족·단체 모두 참여할 수 있으며, 사전 공고를 통해 예약자를 받는다. 자리가 남아 있는 경우 현장 구매도 가능하다.</div>
                <div>해발 800m 고지의 겨울은 매섭다. 이 기간 동안은 숲 프로그램을 잠시 쉰다. 대신 실내에서 할 수 있는 프로그램을 알차게 준비했다. 힐링과 면역력 강화를 위해 자기 수련과 휴식의 시간을 갖는 명상요가, 발왕산에서 나는 약초와 나무로 소도구나 비누, 립밤을 만드는 공예 체험, 편백이나 대나무 목침을 베고 스스로 아로마 마사지를 하며 낮잠을 자는 아로마 힐링, 요가 매트에서 몸을 움직이며 면역력을 기르는
                  니시 요법, 개인 취향에 맞게 내린 약선차를 마시며 휴식하는 약선차 힐링 타임 등이다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="2" id3="4">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog05_05.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <hr>
              <div class="txt_p pb10">
                <div><span style="font-weight: bold;">용평리조트 발왕산</span></div>
                <div> - 주소 : 강원도 평창군 대관령면 올림픽로 715</div>
                <div> - 문의 : 033-335-5757</div>
                <div> - 홈페이지 : <a href="http://www.yongpyong.co.kr" target="_blank">http://www.yongpyong.co.kr</a></div>
                <div>케이블카 월요일 휴무, 사전 예약 필수, 주차가능</div>
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
