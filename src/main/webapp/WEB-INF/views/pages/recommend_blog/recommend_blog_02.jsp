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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">6</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">0</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">197</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>청량감 가득한 숲을 거닐어요, 전국 가볼 만 한 숲 5곳</h2>
            <div class="area_address">
              <span class="address">전국 </span>
              <span id="modi_date">수정일 : 2020.06.08</span>
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
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="1" id3="0">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_01.png" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">꽃잎이 흩날리던 것이 엊그제 같은데 벌써 봄을 지나 여름으로 접어드는 계절입니다. 부쩍 더워지고 있는 요즘이지만 아름드리나무들이 그늘을 드리운 숲은 여전히 청량한 공기로 가득하다는 사실! 알고 계셨나요? 곳곳에 숨어있는, 꼭 한 번쯤은 가봐야 할 숲을 모았습니다. 이번 주말, 매력적인 숲 하나를 골라 거닐어보세요. 바쁠수록, 정신없는 나날이 이어질수록
                  여러분에게는 힐링을 위한 시간이 필요하니까요.</div>
              </div><strong class="ar_title verticalLine">통도사 무풍한송길</strong>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="1" id3="1">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_02.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="1" id3="2">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_03.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 우리나라 3대 사찰 중 하나로 꼽히는 경남 양산의 통도사를 아시나요? 이 통도사로
                  들어서는 입구에서 매력적인 숲길을 만나볼 수 있습니다. 가끔 이리저리 굽는 한이 있더라도 결국 하늘로 솟아오르는 소나무 수백 그루가 이루어 낸 숲이 이곳에 있답니다. 바로 ‘무풍한송길’이에요.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="3" id3="3">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_04.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">무풍한송길에서는 100년에서 200년 이상의 수령을 자랑하는 소나무들을 감상할 수 있습니다. 통도사까지 향하는 길을 중심으로 양옆에 길게 늘어선 채 장관을 연출해내고 있어요. 그야말로 속세를 벗어나 신선의 세계로, 부처의 세계로 들어서는 듯한 느낌이 가득합니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="5" id3="4">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_05.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">이 멋진 숲은 산림청과 유한킴벌리, 사단법인 생명의숲국민운동이 주최했던 2018년 ‘제18회 아름다운 숲 전국대회’에서 대상(생명상)을 받았다고도 해요. 아름다운 풍경과 뛰어난 관리 수준, 기타 여러 가지 부문에서 우수한 성적을 받은 결과입니다. 그만큼 매력적이라는 뜻이겠지요.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="7" id3="5">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_06.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="7" id3="6">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_07.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="8" id3="7">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_08.jpg" alt="" style="max-width: 366px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">무풍한송길은 남녀노소 누구나 쉽게 거닐어볼 수 있는 길입니다. 흙을 다지고 돌을 빼내어 평탄한 길을 만들어 둔 덕택입니다. 쉬어갈 수 있는 정자도, 벤치도 언제나 여러분을 위해 곁을 비워두고 있답니다. 바로 옆으로 시원하게 흐르는 양산천은 무풍한송길을 걷는 발걸음을 한결 더 경쾌하게 만들어주기도 해요.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="10" id3="8">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_09.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="11" id3="9">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_10.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="11" id3="10">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_11.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="12" id3="11">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_12.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">통도사는 유네스코 세계유산으로 등재된 ‘한국의 산지승원’ 중 하나예요. 신라 시대에 창건하여 오늘날까지 내려오는, 유서 깊은 천년고찰이라고 할 수 있답니다. 사찰 경내에는 그 역사만큼이나 볼거리도 가득합니다. 국보 제290호인 대웅전을 비롯해 보물 21점, 지방유형문화재 46점을 포함해 약 3만여 점의 문화재가 이곳에 있다고 해요. 이쯤이면 통도사도 그냥
                  지나칠 수 없겠죠? 꼭 함께 둘러보세요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div><span style="background-color: rgb(250, 250, 250);">※ 통도사 무풍한송길</span><br></div>
                    <div>- 위치 : 경상남도 양산시 하북면 통도사로 108</div>
                    <div>- 문의 : 055-382-7182</div>
                    <div>- 입장요금 : 성인 3,000원 / 청소년 1,500원 / 어린이 1,000원</div>
                    <div>- 주차요금 : 17인승 미만 2,000원 / 17인승부터 3,500원 (입구에 주차 후 걸어 들어가면 무료 주차 가능)</div>
                    <div>- 개방시간 : 08:30~17:30</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">오대산 선재길 (월정사 전나무숲길)</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="1" id3="12">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_13.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="2" id2="2" id3="13">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_14.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="2" id2="2" id3="14">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_15.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 오대산 깊숙이 자리한 사찰, 월정사로 들어서는 길목에는 아름드리 전나무가 끝없이 이어집니다. 드라마 ‘도깨비’ 촬영지로 관심을 받아서인지 마치 비밀의 숲으로 들어서는 듯한 기분이 들기도 해요. 이곳이 그 유명한 월정사 전나무숲길입니다. 드라마에서는 눈 쌓인 풍경이 인상적으로 그려졌는데, 겨울철에만 예쁜 곳이라고 생각하시면 아쉽습니다. 눈이 내려도, 비가 내려도, 바람이 불어도
                  늘 몽환적인 풍경을 선보이는 숲이라는 사실!</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="2" id2="4" id3="15">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_16.jpg" alt=""></button><strong class="tit"></strong>
                  </div>
                <div><button type="button" id="2" id2="4" id3="16">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_17.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="5" id3="17">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_18.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="5" id3="18">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_19.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="6" id3="19">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_20.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="7" id3="20">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_21.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="8" id3="21">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_22.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="8" id3="22">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_23.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 전나무 숲길은 일주문부터 금강교 부근까지 약 1km에 걸쳐 이어집니다. 오대천을 사이에 두고 건너편에서 마주 보는 선재길과 엮어 한 바퀴 산책을 즐기는 것도 가능해요. 그뿐일까요. 월정사부터 약 10km 거리에 있는 상원사까지도 선재길은 계속됩니다. 가볍게 도보 여행을 즐기고 싶다면 더할 나위 없이 매력적인 구간이랍니다. 중간에 버스정류장도 있으니 모든
                  구간을 완주하지 않아도 좋아요. 전나무숲길과는 달리 선재길에서는 종종 미끄러운 구간이 등장하니 등산화는 필수, 생수도 한두 병쯤 챙기시는 걸 추천할게요!</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="10" id3="23">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_24.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="11" id3="24">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_25.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="11" id3="25">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_26.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="12" id3="26">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_27.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="13" id3="27">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_28.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="14" id3="28">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_29.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="14" id3="29">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_30.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 월정사와 상원사도 그냥 지나치기에는 아쉽습니다. 강원도는 물론, 우리나라를 대표하는
                  사찰로도 유명한 월정사는 전나무 숲에 둘러싸인 채 고즈넉한 분위기를 한껏 머금은 공간이에요. 팔각구층석탑을 중심으로 펼쳐진 사찰 경내를 천천히 거닐며 복잡한 마음을 정리해보세요. 선재길 끝에 자리한 상원사에서는 국내에서 가장 오래된 동종을 만나볼 수 있습니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div style="text-align: left;"> <span style="background-color: rgb(250, 250, 250);"> ※ 오대산 선재길 </span> <br></div>
                    <div style="text-align: left;"> - 위치 : 강원도 평창군 진부면 오대산로 374-8&nbsp;</div>
                    <div style="text-align: left;"> - 문의 : 033-339-6800</div>
                    <div style="text-align: left;"> - 입장요금 : 성인 5,000원 / 청소년 1,500원 / 어린이 500원</div>
                    <div style="text-align: left;"> - 주차요금 : 비수기(12~4월) 승용차(1,000cc 미만) 2,000원, 중형차(1,000cc 이상) 4,000원, 대형차(버스) 6,000원 / 성수기(5~11월) 승용차(1,000cc 미만) 2,000원, 중형차(1,000cc 이상) 5,000원, 대형차(버스) 7,500원</div>
                    <div style="text-align: left;"> - 개방 시간 : 일출 2시간 전 ~ 일몰</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">상림공원</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="1" id3="30">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_31.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="2" id3="31">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_32.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 경상남도 함양에는 우리나라에서 가장 역사가 깊은 인공 숲, '상림공원'이 있습니다. 무려 신라 시대가 그 시작이라고 해요. 학자이자 정치인으로 명망이 깊었던 최치원이 이 인공 숲을 만든 주인공! 그가 함양 지역에 태수로 부임해 있던 시기에 이 숲을 만들었는데, 지금까지도 그 모습을 오롯이 유지하고 있는 겁니다. 무려 2만여 종의 식물이 1천년이 넘도록 이
                  자리를 지키고 있는 셈이에요.</div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="3" id2="4" id3="32">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_33.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="4" id3="33">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_34.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="4" id3="34">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_35.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">숲을 즐겨볼까요. 상림공원은 약 1.6km 길이의 산책로가 남북으로 길게 조성되어 있습니다. 100종이 넘는 낙엽활엽수가 모여 있어 사계절 내내 다른 분위기를 만끽할 수 있는 점이 특징이에요. 물론 요즘 같은 때에는 울창한 초록빛 터널이 여러분을 맞이하고 있어요.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="6" id3="35">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_36.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="6" id3="36">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_37.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="7" id3="37">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_38.jpg" alt="" style="max-width: 366px;"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">낙엽을, 고운 흙길을 밟으며 천천히 한 걸음씩 내디뎌보세요. 발끝에서부터 올라오는 촉감이 왠지 모르게 기분을 좋게 합니다. 바람이 불며 나뭇잎들이 서로 부대끼는 소리, 새들이 지저귀는 소리, 바로 옆으로 흐르는 개울물 소리가 한데 모여 마음을 깨끗하게 씻어주는 듯한 느낌을 주기도 해요.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="9" id3="38">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_39.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="9" id3="39">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_40.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="10" id3="40">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_41.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="11" id3="41">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_42.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="11" id3="42">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_43.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">곳곳에 함양의 역사를 상징하는 시설물이 있습니다. 함양읍성의 남문 역할을 했던 함화루, 최치원 선생을 기리는 사운정, 함양의 여러 역사적인 인물들을 한데 모은 함양역사공원 등등을 상림공원 내에서 찾아볼 수 있어요. 상림공원 옆으로도 갈 만한 곳들이 있습니다. 최치원역사공원, 함양박물관 등도 함께 둘러보세요.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ 상림공원 </span> <br>
                      - 위치 : 경상남도 함양군 함양읍 교산리 1047-1</div>
                    <div> - 문의 : 055-960-5756</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">해송림</strong>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="1" id3="43">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_44.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="1" id3="44">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_45.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">강릉에서는 바다를 바라보며 숲길을 산책할 수 있습니다. 바다와 숲이라니. 조금 이상한 조합으로 보일 법도 하지만, 이 일대에서 살아온 이들에게는 바닷바람을 막아주는 소중한 숲이에요. 해안가를 따라 쭉 이어지는 해송림이 바로 그곳입니다.&nbsp;</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="3" id3="45">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_46.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="3" id3="46">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_47.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">강릉의 주요 해변마다 해송림이 조림된 것을 확인할 수 있습니다. 대표적인 곳이 경포해변! 해변 옆으로 해송림 산책로가 쭉 이어진답니다. 바다를 곁에 두고 숲을 산책하는 경험을 할 수 있는 곳이에요. 해변을 빠져나와 경포호 쪽으로 방향을 틀어도 소나무 숲이 있어요. 경포호 남쪽에 조림된 소나무 숲길은 허균·허난설헌 기념관이 있는 곳으로 향합니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="5" id3="47">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_48.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="6" id3="48">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_49.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="7" id3="49">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_50.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="7" id3="50">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_51.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; "> 카페로 유명한 안목해변도 소나무 숲길을 걷기에 좋은 곳입니다. 안목해변 북측
                  입구에서 송정해변으로, 계속해서 강문해변이 있는 곳까지도 해송림이 있어요. 중간에 자리한 강문해변을 제외하고는 경포해변에서 안목해변까지 해송림이 쭉 이어지는 셈이지요. 강릉으로 여행을 떠날 예정이신가요? 한
                  번쯤은 북적거리는 해변을 벗어나 소나무 숲길을 거닐어보세요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ 해송림 </span> <br></div>
                    <div> - 위치 : 경포해변 인근, 경포호 남쪽, 허균·허난설헌기념공원, 송정해변 일대</div>
                    <div> <br></div>
                    <div> *허균·허난설헌기념공원</div>
                    <div> - 위치 : 강원도 강릉시 난설헌로193번길 1-29</div>
                    <div> - 문의 : 033-640-4798</div>
                    <div> - 운영시간 : 09:00~18:00 (월요일 휴무, 공원은 24시간 이용 가능)</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">섬진강 대나무숲길</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="1" id3="51">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_52.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">전라남도 구례에는 최근 떠오르고 있는 숲이 있습니다. 구례군청과 공영버스터미널이 있는 읍내 근처, 섬진강변에 자리하고 있는 이곳은 약 500m에 걸쳐 가볍게 거닐 수 있는 대나무 숲이에요. 예부터 대나무 숲이 있었던 곳이라고 하는데요. 관리하는 사람이 없어 방치되고 있었던 숲을 정돈해 길을 낸 것이랍니다.&nbsp;</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="3" id3="52">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_53.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="3" id3="53">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_54.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="4" id3="54">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_55.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">양옆으로 높이 솟은 대나무가 빼곡하게 자라나는 모습은 물론, 그 사이에서 새롭게 태어난 죽순들도 눈에 띕니다. 대나무 아래에 차나무를 심어 고급 녹차를 생산하려고 했던 옛 관리자의 흔적도 고스란히 남아 있어요.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="6" id3="55">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_56.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">섬진강 대나무숲길은 쉽게 인생샷을 남길 수 있는 곳이기도 해요. 쭉 뻗은 대나무를 배경으로, 카메라 각도를 밑에서 위로 잡은 후에 사진을 찍어보세요. 다리가 길어 보이는 마법을 경험할 수 있답니다. 곳곳에 놓인 벤치에 앉아 감성 사진을 연출해보는 것도 좋겠네요!</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="8" id3="56">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_57.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="8" id3="57">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_58.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="9" id3="58">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog02/recommend_blog02_59.jpg" alt="" style="max-width: 366px;"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">섬진강 대나무숲길은 앞서 소개한 다른 숲보다는 짧은 오솔길이지만, 분위기만큼은 뒤지지 않습니다. 그만큼 가볍게, 부담 없이 찾을 수 있다는 장점도 있고요. 구례나 곡성, 광양으로 여행을 떠날 예정이라면 섬진강 대나무숲길도 함께 방문해보세요.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <p><span style="background-color: rgb(250, 250, 250);">※ 섬진강 대나무숲길</span><br></p>
                    <p>- 위치 : 전라남도 구례군 구례읍 봉서리 588</p>
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
