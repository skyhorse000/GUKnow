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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">3</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">1</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">53</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>오감으로 천천히 느껴보는 '슬로시티' 하동의 매력, 하동 가볼 만한 곳</h2>
            <div class="area_address">
              <span class="address">경남 하동군</span>
              <span id="modi_date">수정일 : 2020.06.17</span>
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
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_01.png" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: center;">★ 추천여행코스 : 알프스 짚와이어 → 삼성궁 → 스타웨이 → 섬진강 달마중 → 카누 체험 → 최참판댁 → 송림공원</div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">'느림의 미학'이라는 말, 많이 들어보셨나요?</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify; ">​요즘은 일상 속 빠른 속도에 지쳐 조금은 느리고 불편하더라도 유유자적한 평화로움을 온전히 느끼기 위해 일부러 '느림'을 찾아 떠나는 사람들이 많아지고 있습니다. ​느림의 삶을 충족시킬 수 있는 '슬로시티'는1999년 출범되어 현재 한국에도 15개의 시•군이 슬로시티로 지정되어 있는데요. ​여러 지역 중 1,200년 넘게 야생차밭을 지켜오며 자연과 행복을
                  지키고 있는 곳이 있습니다. 바로 '하동'입니다!
                </div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify; ">​슬로시티 하동 가볼 만한 곳을 지금 소개합니다!</div>
              </div><strong class="ar_title verticalLine">알프스 짚와이어</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="1" id3="1">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_02.jpg" alt="">
                </button>
                <strong class="tit"></strong>
              </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">먼저 떠나볼 곳은 하동이 그동안 지켜온 자연을 한눈에 볼 수 있는 알프스 짚와이어입니다. 짚와이어에 탑승하기 위해 전용 복장과 헬멧을 착용하고, 간단한 사전 교육을 들어야 합니다. 안전한 탑승을 위해 주의해야 할 점, 착지 시의 자세 등을 교육받게 됩니다.
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="3" id3="2">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_03.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="1" id2="4" id3="3">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_04.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="1" id2="4" id3="4">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_05.jpg" alt="">
                </button>
                <strong class="tit"></strong>
              </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">아시안 최장 길이를 자랑하는 하동 짚와이어는 금오산 849m 정상으로부터 최대 시속 120km/h로 떨어집니다. 1구간~3구간으로 나누어져 있는데, 이 중 1구간이 가장 경사가 급해 속도가 매우 빠릅니다. 2구간, 3구간으로 갈수록 비교적 천천히 내려가기 때문에 주변 전망을 마음껏 구경할 수 있습니다.
                </div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">
                  <div>발밑으로 펼쳐진 금오산 자락과 바다 전망을 바라보면 스트레스가 싹 풀리는 짜릿한 느낌을 받을 수 있답니다. 양팔을 벌려 금오산이 주는 공기를 한껏 느껴보셔도 좋습니다!&nbsp; ​지치고 답답했던 마음을 날릴 수 있는 하동 가볼 만한 곳 짚와이어는 마스크와 위생 수칙을 꼼꼼히 지키면 안심하고 즐길 수 있습니다.
                  </div>
                </div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> ※ <a class="con_link" href="#" title="‘알프스 짚와이어’ 정보 페이지로 이동">알프스 짚와이어</a> <br></div>
                    <div> -위치 : 경남 하동군 금남면 경충로 493-9</div>
                    <div> -문의 : 055-884-7715</div>
                    <div> -이용요금 : 성인 40,000원 / 청소년 35,000원&nbsp;</div>
                    <div> * 주말은 5,000원 추가</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">삼성궁</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="1" id3="5">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_06.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">서로 다른 모양의 돌덩이들이 균형을 잡은 채, 아름다운 그림을 만들고 있는 삼성궁은 역사 교과서에서 자주 나오는 환인과 환웅, 그리고 단군을 모시고 있는 성전인데요. ​현재는, 과거 삼성궁의 종교적인 색채는 옅어진 채로 관광객들을 기다리고 있었습니다.
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="2" id2="3" id3="6">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_07.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="2" id2="3" id3="7">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_08.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">돌담길을 따라 걸어 올라가다 보면 하나, 둘 돌을 쌓아 올려 기묘한 형상으로 쌓은 1,500여 개의 돌탑이 주변의 숲과 어우러져 이국적인 정취를 풍겨냅니다. 삼성궁은 도시의 문물과 떨어져 청정 자연의 모습을 그대로 간직하고 있습니다. 힘차게 떨어지는 폭포, 차곡차곡 올려놓은 돌탑, 수려하게 흘러가는 계곡물을 보며 천천히 거닐기 참 좋은 곳입니다.
                </div>
                <div style="text-align: justify; "><br></div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="2" id2="5" id3="8">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_09.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="2" id2="5" id3="9">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_10.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="6" id3="10">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_11.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">삼성궁의 정상에는 커다란 호수가 펼쳐져 있습니다. 호수 위에 쌓여진 거대한 마고성을 보면 마치 외국에 온 것만 같은 기분을 느낄 수 있습니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​하동 가볼 만한 곳, 삼성궁에서만큼은 잠시 휴대폰을 내려놓은 후 숨도 크게 들이쉬고 하늘도 쳐다보면서 자연을 오감으로 느껴보시길 추천해 드립니다!&nbsp;</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ <a class="con_link" href="#" title="‘삼성궁’ 정보 페이지로 이동">삼성궁</a> </span> <br>
                    </div>
                    <div> -위치 : 경상남도 하동군 청암면 묵계리</div>
                    <div> -문의 : 055-884-1279</div>
                    <div> -이용요금 : 성인 7,000원 / 청소년 4,000원</div>
                  </div>
                </div>
              </div>
              <strong class="ar_title verticalLine">스타웨이</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="1" id3="11">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_12.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">어떤 지역에서나 여행 일정을 계획할 때, 센스 있는 일몰명소 하나로 성공적인 여행이 될 수 있다는 사실! 아시나요?</div>
                <div style="text-align: justify; ">​</div>
                <div style="text-align: justify; ">하동 일몰명소로는 '스타웨이'를 소개해드리겠습니다. 아름다운 전망을 바라보며 식사도 할 수 있고 잠시 카페에서 쉬었다 가기에도 좋은 곳입니다. ​2019년 9월경에 개장한 따끈따끈한 곳이지만 벌써 많은 사람의 입소문을 타고 하동의 손꼽히는 일몰명소, 핫플레이스로 거듭났다고 합니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="3" id2="3" id3="12">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_13.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="3" id2="3" id3="13">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_14.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="4" id3="14">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_15.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">하동 일몰명소 스타웨이에서는 전망대와 함께 스카이워크가 길게 놓여있는데요. 스카이워크의 일부에는 아래가 투명창을 통해 보이는 곳도 있어 스릴도 함께 느낄 수 있답니다!</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="6" id3="15">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_16.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">하동 일몰명소 스타웨이에서 노을진 하늘과 함께 묵묵히 자리를 지키며 흐르는 섬진강, 그리고 그 옆에 펼쳐진 평사리 들판을 바라보면, 슬로시티 하동이 가져다주는 마음의 평안을 얻을 수 있습니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> ※&nbsp; <span style="background-color: rgb(250, 250, 250);"> <a class="con_link" href="#" title="‘스타웨이’ 정보 페이지로 이동">스타웨이</a>
                      </span></div>
                    <div> -위치 : 경상남도 하동군 악양면 섬진강대로 3358-110</div>
                    <div> -문의 : 055-884-7410</div>
                    <div> -메뉴 : 아메리카노(6,000원), 카페라떼 (7,000원) 등</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">섬진강 달마중</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="4" id2="1" id3="16">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_17.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">하동의 일몰에 이어 야경까지 즐겨볼까요?</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">하동의 야경을 책임지는 섬진강 달마중 프로그램은 하동 여행코스에서 빠질 수 없는데요. ​한국관광공사에서 야간관광 100선으로 선정한 만큼 야경과 밤의 분위기가 무척 아름다운 프로그램입니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="4" id2="3" id3="17">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_18.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">섬진강 평사리 달마중 프로그램은 반짝이는 호롱불을 들고 백사장을 걷는 '달빛산책'으로 시작되는데요. 은빛 백사장의 촉감을 충분히 느끼고 싶다면 맨발로 걸어보세요! 발 사이를 촘촘히 채워주는 모래알들의 촉촉한 촉감이 여행의 피로를 싹 풀어줍니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="4" id2="5" id3="18">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_19.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="4" id2="5" id3="19">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_20.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">달빛산책으로 은빛 백사장을 쭉 걸어가고 나면, 섬진강에 띄워 보내는 소원 종이배가 준비되어 있습니다. 형형색색의 종이배는 많은 이들의 다양한 소원을 싣고 섬진강의 물길을 따라 흘러갑니다. 어두운 밤, 섬진강 앞에서 호롱불을 밝히고 소원을 적는 기억은 오랫동안 소중하게 간직될 듯합니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="4" id2="7" id3="20">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_21.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">그다음엔 다시 초입으로 돌아와 시 낭송과 공연 관람을 하게 되고 마지막으로는 마음 속 근심 걱정 다 내려놓고 편하게 누워 밤하늘에 수놓은 별들을 감상하는 시간이 있습니다. ​섬진강의 잔잔한 물결 소리를 느끼며 이 프로그램을 즐기고 나면 "하동, 참 잘 왔다."라는 생각이 절로 들겠죠?</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ <a class="con_link" href="#" title="‘섬진강 달마중’ 정보 페이지로 이동">섬진강 달마중</a>
                      </span> <br></div>
                    <div> -위치 : 경상남도 하동군 악양면 악양동로 176 <br></div>
                    <div> -문의 : 055-883-6544</div>
                    <div> -체험기간 : 매월 보름 (보름을 전후한 토요일), 비정기적 토요일 저녁 6~8시&nbsp;&nbsp;</div>
                    <div> -시간 및 날짜 변동 있으므로 자세한 내용은 아래 블로그 링크 참조&nbsp;</div>
                    <div> -프로그램 : 달빛산책, 강강술래, 시 낭송, 버스킹 등</div>
                    <div> -이용요금 : 1만원</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">섬진강 카누 체험</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="5" id2="1" id3="21">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_22.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">KBS 여행 프로그램 &lt;배틀트립&gt;의 인기 하동의 수상 레저! 섬진강 카누 체험은 구명조끼를 입고 패들을 받은 후 안전 교육을 시작하며 체험이 진행됩니다. 여울이 없는 코스를 타면 여벌 옷 없이도 체험을 할 수 있어 부담 없이 수상 레저를 즐길 수 있다는 것이 카누의 큰 매력입니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="5" id2="3" id3="22">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_23.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="5" id2="3" id3="23">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_24.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">하동의 카누 체험은 2인 1조로 배를 나누어 타게 되며, 앞좌석은 엔진, 뒷좌석은 운전대 역할을 하며 일심동체가 되어 섬진강 줄기를 따라 내려오게 됩니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="5" id2="5" id3="24">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_25.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="5" id2="5" id3="25">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_26.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">강바람을 느끼며 여유롭게 하동의 모습을 눈에 담다 보면, 마치 신선놀음을 하는 듯한 착각을 하게 됩니다. 가족, 연인, 친구들과 함께 하동의 청정자연을 느끼며 색다른 액티비티를 해보는 것은 어떨까요?</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div><span style="background-color: rgb(250, 250, 250);">※ 섬진강 카누 체험</span><br></div>
                    <div>-위치 : 경상남도 하동군 화개면 화개로 2-3</div>
                    <div>-요금 : 원점코스 25,000원 (50분) / 배틀코스 : 35,000원 (90분~120분) / 종일코스 : 70,000원 (종일)</div>
                    <div>-문의 : 010-3526-8045 (전화예약)</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">최참판댁</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="6" id2="1" id3="26">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_27.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="6" id2="2" id3="27">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_28.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="6" id2="2" id3="28">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_29.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">하동 가볼 만한 곳, 최참판댁은 박경리 대하소설 &lt;토지&gt;의 무대가 된 평사리 마을입니다. 소설 &lt;토지&gt;는 동학농민운동부터 갑오개혁, 그리고 일제강점기와 광복까지 대한민국의 근현대사를 민중들의 삶을 통해 시대상을 전달하는 작품입니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">조선 후기 우리 민족의 생활 모습을 잘 담고 있어 현재까지도 많은 드라마와 영화의 촬영지로도 활용되고 있습니다. 초여름에는 푸릇푸릇한 나무의 청량한 풍경이 더해져 초가집과 어우러진 풍경이 무척 예쁘답니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="6" id2="4" id3="29">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_30.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="6" id2="5" id3="30">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_31.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="6" id2="5" id3="31">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_32.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">입구를 지나 언덕길을 올라가면 '박경리문학관'이 보입니다. 전시관 내부는 10~20분이면 여유 있게 관람할 수 있는 규모인데요.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="6" id2="7" id3="32">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_33.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="6" id2="7" id3="33">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_34.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">박경리 소설가의 삶, 작품 배경, 작품을 쓸 때 사용했던 물건들이 그대로 전시되어 있어, 소설 '토지'의 내용과 의미가 더 잘 와닿기도 합니다. ​박경리 소설가의 삶, 우리나라 옛 생활모습 듬뿍 느낄 수 있는 하동 가볼 만한 곳 최참판댁으로 함께 떠나보아요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>※&nbsp;<span style="background-color: rgb(250, 250, 250);">최참판댁</span></div>
                    <div>-위치 : 경남 하동군 악양면 평사리</div>
                    <div>-문의 : 055-880-2960</div>
                    <div>-입장시간 : 평일 09:00 - 18:00 (연중무휴)</div>
                    <div>-입장료 : 어른 2,000원 / 청소년 1,500원</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">송림공원</strong>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="7" id2="1" id3="34">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_35.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">나무가 바람에 흔들릴 때 살랑이는 돗자리 위 그림자마저 아름다운 곳, 이곳은 하동 가볼 만한 곳 송림공원입니다. 공원에는 소나무들 사이로 숲길처럼 작은 산책로가 나 있습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="7" id2="3" id3="35">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_36.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="7" id2="3" id3="36">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_37.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">송림공원 안에는 모래언덕 위에 750여 개의 소나무가 풍성하게 심겨 있는데요. 영조 21년 당시 강바람과 모래바람을 막기 위해 심어진 소나무는 현재 지역 사람들에게 울창한 그늘 속에서 잠시 쉬어갈 수 있는 장소가 되었습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="7" id2="5" id3="37">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_38.jpg" alt="">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">송림공원 바로 앞에는 거대한 모래 언덕이 있어 모래썰매를 탈 수 있습니다. ​아이들이 신나게 뛰놀아도 될 만큼 위험하지 않고, 넘어져도 크게 다칠 걱정 않아도 되는 공간이라 가족 단위로 놀러 와 시간을 보내는 사람이 많았습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="7" id2="7" id3="38">
                    <img src="resources/home/assets/img/recommend_blog/recommend_blog01/recommend_blog01_39.jpg" alt="" style="max-width: 440px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div>하동여행코스, 솔향기가 가득한 송림공원에서 하동 녹차 한잔과 함께 여유로운 피크닉을 즐겨보세요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>※&nbsp;<span style="background-color: rgb(250, 250, 250);">송림공원</span></div>
                    <div>-위치 : 경남 하동군 하동읍 섬진강대로 2107-8 송림공원</div>
                    <div>-문의 : 055-880-2473</div>
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
