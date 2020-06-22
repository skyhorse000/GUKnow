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
        <h2 class="ir_so">Course_blog</h2>
        <div id="contents">
          <div class="tit_cont">
            <div class="area_tag">
              <span class="name2"><a href="#"><span class="ico">Easy</span>코스</a></span>
            </div>
            <h2>여기는 꼭! 사천 여행에 빼먹지 말아야 할 코스</h2>
            <div class="area_address">
              <span class="address">경상남도 사천시</span><span id="dist">코스 총거리 : 약 80km</span>
              <span class="positionBtn" style="display: none;"><button type="button" onclick="layerPopup.layerShow('positionPop');">내 위치 OFF</button></span>
            </div>
            <button type="button" title="열기" class="btn_titview">더보기</button>
            <!-- 팝업 메뉴 -->
            <div class="pop_subMenu">
              <ul>
                <li class="btn_far"><a href="javascript:" onclick="setFavoContentDetail()">즐겨찾기</a></li>
                <li class="btn_share"><a href="javascript:openShare();">공유하기</a></li>
                <li class="btn_print"><a href="javascript:openPrint();">인쇄하기</a></li>
              </ul>
              <ul>
                <li class="btn_cart"><a href="javascript:myCourseCartDetail('C','25','');">코스에 담기</a></li>
              </ul>
            </div>
            <!-- //팝업 메뉴 -->
          </div>

          <div class="wrap_contView clfix">
            <div class="box_leftType1">
              <div class="area_txtView1">
                <p>사천의 과거와 미래, 현재를 고스란히 담을 수 있는 코스다. 사천 항공우주박물관에서 첨단 과학을 통해 신비한 우주 세계를 탐험해보고, 와인갤러리에서 향긋한 와인을 즐기며, 아티스트의 작품을 감상하는 시간을 가져보자. 자연과 함께 힐링하고 싶다면 고즈넉한 풍경의 다솔사로 향하거나, 노을이 지는 바다에서 낚시를 즐겨보자.

                  바다의 풍경을 한 눈에 담고 싶다면 사천 바다 케이블카를 추천한다.
                  그 외에도 맛난 먹거리가 펼쳐진 삼천포 용궁수산시장이나, 역사의 흔적을 찾을 수 있는 대방진굴항, 사천선진리왜성, 조명군총도 빼먹지 말아야 할 스폿이다.</p>
              </div>
            </div>
            <div class="box_rightType2">
              <div class="img_cosViewR">
                <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_02.jpg" alt="여기는 꼭! 사천 여행에 빼먹지 말아야 할 코스">
              </div>
            </div>
          </div>

          <!-- 하단 썸네일, 지도 -->
          <div class="wrap_contView cosMt clfix">
            <ul class="list_thumType">
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=97a637a3-ab05-4541-a605-27c5e2f208cd&amp;big_category=A02&amp;mid_category=A0204&amp;big_area=36"><em class="numbering">1</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_03.jpg" alt="사천 항공우주박물관"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=97a637a3-ab05-4541-a605-27c5e2f208cd&amp;big_category=A02&amp;mid_category=A0204&amp;big_area=36">사천 항공우주박물관</a> </div>
                  <p>내 위치에서 287.4km - 경상남도 사천시 사남면 공단1로 78</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족과함께</span><span>#경상권</span><span>#관광지</span><span>#교육여행</span><span>#박물관</span><span>#사천가볼만한곳</span><span>#사천항공우주박물관</span><span>#아이와함께</span><span>#이색체험</span><span>#체험프로그램</span><span>#체험학습</span><span>#항공우주</span><span>#항공우주박물관</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;97a637a3-ab05-4541-a605-27c5e2f208cd&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%82%AC%EC%B2%9C%20%ED%95%AD%EA%B3%B5%EC%9A%B0%EC%A3%BC%EB%B0%95%EB%AC%BC%EA%B4%80&quot;,&quot;undefined&quot;,&quot;97a637a3-ab05-4541-a605-27c5e2f208cd&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;97a637a3-ab05-4541-a605-27c5e2f208cd&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=2da82f22-8313-4c46-83b2-00dd7cf9bd76&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=36"><em class="numbering">2</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_04.bmp" alt="와인갤러리"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=2da82f22-8313-4c46-83b2-00dd7cf9bd76&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=36">와인갤러리</a> </div>
                  <p>내 위치에서 278.0km - 경상남도 사천시 곤명면 경서대로 3552</p>
                  <p></p>
                  <p class="tag"><span>#문화시설</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;2da82f22-8313-4c46-83b2-00dd7cf9bd76&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EC%99%80%EC%9D%B8%EA%B0%A4%EB%9F%AC%EB%A6%AC&quot;,&quot;undefined&quot;,&quot;2da82f22-8313-4c46-83b2-00dd7cf9bd76&quot;,&quot;14&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;14&quot;,&quot;2da82f22-8313-4c46-83b2-00dd7cf9bd76&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=5eaf4c33-def9-4b20-872a-47f182cd679b&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36"><em class="numbering">3</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_05.jpg" alt="다솔사(경남)"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=5eaf4c33-def9-4b20-872a-47f182cd679b&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36">다솔사(경남)</a> </div>
                  <p>내 위치에서 281.8km - 경상남도 사천시 곤명면 다솔사길 417</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#경상권</span><span>#관광지</span><span>#다솔사</span><span>#불교</span><span>#불교문화</span><span>#사찰</span><span>#사찰여행</span><span>#역사</span><span>#역사관광지</span><span>#연중무휴</span><span>#자연환경</span><span>#전통사찰</span><span>#종교</span><span>#한국불교</span><span>#휴식하기좋은곳</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;5eaf4c33-def9-4b20-872a-47f182cd679b&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EB%8B%A4%EC%86%94%EC%82%AC(%EA%B2%BD%EB%82%A8)&quot;,&quot;undefined&quot;,&quot;5eaf4c33-def9-4b20-872a-47f182cd679b&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;5eaf4c33-def9-4b20-872a-47f182cd679b&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=a66d9e23-865b-4e6a-b4bb-6ba357c6e5b9&amp;big_category=A03&amp;mid_category=A0303&amp;big_area=36"><em class="numbering">4</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_06.jpg" alt="황금빛바다노을낚시터"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=a66d9e23-865b-4e6a-b4bb-6ba357c6e5b9&amp;big_category=A03&amp;mid_category=A0303&amp;big_area=36">황금빛바다노을낚시터</a> </div>
                  <p>내 위치에서 301.7km - 경상남도 사천시 대방동 737-12</p>
                  <p>010-2004-6992</p>
                  <p class="tag">
                    <span>#가족과함께</span><span>#경치좋은곳</span><span>#낚시체험</span><span>#남녀노소</span><span>#레포츠</span><span>#바다경치</span><span>#바다낚시</span><span>#바다내음</span><span>#연인과함께</span><span>#이색체험</span><span>#친구와함께</span><span>#휴식공간</span><span>#휴식여행</span><span>#휴식하기</span><span>#휴식하기좋은곳</span><span>#힐링&amp;여행</span><span>#힐링&amp;휴양</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;a66d9e23-865b-4e6a-b4bb-6ba357c6e5b9&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%ED%99%A9%EA%B8%88%EB%B9%9B%EB%85%B8%EC%9D%84%EB%B0%94%EB%8B%A4%EB%82%9A%EC%8B%9C%ED%84%B0&quot;,&quot;undefined&quot;,&quot;a66d9e23-865b-4e6a-b4bb-6ba357c6e5b9&quot;,&quot;28&quot;);">공유하기</a>
                    </li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;28&quot;,&quot;a66d9e23-865b-4e6a-b4bb-6ba357c6e5b9&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=c8664819-5f7d-429f-a390-124c1d5cc390&amp;big_category=A01&amp;mid_category=A0101&amp;big_area=36"><em class="numbering">5</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_07.bmp" alt="사천바다 케이블카"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=c8664819-5f7d-429f-a390-124c1d5cc390&amp;big_category=A01&amp;mid_category=A0101&amp;big_area=36">사천바다 케이블카</a> </div>
                  <p>내 위치에서 301.5km - 경상남도 사천시 사천대로 18</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족과함께</span><span>#감성사진</span><span>#경치좋은곳</span><span>#관광지</span><span>#바다풍경</span><span>#사진찍기좋은곳</span><span>#사진촬영명소</span><span>#사천가볼만한곳</span><span>#사천케이블카</span><span>#연인과함께</span><span>#이색체험</span><span>#자연풍경</span><span>#전망대</span><span>#커플데이트</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;c8664819-5f7d-429f-a390-124c1d5cc390&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%82%AC%EC%B2%9C%EB%B0%94%EB%8B%A4%20%EC%BC%80%EC%9D%B4%EB%B8%94%EC%B9%B4&quot;,&quot;undefined&quot;,&quot;c8664819-5f7d-429f-a390-124c1d5cc390&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;c8664819-5f7d-429f-a390-124c1d5cc390&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=79f5a84f-ea59-4343-b89c-839c02343f85&amp;big_category=A04&amp;mid_category=A0401&amp;big_area=36"><em class="numbering">6</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_08.jpg" alt="삼천포용궁수산시장"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=79f5a84f-ea59-4343-b89c-839c02343f85&amp;big_category=A04&amp;mid_category=A0401&amp;big_area=36">삼천포용궁수산시장</a> </div>
                  <p>내 위치에서 302.7km - 경상남도 사천시 어시장길 64</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#경상권</span><span>#기념품판매</span><span>#기차여행</span><span>#나들이</span><span>#나홀로여행</span><span>#데이트코스</span><span>#삼천포용궁수산시장</span><span>#쇼핑</span><span>#시장맛집</span><span>#아이와함께</span><span>#연인과함께</span><span>#친구와함께</span><span>#특산물</span><span>#힐링</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;79f5a84f-ea59-4343-b89c-839c02343f85&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%82%BC%EC%B2%9C%ED%8F%AC%EC%9A%A9%EA%B6%81%EC%88%98%EC%82%B0%EC%8B%9C%EC%9E%A5&quot;,&quot;undefined&quot;,&quot;79f5a84f-ea59-4343-b89c-839c02343f85&quot;,&quot;38&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;38&quot;,&quot;79f5a84f-ea59-4343-b89c-839c02343f85&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=006638dd-2638-433e-9b6d-b92966d67cc6&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36"><em class="numbering">7</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_09.jpg" alt="대방진굴항"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=006638dd-2638-433e-9b6d-b92966d67cc6&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36">대방진굴항</a> </div>
                  <p>내 위치에서 302.0km - 경상남도 사천시 굴항길 99</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#경치좋은곳</span><span>#관광지</span><span>#대방진굴항</span><span>#사천가볼만한곳</span><span>#아이와함께</span><span>#역사</span><span>#연인과함께</span><span>#자연속으로</span><span>#자연여행</span><span>#자연좋은곳</span><span>#자연풍경</span><span>#자연환경</span><span>#친구와함께</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;006638dd-2638-433e-9b6d-b92966d67cc6&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EB%8C%80%EB%B0%A9%EC%A7%84%EA%B5%B4%ED%95%AD&quot;,&quot;undefined&quot;,&quot;006638dd-2638-433e-9b6d-b92966d67cc6&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;006638dd-2638-433e-9b6d-b92966d67cc6&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=3f8deefc-b19b-4567-8377-b209936756ff&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36"><em class="numbering">8</em>
                    <img src="resources/home/assets/img/course_blog/course_blog03/course_blog03_10.jpg" alt="사천선진리왜성"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=3f8deefc-b19b-4567-8377-b209936756ff&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36">사천선진리왜성</a> </div>
                  <p>내 위치에서 289.6km - 경상남도 사천시 용현면 선진리</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#관광지</span><span>#교과서속여행</span><span>#사천선진리왜성</span><span>#아이와함께</span><span>#역사</span><span>#역사유적지</span><span>#연인과함께</span><span>#자연좋은곳</span><span>#전통&amp;역사문화체험</span><span>#전통가옥</span><span>#친구와함께</span><span>#한옥</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;3f8deefc-b19b-4567-8377-b209936756ff&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%82%AC%EC%B2%9C%EC%84%A0%EC%A7%84%EB%A6%AC%EC%99%9C%EC%84%B1&quot;,&quot;undefined&quot;,&quot;3f8deefc-b19b-4567-8377-b209936756ff&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;3f8deefc-b19b-4567-8377-b209936756ff&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=f9f19210-8a2f-4d59-92e7-c4fb0ace2004&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36"><em class="numbering">9</em>
                  <img
                      src="resources/home/assets/img/course_blog/course_blog03/course_blog03_11.jpg" alt="조면군총"></a>
                    </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=f9f19210-8a2f-4d59-92e7-c4fb0ace2004&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36">조면군총</a> </div>
                  <p>내 위치에서 290.0km - 경상남도 사천시 용현면 선진리</p>
                  <p></p>
                  <p class="tag">
                    <span>#관광지</span><span>#역사</span><span>#역사공부</span><span>#역사관광지</span><span>#역사를품은곳</span><span>#역사문화재</span><span>#역사속</span><span>#역사속으로</span><span>#역사여행</span><span>#역사유적</span><span>#역사유적지</span><span>#역사이야기</span><span>#역사탐방</span><span>#역사탐험</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;f9f19210-8a2f-4d59-92e7-c4fb0ace2004&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EC%A1%B0%EB%AA%85%EA%B5%B0%EC%B4%9D&quot;,&quot;undefined&quot;,&quot;f9f19210-8a2f-4d59-92e7-c4fb0ace2004&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;f9f19210-8a2f-4d59-92e7-c4fb0ace2004&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
            </ul>
            <div class="map_allPc" id="map2" style="position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);">
              <div
                style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;">
                <div style="position: absolute;">
                  <div style="position: absolute; z-index: 0;"></div>
                  <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map3.daumcdn.net/map_2d/1912uow/L14/0/-1.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -252px; top: 135px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L14/0/0.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 4px; top: 135px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L14/0/1.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 260px; top: 135px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L14/1/-1.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -252px; top: -121px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L14/1/0.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 4px; top: -121px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L14/1/1.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 260px; top: -121px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L14/2/-1.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -252px; top: -377px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L14/2/0.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 4px; top: -377px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L14/2/1.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 260px; top: -377px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                  </div>
                  <div style="position: absolute; z-index: 1;"></div>
                  <div style="width: 300px; height: 380px; position: absolute; z-index: 1;"></div>
                  <div style="position: absolute; z-index: 1;"><svg version="1.1"
                      style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 1500px; height: 1900px; left: -600px; top: -760px;" viewBox="0 0 1500 1900">
                      <defs></defs>
                    </svg></div>
                  <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                    <div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 163px; top: 276px;"><img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/marker.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 29px, 42px, 0px); top: 0px; left: 0px; width: 29px; height: 42px;"><img
                        src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:1"
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 29px; height: 42px;"><map
                        id="daum.maps.Marker.Area:1" name="daum.maps.Marker.Area:1"><area href="javascript:void(0)" alt="" shape="poly" coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27" title=""
                          style="-webkit-tap-highlight-color: transparent;"></map></div>
                  </div>
                </div>
              </div>
              <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
                <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left; display: none;">
                  <div
                    style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                  </div>
                  <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">128km</div>
                </div>
                <div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png"
                      alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a>
                  <div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
                </div>
              </div>
              <div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
            </div>
          </div>
          <!-- //하단 썸네일, 지도 -->

          <!-- 지도 -->
          <div class="area_map" id="map" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);">
            <img src="resources/home/assets/img/course_blog/map_dim.png" alt="" style="width: 100%; height: 100%;">
            <div
              style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;">
              <div style="position: absolute; left: 551px; top: -310px;">
                <div style="position: absolute; z-index: 0;"></div>
                <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map1.daumcdn.net/map_2d/1912uow/L9/13/17.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -741px; top: 588px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L9/13/18.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -485px; top: 588px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L9/13/19.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -229px; top: 588px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L9/13/20.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 27px; top: 588px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L9/13/21.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 283px; top: 588px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L9/14/17.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -741px; top: 332px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L9/14/18.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -485px; top: 332px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L9/14/19.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -229px; top: 332px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L9/14/20.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 27px; top: 332px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L9/14/21.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 283px; top: 332px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L9/15/17.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -741px; top: 76px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L9/15/18.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -485px; top: 76px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L9/15/19.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -229px; top: 76px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L9/15/20.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 27px; top: 76px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L9/15/21.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 283px; top: 76px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                </div>
                <div style="position: absolute; z-index: 1;"></div>
                <div style="width: 940px; height: 500px; position: absolute; z-index: 1;"></div>
                <div style="position: absolute; z-index: 1;"><svg version="1.1"
                    style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2431px; top: -690px; width: 4700px; height: 2500px;" viewBox="0 0 4700 2500">
                    <defs></defs>
                    <path id="daum-maps-shape-0" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 3px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;"
                      d=" M2445 1182 L2339 1066 2242 1163 2433 1425 2434 1420 2461 1431 2439 1428 2416 1230 2425 1234" transform="translate(0,0)"></path>
                  </svg></div>
                <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 15px; top: 492px;">
                    <img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -101px; left: 15px; top: 492px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=97a637a3-ab05-4541-a605-27c5e2f208cd"><span class="title">사천 항공우주박물관</span></a></div>
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -92px; top: 376px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -189px; top: 474px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 3px; top: 736px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 4px; top: 731px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num5.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 30px; top: 742px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num6.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 8px; top: 739px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num7.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -15px; top: 541px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num8.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -6px; top: 544px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num9.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -72px; left: -92px; top: 376px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=2da82f22-8313-4c46-83b2-00dd7cf9bd76"><span class="title">와인갤러리</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -77px; left: -189px; top: 474px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=5eaf4c33-def9-4b20-872a-47f182cd679b"><span class="title">다솔사(경남)</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -106px; left: 3px; top: 736px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=a66d9e23-865b-4e6a-b4bb-6ba357c6e5b9"><span class="title">황금빛노을바다낚시터</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -94px; left: 4px; top: 731px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=c8664819-5f7d-429f-a390-124c1d5cc390"><span class="title">사천바다 케이블카</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -99px; left: 30px; top: 742px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=79f5a84f-ea59-4343-b89c-839c02343f85"><span class="title">삼천포용궁수산시장</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -72px; left: 8px; top: 739px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=006638dd-2638-433e-9b6d-b92966d67cc6"><span class="title">대방진굴항</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -86px; left: -15px; top: 541px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=3f8deefc-b19b-4567-8377-b209936756ff"><span class="title">사천선진리왜성</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: -6px; top: 544px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=f9f19210-8a2f-4d59-92e7-c4fb0ace2004"><span class="title">조명군총</span></a></div>
                  </div>
                </div>
              </div>
            </div>
            <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
              <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                <div
                  style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                </div>
                <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">4km</div>
              </div>
              <div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png"
                    alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a>
                <div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
              </div>
            </div>
            <div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
          </div>
          <div class="btn_mapMore"><a href="javascript:">크게보기</a></div>
          <!-- //지도 -->

          <!-- 0521 지도 크게보기 팝업 -->
          <div class="wrap_layerpop layer_mapView" style="display: none;">
            <div class="tit">
              <button type="button" class="btn_close2">닫기</button>
            </div>
            <div class="area_map" id="map3" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);">
              <div
                style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;">
                <div style="position: absolute; left: 802px; top: -302px;">
                  <div style="position: absolute; z-index: 0;"></div>
                  <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d/1912uow/L9/13/16.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -965px; top: 580px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L9/13/17.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -709px; top: 580px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L9/13/18.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -453px; top: 580px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L9/13/19.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -197px; top: 580px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L9/13/20.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 59px; top: 580px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L9/13/21.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 315px; top: 580px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L9/13/22.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 571px; top: 580px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L9/14/16.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -965px; top: 324px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L9/14/17.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -709px; top: 324px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L9/14/18.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -453px; top: 324px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L9/14/19.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -197px; top: 324px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L9/14/20.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 59px; top: 324px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L9/14/21.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 315px; top: 324px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L9/14/22.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 571px; top: 324px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L9/15/16.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -965px; top: 68px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L9/15/17.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -709px; top: 68px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L9/15/18.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -453px; top: 68px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L9/15/19.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -197px; top: 68px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L9/15/20.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 59px; top: 68px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L9/15/21.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 315px; top: 68px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L9/15/22.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 571px; top: 68px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                  </div>
                  <div style="position: absolute; z-index: 1;"></div>
                  <div style="width: 1508px; height: 500px; position: absolute; z-index: 1;"></div>
                  <div style="position: absolute; z-index: 1;"><svg version="1.1"
                      style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -3818px; top: -698px; width: 7540px; height: 2500px;" viewBox="0 0 7540 2500">
                      <defs></defs>
                      <path id="daum-maps-shape-1" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 5px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;"
                        d=" M3865 1182 L3758 1066 3662 1163 3852 1425 3854 1421 3880 1431 3858 1428 3834 1230 3844 1234" transform="translate(0,0)"></path>
                    </svg></div>
                  <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 47px; top: 484px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -101px; left: 47px; top: 484px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=97a637a3-ab05-4541-a605-27c5e2f208cd"><span class="title">사천 항공우주박물관</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -60px; top: 368px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -157px; top: 466px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 35px; top: 728px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 36px; top: 723px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num5.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 62px; top: 734px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num6.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 40px; top: 731px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num7.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 17px; top: 533px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num8.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 26px; top: 536px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num9.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -72px; left: -60px; top: 368px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=2da82f22-8313-4c46-83b2-00dd7cf9bd76"><span class="title">와인갤러리</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -77px; left: -157px; top: 466px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=5eaf4c33-def9-4b20-872a-47f182cd679b"><span class="title">다솔사(경남)</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -106px; left: 35px; top: 728px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=a66d9e23-865b-4e6a-b4bb-6ba357c6e5b9"><span class="title">황금빛노을바다낚시터</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -94px; left: 36px; top: 723px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=c8664819-5f7d-429f-a390-124c1d5cc390"><span class="title">사천바다 케이블카</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -99px; left: 62px; top: 734px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=79f5a84f-ea59-4343-b89c-839c02343f85"><span class="title">삼천포용궁수산시장</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -72px; left: 40px; top: 731px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=006638dd-2638-433e-9b6d-b92966d67cc6"><span class="title">대방진굴항</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -86px; left: 17px; top: 533px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=3f8deefc-b19b-4567-8377-b209936756ff"><span class="title">사천선진리왜성</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: 26px; top: 536px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=f9f19210-8a2f-4d59-92e7-c4fb0ace2004"><span class="title">조명군총</span></a></div>
                    </div>
                  </div>
                </div>
              </div>
              <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
                <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                  <div
                    style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                  </div>
                  <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">4km</div>
                </div>
                <div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png"
                      alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a>
                  <div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
                </div>
              </div>
              <div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
            </div>
          </div>
          <!-- //0521 지도 크게보기 팝업 -->
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
