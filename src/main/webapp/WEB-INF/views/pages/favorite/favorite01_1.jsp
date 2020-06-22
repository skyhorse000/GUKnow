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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">21</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">34</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">3,449</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>유달산 아래서 만나는 따뜻한 감성, 목포 서산동 시화골목</h2>
            <div class="area_address">
              <span class="address">전남 목포시</span>
              <span id="modi_date">수정일 : 2020.03.30</span>
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
              <div class="img_typeBox typeFix clfix" >
                <div>
                  <button type="button" id="0" id2="1" id3="0">
                    <img src="resources/home/assets/img/favorite/favorite01_01.jpg" alt="시화골목이 자리한 목포 서산동 일대의 봄 풍경">
                  </button>
                  <strong class="tit">시화골목이 자리한 목포 서산동 일대의 봄 풍경</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">
                  <div> 목포 유달산 자락에 있는 서산동 일대는 산자락을 따라 집이 다닥다닥하고 그 사이로 골목이 거미줄처럼 이어져, 멀리서 보면 커다란 성을 연상케 한다. 그중에도 시화골목은 오랜
                    세월의 흔적이 켜켜이 쌓인 곳이다. 삶의 애환과 향수가 깃든 골목에서 과거를 추억하고 아름다운 현재를 만난다. 서산동은 사람들이 정착해 마을을 이루기 전에 넓은 보리밭이었다. 보리타작을 주로 한 ‘보리마당’이 지금도 있고, ‘보리마당로’라는 도로명이 시화골목의 옛 모습을 대신한다. </div>
                  <div> <br> </div>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="3" id3="1">
                    <img src="resources/home/assets/img/favorite/favorite01_02.jpg" alt="영화 〈1987〉을 촬영한 ‘연희네슈퍼’">
                  </button>
                  <strong class="tit">영화 〈1987〉을 촬영한 ‘연희네슈퍼’</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">시화골목은 ‘연희네슈퍼’에서 시작한다. 영화 〈1987〉에서 연희(김태리)네 집으로 등장한다. 1980년대 풍경을 그대로 간직한데다, 시나리오작가가 목포 출신이어서 촬영지로 낙점됐다고 한다. 연희네슈퍼에는 어린 시절 추억이 떠오르는 다양한 물건이 있다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="5" id3="2">
                    <img src="resources/home/assets/img/favorite/favorite01_03.jpg" alt="목포 출신 예술가의 시와 그림을 널빤지에 새긴 서산동 시화골목">
                  </button>
                  <strong class="tit">목포 출신 예술가의 시와 그림을 널빤지에 새긴 서산동 시화골목</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 연희네슈퍼를 지나면 바로
                  시화골목이다. 입구에서 우량아선발대회, 브리사 자동차, 《소년중앙》, 밀키스 등 추억을 이어주는 포스터를
                  차례로 만난다. 시화골목은 목포 어촌을 상징하는 서산동·온금동 사람들의 삶과 애환을 기리기 위해 지역 시인과 화가, 주민들이 2015년부터 3년에 걸쳐 조성했다. 시화골목은 여느 벽화 골목과 차원이 다르다. ‘인문 도시 서산동 시화골목’이라는 표지판을 걸 만큼 사람을 중심으로 한 예술을 지향한다. 목포 출신 예술가의 시와 그림을 널빤지에 새겨 골목 곳곳에 걸고, 마을 어르신이 사는 집에는 주인의 사연을 담았다.
                  삶의 애환과 동심을 시와 그림에 새겼다. <br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="7" id3="3">
                    <img src="resources/home/assets/img/favorite/favorite01_04.jpg" alt="시화골목이 세 갈래로 나뉘는 지점">
                  </button>
                  <strong class="tit">시화골목이 세 갈래로 나뉘는 지점</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">천천히 오르는 계단과 고만고만한 집들이 어깨를 맞댄 채 이어진다. 오르다 보면 커다란 전봇대와 함께 분기점 역할을 하는 집이 보인다. 동네 어르신들이 둘러앉아 두런두런 이야기를 나누는 쉼터이기도 하다. 여기서 골목이 세 개로 나뉜다. 왼쪽에 첫째 골목과 ‘바보마당’으로 가는 길이, 오른쪽에 둘째·셋째 골목으로 가는 길이 이어진다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="9" id3="4">
                    <img src="resources/home/assets/img/favorite/favorite01_05.jpg" alt="동백꽃이 활짝 핀 옛 공동 화장실">
                  </button>
                  <strong class="tit">동백꽃이 활짝 핀 옛 공동 화장실</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">시화골목에는 회색빛 시멘트 풍경이 대부분이지만, 따뜻한 삶의 모습도 있다. 커다란 고무 대야에 갖가지 화초와 채소가 자라고, 화분이 담장과 나란히 놓였다. 보리마당 바로 아래 예전에 사용하던 공동 화장실이 인상적이다. 골목을 걷다 보면 작은 창가에서 이야기 나누는 소리가 들리고, 식사 시간이면 구수한 찌개 향이 코를 자극한다. 상추와 대파 등 갖은 채소를
                  심은 텃밭도 쉽게 만난다. 정겹고 소중한 풍경이 오감을 만족하게 한다. 골목을 오르다 돌아서면 바다가 조금씩 보이고, 보리마당에 올라서면 바다 건너 영암 땅과 고하도가 한눈에 들어온다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="11" id3="5">
                    <img src="resources/home/assets/img/favorite/favorite01_06.jpg" alt="할머니의 삶을 함축적으로 보여주는 시">
                  </button>
                  <strong class="tit">할머니의 삶을 함축적으로 보여주는 시</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">시화골목은 모두 수직으로 이어진다. 첫째 골목을 따라 올라갔다면 보리마당에서 둘째 골목으로, 다시 셋째 골목을 따라 보리마당으로 올라가는 코스가 일반적이다. 둘째·셋째 골목은 시화골목에 거주하는 어르신들이 시인이자 화가가 된다. “진도에서 태어나 / 물 건너 하의도로 간 시집 / 첫날밤 신랑이 마음에 안 들어 / 어떻게 살까…? / 그래도 나밖에 모르던
                  남편 / 딸 하나 낳고 / 마흔여덟에 돌아가셔버리니 / 연탄 지게 져가며 온갖 잡일로 / 가버린 내 인생.” 자서전을 시 한 편으로 함축한 듯하다. 힘겹게 살아온 어르신들의 고된 인생이 묵묵히 펼쳐진다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="13" id3="6">
                    <img src="resources/home/assets/img/favorite/favorite01_07.jpg" alt="바보마당의 빈집은 예술가들이 전시장으로 사용한다.">
                  </button>
                  <strong class="tit">바보마당의 빈집은 예술가들이 전시장으로 사용한다.</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">바보마당은 ‘바다가 보이는 마당’을 줄여 부르는 이름이다. 시화골목에서 가장 넓은 공간이고, 주변의 빈집은 예술가들이 전시장으로 사용한다. 서산동 골목 풍경을 사진으로 담은 ‘골목의 바다＋사진’, 화려한 꽃의 색감이 인상적인 ‘세상에서 가장 작은 미술관 이꽃’, 독특한 아이디어가 돋보이는 ‘K오빠의 환경미술관’ 등 차분히 둘러보기 좋다. 바보마당에서
                  내려오면 흰 페인트로 주변을 칠해 눈 쌓인 풍경을 보는 듯하다. 이 풍경 속에 카페 ‘눈의꽃’이 들어앉았다. 아주 작은 마당이 있고, 지붕 너머로 바다가 보인다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="15" id3="7">
                    <img src="resources/home/assets/img/favorite/favorite01_08.jpg" alt="옛날 방식 그대로 만든 ‘연희네그오빠’의 쑥호떡">
                  </button>
                  <strong class="tit">옛날 방식 그대로 만든 ‘연희네그오빠’의 쑥호떡</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">시화골목 입구에 자리한 ‘연희네그오빠’는 쑥을 넣고 옛날 방식 그대로 만든 쑥호떡, 매생이떡으로 만든 소떡소떡, 배추와 무말랭이, 미역귀 등을 넣어 국물이 맛있는 떡볶이 등을 낸다. 먹거리가 거의 없는 시화골목에서 허기를 달래주는 곳이니 꼭 들러보자.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="17" id3="8">
                    <img src="resources/home/assets/img/favorite/favorite01_09.jpg" alt="유달산 일등바위에서 바라본 풍경">
                  </button>
                  <strong class="tit">유달산 일등바위에서 바라본 풍경</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 2019년 9월 개통한 목포해상케이블카는 산과 바다, 섬을 한 번에 누릴 수 있어 매력적이다. 스테이션 세 곳을 거치며 탑승 거리
                  3.23km, 탑승 시간은 왕복 40분이나 된다. 북항스테이션을 출발하면 유달산 이등바위와 일등바위 사이를 지나서 ㄱ자로 꺾여 바다 건너 고하도에 닿는다. 바다를 건널 때는 높이 155m 케이블카 타워를 지나 최고의 긴장감을 선사한다. <br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="19" id3="9">
                    <img src="resources/home/assets/img/favorite/favorite01_10.jpg" alt="판옥선 5척을 쌓은 듯한 고하도전망대">
                  </button>
                  <strong class="tit">판옥선 5척을 쌓은 듯한 고하도전망대</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">목포해상케이블카를 이용할 때는 시간을 넉넉히 잡는 게 좋다. 유달산과 고하도를 차분히 만나야 하기 때문이다. 유달산스테이션에서 내리면 일등바위까지 20분 정도 걸린다. 높이 228m 일등바위 정상에 올라서면 탁 트인 전망이 일품이다. 고하도, 목포대교, 외달도, 달리도, 압해도 등 다도해 풍광과 목포 도심 풍경이 압권이다. 고하도스테이션에서 내려 판옥선
                  5척을 쌓은 듯한 고하도전망대를 거쳐 해안산책로를 따라 고하도 용머리까지 다녀오자. 유달산과 목포해상케이블카가 한눈에 들어온다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="21" id3="10">
                    <img src="resources/home/assets/img/favorite/favorite01_11.jpg" alt="고하도이충무공기념비를 모신 모충각">
                  </button>
                  <strong class="tit">고하도이충무공기념비를 모신 모충각</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">고하도는 잘 알려지지 않은 이순신 장군의 흔적이 있는 곳이다. 임진왜란 때 명량해전 이후 조선 수군은 고군산군도까지 올라갔다가 내려오면서 고하도에 106일 동안 전열을 가다듬었다. 이는 마지막 전투인 노량해전에서 이기는 밑거름이 됐다. 고하도 고하마을에는 고하도이충무공기념비(전남유형문화재 39호), 고하도이충무공유적(전남기념물 10호)이 있다. 한편
                  고하도는 우리나라 최초로 육지면을 재배한 곳으로, 일본이 세운 조선육지면발상지비가 있다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="23" id3="11">
                    <img src="resources/home/assets/img/favorite/favorite01_12.jpg" alt="목포해상케이블카 유달산스테이션 전망대에서 본 일몰">
                  </button>
                  <strong class="tit">목포해상케이블카 유달산스테이션 전망대에서 본 일몰</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">해가 질 무렵에 케이블카를 타도 좋다. 유달산스테이션 전망대나 고하도스테이션 옥상정원, 케이블카에서 일몰을 감상한다. 북항스테이션으로 돌아올 때는 유달산과 목포대교, 목포 시내 야경, 케이블카 타워의 경관 조명까지 만날 수 있다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="25" id3="12">
                    <img src="resources/home/assets/img/favorite/favorite01_13.jpg" alt="목포근대역사문화공간 가운데 용궁장 안쪽에 자리한 목포 해안로 붉은 벽돌창고">
                  </button>
                  <strong class="tit">목포근대역사문화공간 가운데 용궁장 안쪽에 자리한 목포 해안로 붉은 벽돌창고</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 목포는 일제강점기 유적이 많은 도시다. 목포근대역사관 1관 (구 목포일본영사관, 사적 289호)과 2관 (구 동양척식주식회사목포지점, 전남기념물 174호)을 비롯해 문화재가 수두룩하다. 특히 목포근대역사관 2관을 지나는 번화로를 중심으로 등록문화재 15개가 모여 있는
                  목포근대역사문화공간(국가등록문화재 718호)은 일제강점기부터 축적된 시간을 돌아보기 좋다. 용궁장 안쪽에 자리한 목포 해안로 붉은 벽돌창고(국가등록문화재 718-14호)도 인상적이다. 목포근대역사관 1·2관은 코로나바이러스감염증-19 확산 방지를 위해 임시 휴관 중이니 방문 전에 확인해야 한다. <br></div>
              </div>
              <div class="txt_p">
                <div>〈당일 여행 코스〉</div>
                <div>목포해상케이블카→목포근대역사관 1관(구 목포일본영사관)→목포근대역사관 2관(구 동양척식주식회사목포지점)→목포근대역사문화공간→서산동 시화골목</div>
                <div><br></div>
                <div>〈1박 2일 여행 코스〉</div>
                <div>첫째 날 / 해양유물전시관→목포자연사박물관→목포근대역사관 1관(구 목포일본영사관)→목포근대역사관 2관(구 동양척식주식회사목포지점)→목포근대역사문화공간→서산동 시화골목</div>
                <div>둘째 날 / 고하도(고하도이충무공유적-고하도전망대-해안산책로-용오름길)→목포해상케이블카</div>
              </div>
              <hr><strong class="ar_title verticalLine">여행 정보</strong>
              <div class="txt_p">
                <div> ○ 관련 웹 사이트</div>
                <div> &nbsp;- <a title="[새창열림]‘목포문화관광’ 홈페이지로 이동" href="http://www.mokpo.go.kr/tour" target="_blank" class="con_link"> 목포문화관광 </a></div>
                <div> &nbsp;- <a title="[새창열림]‘목포해상케이블카’ 홈페이지로 이동" href="http://www.mmcablecar.com" target="_blank" class="con_link"> 목포해상케이블카 </a></div>
                <div> <br></div>
                <div> ○ 문의 전화</div>
                <div> &nbsp;- 목포시청 관광마케팅팀 061)270-8432</div>
                <div> &nbsp;- 목포해상케이블카 061)244-2600</div>
                <div> &nbsp;- 목포근대역사관 1관 061)242-0340</div>
                <div> &nbsp;- 목포근대역사관 2관 061)270-8728</div>
                <div> <br></div>
                <div> ○ 대중교통 정보</div>
                <div> [버스] 서울-목포, 센트럴시티터미널에서 하루 14~18회(05:35~다음 날 01:00) 운행, 약 3시간 50분 소요.</div>
                <div> 목포시외버스터미널 정류장에서 1번 버스 이용, 목포수협 정류장 하차, 연희네그오빠 사거리에서 좌회전, 연희네슈퍼까지 약 80m.</div>
                <div> * 문의 : 센트럴시티터미널 02)6282-0114 <a title="[새창열림]‘고속버스통합예매’ 홈페이지로 이동" href="http://www.kobus.co.kr" target="_blank" class="con_link"> 고속버스통합예매 </a> 목포종합버스터미널 1544-6886</div>
                <div> [기차] 용산역-목포역, KTX 하루 18회(05:10~22:25) 운행, 약 2시간 30분 소요. 수서역-목포역, SRT 하루 9회(05:10~21:10) 운행, 약 2시간 20분 소요.</div>
                <div> 목포역 건너편 정류장에서 1번 버스 이용, 목포수협 정류장 하차, 연희네그오빠 사거리에서 좌회전, 연희네슈퍼까지 약 80m.</div>
                <div> * 문의 : <a title="[새창열림]‘레츠코레일’ 홈페이지로 이동" href="http://www.letskorail.com" target="_blank" class="con_link"> 레츠코레일 </a> 1544-7788, <a title="[새창열림]‘SR’ 홈페이지로 이동" href="https://etk.srail.co.kr" target="_blank" class="con_link"> SR
                  </a> 1800-1472</div>
                <div> <br></div>
                <div> ○ 자가운전 정보</div>
                <div> 서해안고속도로 목포톨게이트→삽진고가교에서 진도·해남 방면 왼쪽 고가차도 진입, 약 3km 직진→북항교차로에서 유달산 방면 좌회전, 약 400m 직진→삼거리에서 유달산 방면 우회전→약 3.8km 직진, 해안로127번길로 좌회전→서산동 시화골목</div>
                <div> <br></div>
                <div> ○ 숙박 정보</div>
                <div> &nbsp;- [한국관광 품질인증업소] <a title="[새창열림]‘샤르망호텔’ 홈페이지로 이동" href="http://charmanthotel.co.kr" target="_blank" class="con_link"> 샤르망호텔 </a> : 목포시 신흥로59번길, 061)285-3300</div>
                <div> &nbsp;- [한국관광 품질인증업소] <a title="[새창열림]‘등대게스트하우스’ 홈페이지로 이동" href="https://ddguest.tistory.com" target="_blank" class="con_link"> 등대게스트하우스 </a> : 목포시 노적봉길, 010-8340-8004</div>
                <div>
                  <p style="padding: 10px; border: 1px dotted rgb(51, 51, 51); border-image: none;"> · 한국관광 품질인증 이란? <br> &nbsp; ☞ 숙박, 쇼핑 등 관광시설과 서비스에 대한 품질을 국가에서 인증하는 제도로서 엄격한 심사를 통해 선발되며, 다양한 사후관리를 위해 품질을 유지합니다. <br> &nbsp; ※ 더 많은 품질인증업소 정보는 네이버,
                    다음 등에서 「한국관광 품질인증」 검색! </p>
                </div>
                <div> &nbsp;- <a title="[새창열림]‘달꾸메게스트하우스’ 홈페이지로 이동" href="https://dalggume.modoo.at" target="_blank" class="con_link"> 달꾸메게스트하우스 </a> : 목포시 마인계터로38번길, 061)244-9904</div>
                <div> &nbsp;- 설레임게스트하우스 : 목포시 달성길27번길, 010-9001-5886</div>
                <div> &nbsp;- <a title="[새창열림]‘유토피아가족관광호텔’ 홈페이지로 이동" href="http://utopiahotel.kr" target="_blank" class="con_link"> 유토피아가족관광호텔 </a> : 목포시 평화로, 061)285-3000</div>
                <div> &nbsp;- <a title="[새창열림]‘샹그리아비치호텔’ 홈페이지로 이동" href="http://www.shangriahotel.co.kr" target="_blank" class="con_link"> 샹그리아비치호텔 </a> : 목포시 평화로, 061)285-0100</div>
                <div> <br></div>
                <div> ○ 식당 정보</div>
                <div> &nbsp;- 장터식당 : 꽃게살, 목포시 영산로40번길, 061)244-8880</div>
                <div> &nbsp;- <a title="[새창열림]‘유달콩물’ 홈페이지로 이동" href="http://www.유달콩물.com" target="_blank" class="con_link"> 유달콩물 </a> : 콩국수, 목포시 호남로58번길, 061)244-5234</div>
                <div> &nbsp;- 인동주마을 : 꽃게장백반, 목포시 복산길12번길, 061)284-4068</div>
                <div> &nbsp;- 송옥정 : 생선구이, 목포시 평화로, 061)285-8686</div>
                <div> &nbsp;- 태양식당 : 아귀탕, 목포시 해안로127번길, 061)243-7724</div>
                <div> <br></div>
                <div> ○ 주변 볼거리</div>
                <div> 성옥미술관, <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=c9075750-4a95-4637-be78-627957183d8e" class="con_link"> 목포 갓바위 </a> , <a
                    href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=e607a2c3-b91c-46aa-a76a-791db431ebc9" class="con_link"> 김대중노벨평화상기념관 </a></div>
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
