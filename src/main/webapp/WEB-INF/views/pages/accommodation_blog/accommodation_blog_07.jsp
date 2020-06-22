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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">0</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">1</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">159</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>아일랜드캐슬 리조트</h2>
            <div class="area_address">
              <span class="address">경기 의정부시</span>
              <span id="modi_date">수정일 : 2020.03.09</span>
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
                <p>온천수로 다채로운 아쿠아테라피를 경험하려면 왠지 장거리 여행을 떠나야만 할 것 같다. 이런 선입견을 통쾌하게 깨뜨린 아일랜드캐슬은 가벼운 마음으로 떠나는 도심 속 휴식처다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog04_01.jpg" alt="" style="max-height: 413px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <p>수도권 북부 최대 규모 워터파크를 갖춘 아일랜드캐슬 리조트에서는 사계절 내내 따뜻한 온천수로 수(水)치료와 물놀이를 즐길 수 있다. 호텔과 온천·사우나·찜질방 등 스파 시설, 실내·외 워터파크를 고루 갖춘 이곳은 누구와 함께 찾아도 유쾌한 힐링 명소다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="4" id3="1">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog04_02.jpg" alt="" style="max-height: 413px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div><strong class="ar_title ">뭉친 곳을 풀어주는 치유의 물</strong>
              <div class="txt_p">
                <p>아일랜드캐슬은 26℃의 중탄산나트륨 온천수를 사용한다. 실내·외 워터파크를 제외한 사우나, 바데풀을 채운 물이 모두 이 온천수다. 거대한 기둥 20여 개가 우뚝 선 바데풀은 그리스 신화 속 신들의 목욕탕을 보는 듯한 느낌이다. 피부염, 기관지염, 관절 통증 등을 완화하는 효과가 있다고 알려진 온천수가 버튼만 누르면 여기저기서 세차게 뿜어져 나온다. 수압을 이용해 뭉친 근육을 이완하는 바데풀의 다양한 코스를 두루
                  맛보고 나면 뼛속 깊은 곳의 통증마저 눈 녹듯 사라진다. 목과 어깨를 마사지하는 넥 샤워, 누운 자세에서 등, 허리, 종아리 부위를 강한 수압으로 마사지하는 백사이드 제트, 발바닥 아래에서 수압 강한 물이 올라와 물 위를 걷는 것 같은 느낌을 주는 바디 부스팅, 물이 흐르는 방향과 반대 방향으로 걸으면 관절 통증이 완화되는 다이내믹 워킹 등 10개의 코스는 각각 자극하는 부위가 다르다. 하나도 놓칠 수 없는
                  이유다.</p>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="2" id3="2">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog04_03.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="2" id3="3">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog04_04.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <p>바데풀에서는 수치료 수중 운동 프로그램을 진행한다. 30분간 활기찬 음악에 맞춰 신체에 부담이 가지 않는 저강도 수중 운동과 스트레칭, 아쿠아로빅, 부력이 강한 아쿠아봉을 수중에서 접었다 펴는 근력운동 등 다양한 동작을 수행한다. 바데풀 주변은 테마와 온도가 다른 이벤트탕이다. 노천탕까지 이어지는 이벤트탕은 총 15개로, 온천수에 계절에 맞춰 건강에 좋은 약재와 아로마를 배합해 넣는다.</p>
              </div><strong class="ar_title ">마음을 치유하는 물놀이, 워터파크</strong>
              <div class="txt_p">
                <p>어른 아이 할 것 없이 물놀이는 언제나 즐겁다. 아일랜드캐슬은 실내외 워터파크에 다채로운 시설을 마련했다. 마야문명을 재현한 벽화가 그려진 실내 워터파크는 지붕에 난 둥글고 큰 창을 통해 따사로운 볕이 든다. 개방감이 좋아 실내여도 답답한 느낌이 없다. 열네 종류의 다이내믹한 웨이브를 경험할 수 있는 파도풀, 키즈풀, 실내 유수풀, 어드벤처 플레이 등으로 구성된 실내 워터파크를 지나면 실외 노천탕이 이어진다.
                  실외 노천탕은 이벤트탕, 폭포탕, 히노키탕이 차례로 나오는 구조다.</p>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="2" id2="2" id3="4">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog04_05.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="2" id2="2" id3="5">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog04_06.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <p>이곳을 지나 2층으로 오르면 실외 워터파크다. 튜브슬라이드, 토네이도 텐트럼, 2개의 스피드 슬라이드, 프로볼 슬라이드, 아쿠아플레이, 토렌트 리버 등 이름만 들어도 아드레날린이 솟구치는 다이나믹한 물놀이 기구가 준비되어 있다. 실외 워터파크는 동계 에는 휴장하니 참고하자. 수치료, 물놀이를 두루 경험했다면 찜질방에서 피로를 풀 차례다. 찜질 스파는 규모에 비해 구성이 알차다. 황토불가마, 참숯방, 히말라야
                  암염이 켜켜이 쌓인 소금방, 편백나무방, 릴랙스 홀, 안마의자가 비치된 성인 전용 릴랙스 룸 등이 물놀이로 쌓인 피로를 풀어준다.</p>
              </div>
              <div class="txt_p pb10">
                <div><span style="font-weight: bold;">아일랜드캐슬 리조트</span></div>
                <div> - 주소 : 경기도 의정부시 장곡로 22</div>
                <div> - 문의 : 031-894-0300</div>
                <div> - 홈페이지 : <a href="http://www.island-castle.co.kr" target="_blank">http://www.island-castle.co.kr</a></div>
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
