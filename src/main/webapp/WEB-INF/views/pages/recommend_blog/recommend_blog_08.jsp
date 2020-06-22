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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">36</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">55</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">4,352</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>꼭꼭 숨겨두고 싶은 서해의 하와이, 태안 '가의도'</h2>
            <div class="area_address">
              <span class="address">충남 태안군</span>
              <span id="modi_date">수정일 : 2020.05.15</span>
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
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="0" id2="1" id3="0">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_01.png" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 꼭꼭 숨겨두고 싶은 섬이 있습니다. 바로 서해의 하와이라고 불리는 섬, 가의도입니다. 조그마한 섬이지만, 보물 같은 풍경을 잔뜩 숨겨둔 작은 섬. 지금부터 차근차근 보물들을 자랑해보려 합니다. 놓치지 말고 따라오세요. 꽤나 근사한 보물들이 당신을 기다리고 있거든요.</div>
              </div>
              <div class="txt_p">
                <div style="text-align: center;">★ 탐방코스 : 굿두말 마을 – 보호수 - 전망대 – 소솔길 – 신장벌 – 독립문 바위</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="0" id2="4" id3="1">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_02.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">태안반도 자락에 있는 섬, 가의도. 이 섬의 지명에는 다양한 이야기가 존재합니다. 옛 ‘가의’라는 중국인이 피신하여 살았다는 이야기와 뭍에서 멀지 않은 곳에 붙어있는 섬이라는 이야기가 내려오고 있죠. 어느 이야기에서 유래되었든 간에 가의도라는 아름다운 이름을 가지게 된 건 이 섬의 행운이 아닐까 싶습니다.</div>
              </div><strong class="ar_title verticalLine">굿두말 마을</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="1" id3="2">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_03.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="2" id3="3">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_04.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="2" id3="4">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_05.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">가의도 여행은 작디작은 ‘굿두말’ 마을에서 시작합니다. 작은 규모의 섬답게 40여 가구가 옹기종기 모여 사는 모습이 인상적인 마을이지요. 주민들은 특산품인 육쪽마늘을 재배하며 삶을 이어오고 있습니다. 덕분에 이맘때쯤이면 초록빛을 한가득 품은 마을 전경을 볼 수 있습니다. 마을 길을 따라 제법 가파른 언덕에 오르면 발아래 굿두말 마을의 전경이 펼쳐집니다.
                  장관이라는 표현이 절로 떠오를 수밖에 없습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="4" id3="5">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_06.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="4" id3="6">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_07.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">마을 길을 따라 천천히 거닐다 보니 갈림길에 도착했습니다. 갈림길에서 택할 수 있는 코스는 총 2코스. 오른 편에는 가의도를 한눈에 조망할 수 있는 전망대에 오를 수 있고, 왼편에서는 소솔 길을 거쳐 신장벌해수욕장과 독립문 바위를 둘러볼 수 있습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="6" id3="7">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_08.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="7" id3="8">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_09.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">먼저, 전망대로 가는 방향을 택했습니다. 가의도를 한눈에 내려다보고 싶었거든요. 전망대로 향하는 길에는 거대한 은행나무가 자리를 잡고 있습니다. 바로 500년간 이 작은 섬을 지켜왔던 보호수입니다. 놀라운 건 정확하게 섬 중앙에 자리를 잡고 있다는 겁니다. 그 때문일까요, 마을 사람들은 이 크나큰 나무가 가의도의 중심을 꽉 잡고 섬의 균형을 맞춘다고
                  생각하고 있습니다.</div>
              </div><strong class="ar_title verticalLine">가의도 전망대</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="1" id3="9">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_10.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="2" id3="10">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_11.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="2" id3="11">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_12.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="3" id3="12">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_13.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">보호수를 지나 부지런히 전망대에 올랐습니다. 하늘과 맞닿아 있는 바다와 사방이 푸르게 빛나는 모습이 인상적인 곳입니다. 스르르 불어오는 바람에 흠뻑 흘린 땀을 훔치며 서해의 절경을 바라봅니다. 역시, 올라오길 잘했습니다.</div>
              </div><strong class="ar_title verticalLine">소솔길</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="1" id3="13">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_14.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="2" id3="14">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_15.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="3" id3="15">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_16.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="3" id3="16">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_17.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">전망대에서 내려와 부지런히 왼편으로 향했습니다. 신장벌과 독립문 바위로 향하기 위해서요. 하지만, 이곳으로 향하는 길을 제법 고됩니다. 바로 소솔길을 거쳐야만 하거든요. 소사나무와 소나무가 우거진 길이라 하여 붙여진 소솔길은 제법 신비로운 느낌의 숲속에 들어와 있는 것만 같습니다. 하지만, 길이 좁기 때문에 조심해서 걸어야만 안전하게 도착할 수 있습니다.
                </div>
              </div><strong class="ar_title verticalLine">독립문 바위 &amp; 신장벌</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="1" id3="17">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_18.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="2" id3="18">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_19.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">부지런히 걷다 보니 어느새 독립문 바위와 신장벌이 모습을 드러냅니다.&nbsp;</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="4" id3="19">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_20.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="4" id3="20">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_21.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">가의도가 서해의 하와이라고 불리게 된 데에는 다 이유가 있습니다. 바로 하와이만큼 고운 신장벌의 모래 덕분입니다.&nbsp;</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="6" id3="21">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_22.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="7" id3="22">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_23.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">그뿐일까요, 서해임에도 불구하고 바닥이 훤히 보이는 맑은 바다와 바다 한가운데 자리 잡은 독립문 바위도 하와이의 아름다운 풍경을 떠올리게 하는데 한몫하고 말이죠. 특히, 간조 때면 독립문 바위까지 걸어 들어갈 수 있는 특별한 경험을 할 수 있다고 하니 시간을 잘 맞춰 들어가면 더욱 기억에 남는 여행을 즐길 수 있습니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div style="text-align: center;"> [가는 법] 안흥 신진 여객터미널&nbsp; <span style="letter-spacing: 0pt;"> ↔ 가의도</span>&nbsp; <br></div>
                    <div style="text-align: center; "> 신진항 출발 ▶ 08:30 / 13:30 / 17:00</div>
                    <div style="text-align: center;"> 가의도 출발 ▶ 09:05 / 14:05 / 17:35</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">안흥산성 &amp; 태국사</strong>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="1" id3="23">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_24.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="1" id3="24">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_25.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="2" id3="25">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_26.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="2" id3="26">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_27.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 가의도에 입도하기 전에 둘러보면 좋을 곳이 있습니다. 바로 안흥항 근처에 위치한 안흥산성과 태국사입니다. 안흥산성은 조선 후기 효종 때 지어진 성곽으로 태안 최전방에서 군사적 요충지를 담당했던 곳입니다. 지금은 수홍루라 불리는 서문만이 남아 있습니다. 짧은 시간 안에 둘러볼 수 있는 만큼 편하게 쉬어가도 좋을 만한 곳입니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="4" id3="27">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_28.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="4" id3="28">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_29.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="5" id3="29">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_30.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="5" id3="30">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_31.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">안흥산성 뒷길에는 태안 8경 중 한 곳인 태국사가 자리 잡고 있습니다. 백제 무역의 중심지였던 안흥항을 드나드는 사절단의 무사 항해를 기원하는 역할을 했던 사찰입니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="7" id3="31">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_32.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="8" id3="32">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog08/recommend_blog08_33.jpg" alt="가의도1-1"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">이곳을 들렀던 이유는 따로 있습니다. 바로 사찰 주변에 아름다운 꽃들이 만발해 있기 때문인데요. 바다와 함께 향기로운 꽃길을 걸어보셔도 좋을 것 같습니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div style="text-align: center; "><span style="font-weight: bold;">[안흥산성]&nbsp;</span>충남 태안군 근흥면 안흥성길 33-6</div>
                    <div style="text-align: center;"><span style="font-weight: bold;">[태국사]&nbsp;</span>충남 태안군 근흥면 안흥성길 9-29</div>
                    <div style="text-align: center;"><br></div>
                    <div style="text-align: center;">▶기타 정보 : 안흥산성 및 태국사 내 주차장 이용 가능<br></div>
                  </div>
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

</body>

</html>
