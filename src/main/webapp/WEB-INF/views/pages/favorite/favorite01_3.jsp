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
                <span class="ico">좋아요</span><span class="num" id="conLike">12</span>
              </button>
              <button type="button" class="btn_sharing" onclick="openShare();">
                <span class="ico">공유하기</span><span class="num" id="conShare">9</span>
              </button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">1,399</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>산책하기 좋은 도심 속 힐링 명소, 광주호호수생태원</h2>
            <div class="area_address">
              <span class="address">광주 북구</span>
              <span id="modi_date">수정일 : 2020.05.18</span>
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
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="1" id3="0">
                    <img src="resources/home/assets/img/favorite/favorite03_01.jpg" alt="걷기만 해도 힐링이 되는 광주호호수생태원">
                  </button>
                  <strong class="tit">걷기만 해도 힐링이 되는 광주호호수생태원</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 광주 시민이 사랑하는 힐링 명소,
                  광주호호수생태원은 물가와 숲속을 거닐며 한가로운 오후를 만끽하기 좋은 곳이다. 생태 연못, 습지 보전 지역, 호수 전망대, 메타세쿼이아 길, 버드나무 군락 등 볼거리가 풍성하고 포토 존이 많아 나들이와 데이트 코스로 인기다. 가사 문학 관련 유적지 식영정, 소쇄원, 환벽당과 함께 하루 일정으로 즐기기에도 그만이다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="3" id3="1">
                    <img src="resources/home/assets/img/favorite/favorite03_02.jpg" alt="광주호호수생태원 내 인기 포토 존">
                  </button>
                  <strong class="tit">광주호호수생태원 내 인기 포토 존</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">광주호는 광주 북구, 담양군 고서면과 가사문학면에 걸쳐 있는 인공 호수다. 1970년대에 영산강 유역 개발 사업의 하나로 댐을 건설하면서 생겼다. 호수생태원은 2006년 광주호 상류에 들어섰다. 잔잔한 호수 주변으로 산책로가 이어지고, 군데군데 전망대와 쉼터도 있다. 봄이면 진달래와 개나리가 피고, 여름에는 수국, 초가을에는 붉은 꽃무릇과 새하얀 구절초
                  군락이 눈길을 사로잡는다. 다양한 수생식물과 조류, 파충류, 양서류, 어류, 곤충류를 관찰할 수 있어 자연 학습장으로도 이용된다. 원내에 마련된 무등산생태탐방원에서 계절별 자연 놀이와 탐방 프로그램을 운영한다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="5" id3="2">
                    <img src="resources/home/assets/img/favorite/favorite03_03.jpg" alt="풀피리길, 별뫼길, 가물치길 등 예쁜 이름이 붙은 산책로가 이어진다."></button>
                  <strong class="tit">풀피리길, 별뫼길, 가물치길 등 예쁜 이름이 붙은 산책로가 이어진다.</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">광주호호수생태원은 2018년 4월 공식 인증을 받은 무등산권세계지질공원 자연 명소 중 한 곳이기도 하다. 산책로 6개(버들길, 풀피리길, 별뫼길, 가물치길, 돌밑길, 노을길)는 총 5km로, 산책과 조망을 포함해 2시간 30분~3시간이면 넉넉히 돌아볼 수 있다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="7" id3="3">
                    <img src="resources/home/assets/img/favorite/favorite03_04.jpg" alt="광주호호수생태원 스탬프투어 지도">
                  </button>
                  <strong class="tit">광주호호수생태원 스탬프투어 지도</strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="8" id3="4">
                    <img src="resources/home/assets/img/favorite/favorite03_05.jpg" alt="광주호호수생태원 입구 맞은편에 있는 충효동 왕버들군">
                  </button>
                  <strong class="tit">광주호호수생태원 입구 맞은편에있는 충효동 왕버들군</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 인상적인 곳을 몇 군데 꼽아보자. 먼저 충효동 왕버들군(천연기념물 539호)이다. 광주호호수생태원 입구 맞은편에 거대한 왕버들 세 그루로, 수령이 400년 안팎에 높이 10m 내외다. 원래 소나무와 매실나무 각 한 그루, 왕버들 다섯 그루가 있었다는데, 지금은 왕버들 세 그루만 남았다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="10" id3="5">
                    <img src="resources/home/assets/img/favorite/favorite03_06.jpg" alt="판문점 도보다리를 재현한 시설">
                  </button>
                  <strong class="tit">판문점 도보다리를 재현한 시설</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">다음은 판문점 도보다리 재현 시설이다. 2018년 4월 1차 남북정상회담에서 화제를 모은 판문점 도보다리, 남북 정상이 마주한 의자와 탁자가 있다. 여기서 습지 위로 놓인 데크 산책로를 따라가면 9남매 왕버들을 만난다. 한 뿌리에서 9개 가지가 뻗어 나온 모양이 눈길을 끈다. 이 나무는 충효동 왕버들군의 자손이라고. 이곳에 벤치가 있어 호수를 바라보며
                  조용한 시간을 즐기기 적당하다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="12" id3="6">
                    <img src="resources/home/assets/img/favorite/favorite03_07.jpg" alt="메타세쿼이아 길 한쪽에 새하얀 구절초 군락이 풍경화처럼 펼쳐진다.">
                  </button>
                  <strong class="tit">메타세쿼이아 길 한쪽에 새하얀 구절초 군락이 풍경화처럼 펼쳐진다.</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">마지막으로 메타세쿼이아 길과 구절초 단지다. 탐방객이 가장 좋아하는 곳으로, 하늘을 향해 쭉 뻗은 메타세쿼이아가 늘어선 길을 느릿느릿 걷다 보면 스트레스가 사라지고 머리가 맑아지는 느낌이다. 길 한쪽에는 새하얀 구절초 군락이 풍경화처럼 펼쳐진다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="14" id3="7">
                    <img src="resources/home/assets/img/favorite/favorite03_08.jpg" alt="광주호호수생태원에서 도보 10분 거리에 한국가사문학관이 있다.">
                  </button>
                  <strong class="tit">광주호호수생태원에서 도보 10분 거리에 한국가사문학관이 있다.</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 광주호호수생태원은 광주에 속하지만 담양이 지척이다. 담양은 조선 중기 국문학사의 한 축을 장식한 가사 문학의 산실이 아닌가. 가사 문학 하면 떠오르는 소쇄원과 식영정이 자동차로 5분 이내 거리에 있고, 한국가사문학관도 걸어서 10분이 채 안 걸리니 들르지 않을 이유가 없다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="16" id3="8">
                    <img src="resources/home/assets/img/favorite/favorite03_09.jpg" alt="자연과 인공이 어우러진 소쇄원">
                  </button>
                  <strong class="tit">자연과 인공이 어우러진 소쇄원</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 특히 담양 소쇄원(명승
                    40호)은 자연과 인공이 어우러진 조선 중기 대표 정원으로 꼽힌다. 계곡을 사이에 두고 대봉대, 제월당, 광풍각 등 건물의 조화가 빼어나다. 광주 쪽에는 조선 시대 별서 정원으로 호남 지방 누정 문화를 보여주는 환벽당(명승 107호)이 있다. <br>
                  </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="18" id3="9">
                    <img src="resources/home/assets/img/favorite/favorite03_10.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="19" id3="10">
                    <img src="resources/home/assets/img/favorite/favorite03_11.jpg" alt="무등산 자락에서 가장 오래된 사찰, 증심사">
                  </button>
                  <strong class="tit">무등산 자락에서 가장 오래된 사찰, 증심사</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">의재미술관에서 등산로를 따라 조금 더 올라가면 무등산 자락에서 가장 오래된 사찰, 증심사에 닿는다. 860년에 창건했지만 소실과 복구를 거듭해 옛 건물이 거의 남아 있지 않다. 대웅전 뒤쪽 오백전이 가장 오래된 건물로, 1609년경에 지은 것으로 추정한다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="21" id3="11">
                    <img src="resources/home/assets/img/favorite/favorite03_12.jpg" alt="양림역사문화마을에 있는 우일선 선교사 사택">
                  </button>
                  <strong class="tit">양림역사문화마을에 있는 우일선 선교사 사택</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 근대 풍경이 집약된 양림역사문화마을, 복합 문화 예술 기관인 국립아시아문화전당(ACC)도 가볼 만하다. 100여 년 전 광주에서 처음 서양 문물을 받아들인 양림동에는 당시 지은 서양식 건물과 근대 한옥이 어우러져 시간이 멈춘 듯 매혹적인 시공간 속으로 여행자를 안내한다. 예쁘고 개성 있는 카페와 식당, 게스트하우스도 많다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="23" id3="12">
                    <img src="resources/home/assets/img/favorite/favorite03_13.jpg"
                      alt="5·18민주화운동과 관련한 역사적 건물은 지상에,<br>새로 지은 건물은 지하에 자리한 국립아시아문화전당">
                    </button>
                    <strong class="tit">5·18민주화운동과 관련한 역사적 건물은 지상에, 새로 지은 건물은 지하에 자리한 국립아시아문화전당</strong>
                  </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">
                  <div>옛 전남도청 일대에 지은 국립아시아문화전당은 건물 구조와 배치가 독특하다. 5·18민주화운동과 관련한 역사적 건물은 지상에, 새로 지은 건물은 지하에 자리한다. 신축 건물 옥상은 도심 속 공원으로 조성했다. 예약 후 해설사와 함께하는 투어 프로그램에 참가하면 더 알차게 관람할 수 있다.</div>
                  <div><br></div>
                  <div>〈당일 여행 코스〉<br></div>
                  <div>광주호호수생태원→담양 소쇄원→양림역사문화마을→국립아시아문화전당</div>
                  <div><br></div>
                  <div>〈1박 2일 여행 코스〉</div>
                  <div>첫째 날 / 광주호호수생태원→담양 소쇄원→증심사</div>
                  <div>둘째 날 / 양림역사문화마을→국립아시아문화전당</div>
                </div>
              </div>
              <hr><strong class="ar_title verticalLine">여행 정보</strong>
              <div class="txt_p">
                <div> &nbsp;&nbsp;&nbsp;&nbsp;○ 관련 웹 사이트 주소</div>
                <div> &nbsp;- <a class="con_link" href="http://tour.gwangju.go.kr" title="[새창열림] ‘오매광주(광주문화관광)’ 홈페이지로 이동" target="_blank"> 오매광주(광주문화관광) </a></div>
                <div> &nbsp;- <a class="con_link" href="https://www.gwangju.go.kr/greencity" title="[새창열림] ‘광주광역시 푸른도시사업소(광주호호수생태원)’ 홈페이지로 이동" target="_blank"> 광주광역시 푸른도시사업소(광주호호수생태원) </a></div>
                <div> &nbsp;- <a class="con_link" href="http://www.jeungsimsa.org" title="[새창열림] ‘증심사’ 홈페이지로 이동" target="_blank"> 증심사 </a></div>
                <div> &nbsp;- <a class="con_link" href="https://visityangnim.kr" title="[새창열림] ‘양림역사문화마을’ 홈페이지로 이동" target="_blank"> 양림역사문화마을 </a></div>
                <div> &nbsp;- <a class="con_link" href="http://www.acc.go.kr" title="[새창열림] ‘국립아시아문화전당’ 홈페이지로 이동" target="_blank"> 국립아시아문화전당 </a></div>
                <div> <br></div>
                <div> ○ 문의 전화</div>
                <div> &nbsp;- 광주광역시청 관광진흥과 062)613-3620</div>
                <div> &nbsp;- 광주호호수생태원 062)613-7892</div>
                <div></div>
                <div> &nbsp;- 증심사 062)226-0108</div>
                <div> &nbsp;- 국립아시아문화전당 1899-5566</div>
                <div> <br></div>
                <div> ○ 대중교통 정보</div>
                <div> [기차] 용산역-광주송정역, KTX 하루 20여 회(05:10~22:25) 운행, 약 1시간 50분 소요. 서울역-광주송정역, KTX 하루 7회(06:20~19:30) 운행, 약 2시간 소요.</div>
                <div> 광주송정역 정류장에서 송정19번·160번 버스 이용, 서방시장 정류장에서 충효187번 버스 환승, 광주호호수생태원 정류장 하차, 약 1시간 30분 소요.</div>
                <div> * 문의 : <a class="con_link" href="http://www.letskorail.com" title="[새창열림] ‘레츠코레일’ 홈페이지로 이동" target="_blank"> 레츠코레일 </a> 1544-7788, <a title="[새창열림]‘레츠코레일’ 홈페이지로 이동" href="http://www.letskorail.com" target="_blank"> &nbsp; </a>
                  <a class="con_link" href="http://www.bus.gwangju.go.kr" title="[새창열림] ‘광주광역시 버스운행정보’ 홈페이지로 이동" target="_blank"> 광주광역시 버스운행정보 </a> 062)120</div>
                <div> [버스] 서울-광주, 센트럴시티터미널에서 5~15분 간격(05:30~다음 날 02:00) 운행, 약 3시간 20분 소요.</div>
                <div> 광주종합버스터미널 정류장에서 수완03번 버스 이용, 교육대 정류장에서 충효187번 버스 환승, 광주호호수생태원 정류장 하차, 약 1시간 소요.</div>
                <div> * 문의 : 센트럴시티터미널 02)6282-0114,&nbsp; <a class="con_link" href="http://www.kobus.co.kr" title="[새창열림] ‘센트럴시티터미널 고속버스통합예매’ 홈페이지로 이동" target="_blank" style="background-color: rgb(255, 255, 255);"> 고속버스통합예매</a>, <a class="con_link"
                    href="http://www.usquare.co.kr" title="[새창열림] ‘광주종합버스터미널’ 홈페이지로 이동" target="_blank" style="background-color: rgb(255, 255, 255);">광주종합버스터미널 </a> 062)360-8114,&nbsp; <a class="con_link" href="http://www.bus.gwangju.go.kr"
                    title="[새창열림] ‘광주광역시 버스운행정보’ 홈페이지로 이동" target="_blank" style="background-color: rgb(255, 255, 255);"> 광주광역시 버스운행정보 </a> 062)120</div>
                <div> <br></div>
                <div> ○ 자가운전 정보</div>
                <div> 호남고속도로 창평 IC→광주·무등산국립공원·소쇄원·가사문학관 방면→창평현로→가사문학로→송강로→충효샘길→광주호호수생태원</div>
                <div> <br></div>
                <div> ○ 숙박 정보</div>
                <div> &nbsp;- <a class="con_link" href="https://www.gwangju.go.kr/greencity" title="[새창열림] ‘광주시민의숲야영장’ 홈페이지로 이동" target="_blank"> 광주시민의숲야영장 </a> : 북구 추암로, 062)971-6467</div>
                <div> &nbsp;- <a class="con_link" href="http://acchotel.kr" title="[새창열림] ‘ACC디자인호텔’ 홈페이지로 이동" target="_blank"> ACC디자인호텔 </a> : 동구 금남로, 062)234-8000</div>
                <div> &nbsp;- <a class="con_link" href="http://www.hotelmudeungpark.co.kr" title="[새창열림] ‘호텔무등파크’ 홈페이지로 이동" target="_blank"> 호텔무등파크 </a> : 동구 지호로164번길, 062)226-0011</div>
                <div> <br></div>
                <div> ○ 식당 정보</div>
                <div> &nbsp;- 외할머니집 : 닭불고기·떡갈비, 북구 충효샘길, 062)972-3824</div>
                <div> &nbsp;- <a class="con_link" href="http://limnulee.dothome.co.kr" title="[새창열림] ‘서석정’ 홈페이지로 이동" target="_blank"> 서석정 </a> : 한정식, 북구 설죽로404번길, 062)263-0077</div>
                <div> &nbsp;- 대광식당 : 육전·굴전, 동구 서석로7번길, 062)226-3939</div>
                <div> <br></div>
                <div> ○ 주변 볼거리</div>
                <div> 대인예술시장, 동명동카페거리, 사직공원전망타워, 1913송정역시장, 국립광주과학관</div>
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
