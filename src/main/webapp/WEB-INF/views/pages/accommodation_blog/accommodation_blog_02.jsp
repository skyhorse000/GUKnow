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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">4</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">21</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">228</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>테라피 스파 소베</h2>
            <div class="area_address">
              <span class="address">광주 서구</span>
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
                <p>세심하게 고민한 흔적이 보인다. 인테리어, 프로그램 구성, 스파에서 사용하는 에스테틱 브랜드까지, 이곳을 구성한 모든 것에 엄지를 들어 올리게 된다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog02_01.jpg" alt="" style="max-height: 413px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div>라틴어로 건강과 아름다움을 뜻하는 ‘solus’와 ‘bellus’의 앞 두 글자씩 따 ‘소베(sobe)’다. 스파 브랜드 ‘테라피 스파 소베’는 자연이 우리에게 준 본연의 건강과 아름다움을 추구한다. 지친 현대인에게 귀하고 편안한 시간을 선사하기 위해 끊임없이 연구하는 이곳은 스파 애호가 누구라도 한 번 발을 들이면 쉽사리 발이 떨어지지 않는다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="4" id3="1">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog02_02.jpg" alt="" style="max-height: 413px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div><strong class="ar_title ">세심한 구성의 프로그램</strong>
              <div class="txt_p">
                <div>스파의 진가는 상담 과정에서 먼저 드러난다. 윈터드림, 레드베리, 레몬 스카이, 페퍼민트, 루이보스 바닐라 등 마음을 안정시키는 허브차를 마시며 현재의 몸 상태, 생활 습관, 수면의 질, 체질, 희망하는 트리트먼트 결과에 대한 의견을 나눈다. 최선의 결과를 낼 수 있도록 전문적이고 체계적인 교육을 받은 테라피스트가 상담 내용을 토대로 프로그램을 추천한다. 피부 개선, 라스톤 테라피, 하이드로 비쉬, 홀리즘
                  웰에이징, 슬리밍 등 총 11가지 갈래에서 세분화된 프로그램의 수가 55개에 달한다. 그중 시그너처는 거북목에 따른 통증을 완화하는 거북목 라인과 몸 전체의 이완을 돕고 스트레스를 낮추는 홀바디, 하이드로 비쉬 등이다.</div>
                <div>
                  <div>거북목 라인케어는 대나무를 이용해 손이 닿지 않는 깊은 근육 중 뭉친 부위를 푸는 것으로, 목 관절의 가동성을 높인다. 강도에 따라 자극이 다른데, 아프지 않고 편안하다. 몸 전체를 어루만지며 달래는 홀바디 프로그램은 풋 스파로 시작한다. 아로마 오일을 희석한 따뜻한 물에 발을 담그고 10분간 휴식을 취하는데, 이 과정에서 혈액순환이 원활해지고 긴장이 완화되어 본 케어 효과가 높아진다. 족욕으로 시작한
                    홀바디 프로그램은 1시간 40분 동안 진행된다. 하이드로 비쉬를 이용한 아로마 소울 스크럽은 전신에 스크럽 제품을 바른 후 수압을 이용해 몸의 이완을 돕는 스파 프로그램이다. 스팀과 원적외선을 지속적으로 분사하고, LED 광선을 이용해 컬러테라피를 곁들인다. 자연의 소리가 그윽하게 들리는 뮤직 테라피는 마음의 안정을 돕는다.</div>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="2" id3="2">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog02_03.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="2" id3="3">
                    <img src="resources/home/assets/img/accommodation_blog/accommodation_blog02_04.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div><strong class="ar_title ">품격 있는 스파를 위한 두 가지, 공간과 제품</strong>
              <div class="txt_p">
                <div>스파로 들어서면 스스로에게 선물을 선사하는 것 같은 기분이 든다. 고급스러운 공간은 부드럽고 은은하게 퍼지는 조명 때문에 따뜻한 기운이 감돈다. 벽면 곳곳에는 인상파 화풍의 그림이 걸려 있다. 케어를 마친 고객이 그림을 감상하며 휴식을 마무리하길 바라는 마음으로 걸어 두었다고 한다. 로비, 솔리움, 헤드스파 룸, 7개의 스파 룸, 맘스 룸, 요가실, 스파 퀴진이 이어지는 구조는 깊고 아늑한 미로를 걷는
                  듯하다. 유선형으로 이어지는 복도 중간에는 S자 형태로 휴식 공간을 마련했다. 제일 안쪽의 스파퀴진은 족욕 공간 앞에 나란히 놓은 커다란 원형 욕조 3개로 구성돼 있다. 파티 룸 느낌의 워터 테라피 공간으로 스파 케어를 받으며 모임을 즐길 수 있는 장소다. 7개의 스파실 중 2개는 커플 룸이다. 모든 룸이 넓고 고급스럽다. 스파 베드 안쪽에는 개방형 원형 욕조와 샤워실을 배치했다. </div>
                <div>테라피 스파 소베는 마리꼬, 탈리온, 브레라인, 아누비스, 비올로직호쉐쉬 등 스파 마니아가 열광하는 최고급 에스테틱 브랜드 제품을 사용한다. 특히 탁월한 피부 개선 효과를 자랑하는 비올로직호쉐쉬는 한국에서 좀처럼 접하기 힘든 브랜드로, 서울의 5성급 호텔 등 전국 7개의 스파에서만 사용하는 최고급 제품이다. 공간, 사용하는 제품, 프로그램 구성 모두 최고 수준의 호텔 스파와 견줄 만한다. 어쩌면 넘어설 지도
                  모르겠다.</div>
              </div>
              <hr>
              <div class="txt_p pb10">
                <div><span style="font-weight: bold;">테라피 스파 소베</span></div>
                <div> - 주소 : 광주 서구 상무중앙로 42</div>
                <div> - 문의 : 062-416-3000</div>
                <div> - 홈페이지 : <a href="http://www.spa-sobe.com" target="_blank">http://www.spa-sobe.com</a></div>
                <div>월요일 휴무, 예약 필요, 주차가능</div>
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
