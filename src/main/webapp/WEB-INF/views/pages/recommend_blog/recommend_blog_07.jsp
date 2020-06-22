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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">22</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">20</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">2,278</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>매화 없어도 핫한 '광양', 아이와 함께라면 더 좋아요!</h2>
            <div class="area_address">
              <span class="address">전남 광양시</span>
              <span id="modi_date">수정일 : 2020.05.22</span>
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
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_01.png" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: center;">★ 추천여행코스 : 김 시식지 → 정병욱 가옥 → 광양 와인 동굴 → 구봉산 전망대 → 연경당</div>
                <div style="text-align: center;"><br></div>
                <div style="text-align: center;">
                  <div style="text-align: justify;">봄이 먼저 찾아오는 곳. 전라남도 광양은 매화가 활짝 피는 3월에 많은 분들이 찾는 도시입니다. 그런데 매화 없이도 풍부한 볼거리가 넘친다는 것 알고 계신가요? 감성 있는 문화, 예술, 관광의 도시 광양. 연인끼리, 친구끼리, 아이들과 함께여도 좋은 이곳. 지금 소개합니다!</div>
                </div>
              </div><strong class="ar_title verticalLine">김 시식지</strong>
              <div class="txt_p">
                <div style="text-align: justify;">우리가 지금 즐겨먹는 ‘김’을 처음으로 양식에 성공한 곳이 바로 광양입니다. 광양 김 시식지는 우리나라에서 처음으로 김 양식에 성공한 ‘김여익’을 기리기 위해 세운 곳인데요. ‘김’의 원래 이름은 ‘해의’였지만 ‘김’으로 고쳐 부르게 된 것도 김여익의 성씨를 본 딴 것이라고 해요. 김 시식지 내부에는 김의 유래와 역사, 제조과정 등을 볼 수 있는 역사관도
                  마련되어 있습니다. 역사관에는 김 양식에 대한 것들이 사진과 모형으로 보기 쉽게 전시되어 있습니다. 또한 해설사분도 상주하고 계시니 김의 역사에 대해 해설을 들으며 관람하는 것도 추천합니다!</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="2" id3="1">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_02.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="1" id2="3" id3="2" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_03.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="3" id3="3" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_04.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="3" id3="4" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_05.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="4" id3="5">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_06.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="1" id2="5" id3="6" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_07.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="5" id3="7" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_08.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="5" id3="8" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_09.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="6" id3="9">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_10.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 전라남도 광양시 김시식지 1길 57-6</div>
                    <div>입장료 : 없음</div>
                    <div>기타 정보 : 김 시식지 앞 무료 주차 가능</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">정병욱 가옥</strong>
              <div class="txt_p">
                <div style="text-align: justify;">김시식지에서 얼마 떨어져 있지 않은 곳에 정병욱 가옥이 위치해있습니다. 정병욱 가옥은 윤동주 시인의 원고가 온전히 보존되어있던 곳인데요. 윤동주 시인은 ‘하늘과 바람과 별과 시’를 1941년 발간하려다 실패하고 친우인 정병욱에게 맡겨 두었습니다. 원고는 이곳 가옥에 보관되어 있다가 광복 후인 1948년 간행되어 세상의 빛을 보게 되었는데요. 단출한 집
                  안으로 들어서보면 원고가 보관되어있던 마루와 유족들이 기증한 육필원고가 전시되어 있습니다.&nbsp;</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="2" id3="10">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_11.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="3" id3="11">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_12.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="3" id3="12">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_13.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="4" id3="13">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_14.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="4" id3="14">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_15.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="5" id3="15">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_16.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="5" id3="16">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_17.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="6" id3="17">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_18.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="6" id3="18">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_19.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="7" id3="19">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_20.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">정병욱 가옥 앞에는 섬진강이 흐르고 강을 따라 나무 데크가 설치되어 있습니다. 윤동주 시인의 ‘하늘과 바람과 별과 시’를 한 구절씩 떠올리며 데크길을 걸어보는 것도 좋을 것 같습니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 전남 광양시 진월면 망덕길 249</div>
                    <div>입장료 : 없음</div>
                    <div>기타 정보 : 정병욱 가옥 앞 2대 정도 주차 가능</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">광양 와인 동굴</strong>
              <div class="txt_p">
                <div style="text-align: justify;">와인과 예술이 만나는 향긋한 여행지. 폐 철도였던 이곳은 와인 동굴로 새롭게 변신하여 시음부터 체험까지 할 수 있는 복합 여행 공간입니다. 트릭아트 포토존부터 카페테리아, 미디어 파사드, 빛의 터널 등 총 10개의 테마로 꾸며져 있는데요. 단순한 터널이 아니라 와인 테마 터널로서, 전시되어있는 와인들을 구경하기도 하고 와인의 역사나 유래, 먹는 법까지
                  새로운 정보들을 알아가기도 합니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="2" id3="20">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_21.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="3" id3="21">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_22.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="3" id3="22">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_23.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="4" id3="23">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_24.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="4" id3="24">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_25.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="5" id3="25">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_26.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="5" id3="26">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_27.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="3" id2="6" id3="27" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_28.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="6" id3="28" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_29.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="6" id3="29" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_30.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="3" id2="7" id3="30" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_31.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="7" id3="31" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_32.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="7" id3="32" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_33.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="8" id3="33">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_34.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="8" id3="34">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_35.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">광양 와인 동굴의 묘미는 바로, 판매 중인 와인들을 골라 맛볼 수 있다는 점이에요. 병 또는 잔으로 구매해 카페테리아에서 바로 마셔볼 수 있으니 정말 좋더라고요. 게다가 유아부터 성인까지 모두 체험할 수 있는 프로그램도 운영되고 있습니다. 매실 비누, 매실 화장품 같은 공예체험이나 매실 원액을 이용한 와인 만들기 프로그램도 있으니 미리 예약 후 방문하는
                  것도 추천드립니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div style="text-align: justify;">위치 : 전남 광양시 광양읍 강정길 33</div>
                    <div style="text-align: justify;">입장료 : 어른 5000원, 청소년 및 어린이 3000원, 패키지(입장료+와인1잔+안주) 10000원</div>
                    <div style="text-align: justify;">운영시간 : 하절기(04월~09월) 매일 09:30 - 19:00 매표마감 오후 6시 / 동절기(10월~03월) 매일 10:00 - 18:30 매표마감 오후 5시 30분</div>
                    <div style="text-align: justify;">기타 정보 : 무료 주차 가능</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">구봉산 전망대</strong>
              <div class="txt_p">
                <div style="text-align: justify;">광양 여행의 마무리로는 광양만을 한눈에 담아볼 수 있는 구봉산 전망대로 정했습니다. 해발 473m 구봉산에 설치된 전망대는 순천, 여수, 하동, 남해까지 한눈에 볼 수 있어요. 해가 지는 시간에는 시시각각으로 변하는 예쁜 하늘을 볼 수 있고, 해가 지고 나면 광양만의 야경까지 볼 수 있어 매력적인 곳이랍니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="2" id3="35">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_36.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 구봉산 전망대에서 보이는 광양시는 광양 제철소와 이순신 대교, 광양항 등이 보입니다. 주탑이 서울 N 타워, 63빌딩 보다 높다는 이순신 대교는 특별한 날에 점등을 하는데요. 명절이나 광양 매화축제 같은 기간에 말이에요. 이렇게 이순신 대교가 점등한 날 올라가서 보는 야경은 더욱 알찰 것 같습니다.</div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="4" id2="4" id3="36" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_37.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="4" id3="37" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_38.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="4" id3="38" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_39.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="5" id3="39">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_40.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="6" id3="40">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_41.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="7" id3="41">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_42.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="8" id3="42">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_43.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="8" id3="43">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_44.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">구봉산 전망대의 랜드마크인 메탈 아트 봉수대는 옛 봉수대가 있었던 장소에 세워진 현대식 봉수대인데요. 매화꽃이 피어오르는 모습을 형상화했다고 해요. 실제로 가까이서 보면 굉장히 큰 꽃이 한 송이 있는 느낌이고 낮보다는 불빛이 들어오는 야경이 더 기억에 남더라고요.&nbsp;</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 전남 광양시 구봉산전망대길 155</div>
                    <div>입장료 : 없음</div>
                    <div>운영시간 : 매일 00:00 - 24:00</div>
                    <div>기타 정보 : 매일 10:30, 11:30, 14:00, 15:00, 16:00 문화관광해설 운영 중, 정상부 하단 주차장까지 차량 진입 가능</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">연경당</strong>
              <div class="txt_p">
                <div style="text-align: justify;">‘고울 연’에 ‘햇살,경치 경’자를 쓰는 이곳은 말 그대로 햇살과 풍경이 고운 집입니다. 활짝 열려있는 대문을 들어서면 고풍스러우면서 단아한 한옥 한 채가 반겨줍니다. 객실과 넓은 마당은 남쪽을 향해 있어 햇살이 오랫동안 연경당을 비춰주는데요. 마당을 둘러싸고 있는 돌담 뒤로는 푸른 백운 저수지와 곡선을 이루는 산등성이들을 볼 수 있습니다.&nbsp;
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="2" id3="44">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_45.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="3" id3="45">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_46.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="3" id3="46">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_47.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="5" id2="4" id3="47" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_48.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="4" id3="48" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_49.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="4" id3="49" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_50.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">연경당이 높은 지대에 지어진 덕분에 모든 객실에서는 바깥 경치를 조망할 수 있어요. 연경당 밖으로 펼쳐진 풍광을 마루에 앉거나 누워서 편히 감상해 보는 것도 연경당 숙박의 묘미랍니다.&nbsp;</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="6" id3="50">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_51.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="6" id3="51">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_52.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type3 clfix">
                <div><button type="button" id="5" id2="7" id3="52" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_53.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="7" id3="53" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_54.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="7" id3="54" style="height: 306px;">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_55.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="8" id3="55">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog07/recommend_blog07_56.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">연경당은 현대식 난방 시설이 아니라 전통 방식인 구들장으로 객실을 따뜻하게 만들어 줍니다. 손님들이 입실하는 시간을 미리 알아 두시고는 30분 전부터 미리 불을 지피신다고 해요. 아궁이에 나무를 떼는 방식으로 불을 지펴 다음날 아침까지 따뜻한 객실을 만들어 주신답니다. 주변이 조용한 덕분에 밤늦은 시간에, 혹은 이른 아침에 마루에 앉아있으면 자연의 소리도
                  들으실 수 있습니다. 대청마루에 누워 푸른 저수지와 하늘도, 쏟아질 듯 많은 별도 감상해 보시는 것 어떤가요?</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 전남 광양시 봉강면 중흥로 13-40</div>
                    <div>이용료 : 디럭스룸 176,000원 / 스페셜룸 165,000원 / 패밀리룸 110,000원&nbsp;</div>
                    <div>입실, 퇴실 시간 : 입실 15:00, 퇴실 10:00</div>
                    <div style="text-align: justify; ">기타 정보 : 연경당 앞 주차 가능</div>
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
