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
            <h2>온 가족이 행복한 진주&amp;산청 여행 코스</h2>
            <div class="area_address">
              <span class="address">경상남도 진주시</span><span id="dist">코스 총거리 : 69.59km</span>
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
                <p>온 가족이 만족할 만 한 여행지는 없을까? 한방으로 우리 가족 건강도 챙기고, 다채로운 축제로 재미도 챙기는 일석이조 진주&amp;산청 코스로 떠나보자.</p>
              </div>
            </div>
            <div class="box_rightType2">
              <div class="img_cosViewR">
                <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_02.jpg" alt="온 가족이 행복한 진주&amp;산청 여행 코스">
              </div>
            </div>
          </div>

          <!-- 하단 썸네일, 지도 -->
          <div class="wrap_contView cosMt clfix">
            <ul class="list_thumType">
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=8b2b5bff-3810-4d69-9a3a-0815b4271d64&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=36"><em class="numbering">1</em>
                    <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_03.bmp" alt="산청 동의보감촌"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=8b2b5bff-3810-4d69-9a3a-0815b4271d64&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=36">산청 동의보감촌</a> </div>
                  <p>내 위치에서 241.5km - 경상남도 산청군 금서면 동의보감로555번길 45-6</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족과함께</span><span>#가족체험학습</span><span>#건강여행</span><span>#관광지</span><span>#산책하기좋은곳</span><span>#산청동의보감촌</span><span>#아이와함께</span><span>#오토캠핑장</span><span>#이색체험</span><span>#자연환경</span><span>#체험프로그램</span><span>#캠핑장소</span><span>#테마공원</span><span>#휴식공간</span><span>#휴식여행</span><span>#휴식하기좋은곳</span><span>#힐링&amp;휴양</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;8b2b5bff-3810-4d69-9a3a-0815b4271d64&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%82%B0%EC%B2%AD%20%EB%8F%99%EC%9D%98%EB%B3%B4%EA%B0%90%EC%B4%8C&quot;,&quot;undefined&quot;,&quot;8b2b5bff-3810-4d69-9a3a-0815b4271d64&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;8b2b5bff-3810-4d69-9a3a-0815b4271d64&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/fes_detail.do?cotid=4edcf4a4-2430-4343-9d43-01a37ac6c431&amp;big_category=A02&amp;mid_category=A0207&amp;big_area=36"><em class="numbering">2</em>
                    <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_04.jpg" alt="산청한방약초축제 2019"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/fes_detail.do?cotid=4edcf4a4-2430-4343-9d43-01a37ac6c431&amp;big_category=A02&amp;mid_category=A0207&amp;big_area=36">산청한방약초축제 2019</a> </div>
                  <p>내 위치에서 245.1km - 경상남도 산청군 금서면 친환경로2605번길 22</p>
                  <p>055-970-6601~5</p>
                  <p class="tag">
                    <span>#2020문화관광축제</span><span>#가볼만한축제</span><span>#가족여행</span><span>#경상권</span><span>#관광지</span><span>#나들이</span><span>#산청한방약초축제</span><span>#아이와함께</span><span>#연인과함께</span><span>#이색체험</span><span>#체험학습</span><span>#축제</span><span>#친구와함께</span><span>#한방약초축제</span><span>#힐링</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;4edcf4a4-2430-4343-9d43-01a37ac6c431&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%5B%EB%AC%B8%ED%99%94%EA%B4%80%EA%B4%91%EC%B6%95%EC%A0%9C%5D%20%EC%82%B0%EC%B2%AD%ED%95%9C%EB%B0%A9%EC%95%BD%EC%B4%88%EC%B6%95%EC%A0%9C%202020&quot;,&quot;undefined&quot;,&quot;4edcf4a4-2430-4343-9d43-01a37ac6c431&quot;,&quot;15&quot;);">공유하기</a>
                    </li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;4edcf4a4-2430-4343-9d43-01a37ac6c431&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=c2e7414e-d4ab-46c0-aed2-39d4b3f55b56&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36"><em class="numbering">3</em>
                    <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_05.jpg" alt="진주성"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=c2e7414e-d4ab-46c0-aed2-39d4b3f55b56&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=36">진주성</a> </div>
                  <p>내 위치에서 275.8km - 경상남도 진주시 남강로 626</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#경상권</span><span>#관광지</span><span>#아이와함께</span><span>#역사</span><span>#역사공부</span><span>#역사관광지</span><span>#역사를품은곳</span><span>#역사문화재</span><span>#역사속</span><span>#역사속으로</span><span>#역사여행</span><span>#역사유적</span><span>#역사유적지</span><span>#역사탐방</span><span>#역사탐험</span><span>#진주성</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;c2e7414e-d4ab-46c0-aed2-39d4b3f55b56&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EC%A7%84%EC%A3%BC%EC%84%B1&quot;,&quot;undefined&quot;,&quot;c2e7414e-d4ab-46c0-aed2-39d4b3f55b56&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;c2e7414e-d4ab-46c0-aed2-39d4b3f55b56&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/fes_detail.do?cotid=1e38f854-c8c5-49fa-af19-2f055be3d200&amp;big_category=A02&amp;mid_category=A0207&amp;big_area=36"><em class="numbering">4</em>
                    <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_06.jpg" alt="진주 남강유등축제 2019"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/fes_detail.do?cotid=1e38f854-c8c5-49fa-af19-2f055be3d200&amp;big_category=A02&amp;mid_category=A0207&amp;big_area=36">진주 남강유등축제 2019</a> </div>
                  <p>내 위치에서 275.8km - 경상남도 진주시 남강로 626</p>
                  <p>055-755-9111</p>
                  <p class="tag">
                    <span>#가볼만한축제</span><span>#가족여행</span><span>#경상권</span><span>#관광지</span><span>#교과서속여행</span><span>#기차여행</span><span>#나들이</span><span>#데이트코스</span><span>#아이와함께</span><span>#연인과함께</span><span>#이색</span><span>#이색체험</span><span>#지주남강유등축제</span><span>#체험학습</span><span>#축제</span><span>#친구와함께</span><span>#힐링</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;1e38f854-c8c5-49fa-af19-2f055be3d200&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%5B%EB%AA%85%EC%98%88%EB%8C%80%ED%91%9C%EC%B6%95%EC%A0%9C%5D%EC%A7%84%EC%A3%BC%20%EB%82%A8%EA%B0%95%EC%9C%A0%EB%93%B1%EC%B6%95%EC%A0%9C%202020&quot;,&quot;undefined&quot;,&quot;1e38f854-c8c5-49fa-af19-2f055be3d200&quot;,&quot;15&quot;);">공유하기</a>
                    </li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;1e38f854-c8c5-49fa-af19-2f055be3d200&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=51f3c097-6c81-4aa7-bcca-26863f24b8b6&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=36"><em class="numbering">5</em>
                    <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_07.bmp" alt="진주시립 이성자미술관"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=51f3c097-6c81-4aa7-bcca-26863f24b8b6&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=36">진주시립 이성자미술관</a> </div>
                  <p>내 위치에서 279.4km - 경상남도 진주시 에나로128번길 14</p>
                  <p></p>
                  <p class="tag">
                    <span>#남녀노소</span><span>#문화시설</span><span>#문화예술공간</span><span>#미세먼지_피하는_실내여행</span><span>#미술관</span><span>#미술작품</span><span>#복합문화공간</span><span>#연인과함께</span><span>#열린문화공간</span><span>#진주가볼만한곳</span><span>#체험프로그램</span><span>#휴식공간</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;51f3c097-6c81-4aa7-bcca-26863f24b8b6&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%A7%84%EC%A3%BC%EC%8B%9C%EB%A6%BD%20%EC%9D%B4%EC%84%B1%EC%9E%90%EB%AF%B8%EC%88%A0%EA%B4%80&quot;,&quot;undefined&quot;,&quot;51f3c097-6c81-4aa7-bcca-26863f24b8b6&quot;,&quot;14&quot;);">공유하기</a>
                    </li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;14&quot;,&quot;51f3c097-6c81-4aa7-bcca-26863f24b8b6&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=7543c961-d026-4499-a2a3-1136635d7789&amp;big_category=A03&amp;mid_category=A0305&amp;big_area=36"><em class="numbering">6</em>
                    <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_08.jpg" alt="진주 레일바이크"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=7543c961-d026-4499-a2a3-1136635d7789&amp;big_category=A03&amp;mid_category=A0305&amp;big_area=36">진주 레일바이크</a> </div>
                  <p>내 위치에서 277.8km - 경상남도 진주시 내동면 망경로 13</p>
                  <p></p>
                  <p class="tag"><span>#레포츠</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;7543c961-d026-4499-a2a3-1136635d7789&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%A7%84%EC%A3%BC%20%EB%A0%88%EC%9D%BC%EB%B0%94%EC%9D%B4%ED%81%AC&quot;,&quot;undefined&quot;,&quot;7543c961-d026-4499-a2a3-1136635d7789&quot;,&quot;28&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;28&quot;,&quot;7543c961-d026-4499-a2a3-1136635d7789&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=cf979cf3-4d3d-4709-bf58-a6c97bd16668&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=36"><em class="numbering">7</em>
                    <img src="resources/home/assets/img/course_blog/course_blog07/course_blog07_09.jpg" alt="진양호 공원/전망대"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=cf979cf3-4d3d-4709-bf58-a6c97bd16668&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=36">진양호 공원/전망대</a> </div>
                  <p>내 위치에서 275.9km - 경상남도 진주시 남강로1번길 130</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#경상권</span><span>#관광지</span><span>#데이트코스</span><span>#동물원</span><span>#생태관광지</span><span>#아이와함께</span><span>#연인과함께</span><span>#영화촬영지</span><span>#진양호공원</span><span>#휴식공간</span><span>#휴식여행</span><span>#휴식하기</span><span>#휴식하기좋은곳</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;cf979cf3-4d3d-4709-bf58-a6c97bd16668&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%A7%84%EC%96%91%ED%98%B8%20%EA%B3%B5%EC%9B%90%20(%EC%A7%84%EC%96%91%ED%98%B8%20%EC%A0%84%EB%A7%9D%EB%8C%80%2C%20%EB%8F%99%EB%AC%BC%EC%9B%90)&quot;,&quot;undefined&quot;,&quot;cf979cf3-4d3d-4709-bf58-a6c97bd16668&quot;,&quot;12&quot;);">공유하기</a>
                    </li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;cf979cf3-4d3d-4709-bf58-a6c97bd16668&quot;,&quot;&quot;)">코스에 담기</a></li>
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
                    <div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 153px; top: 257px;"><img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/marker.png" alt="" title=""
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
              <div style="position: absolute; left: 351px; top: -365px;">
                <div style="position: absolute; z-index: 0;"></div>
                <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map3.daumcdn.net/map_2d/1912uow/L10/6/7.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -585px; top: 863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L10/6/8.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -329px; top: 863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L10/6/9.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -73px; top: 863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L10/6/10.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 183px; top: 863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L10/6/11.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 439px; top: 863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L10/7/7.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -585px; top: 607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L10/7/8.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -329px; top: 607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L10/7/9.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -73px; top: 607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L10/7/10.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 183px; top: 607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L10/7/11.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 439px; top: 607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L10/8/7.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -585px; top: 351px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L10/8/8.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -329px; top: 351px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L10/8/9.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -73px; top: 351px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L10/8/10.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 183px; top: 351px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L10/8/11.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 439px; top: 351px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                </div>
                <div style="position: absolute; z-index: 1;"></div>
                <div style="width: 940px; height: 500px; position: absolute; z-index: 1;"></div>
                <div style="position: absolute; z-index: 1;"><svg version="1.1"
                    style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2231px; top: -635px; width: 4700px; height: 2500px;" viewBox="0 0 4700 2500">
                    <defs></defs>
                    <path id="daum-maps-shape-0" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 3px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;"
                      d=" M2238 1131 L2268 1149 2418 1347 2463 1358 2409 1368 2387 1360" transform="translate(0,0)"></path>
                  </svg></div>
                <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 8px; top: 497px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -87px; left: 8px; top: 497px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=8b2b5bff-3810-4d69-9a3a-0815b4271d64"><span class="title">산청 동의보감촌</span></a></div>
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 38px; top: 515px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 188px; top: 713px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 188px; top: 713px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 233px; top: 724px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num5.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 179px; top: 734px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num6.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 157px; top: 726px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num7.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -159px; left: 38px; top: 515px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=4edcf4a4-2430-4343-9d43-01a37ac6c431"><span class="title">[문화관광축제] 산청한방약초축제 2020</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -58px; left: 188px; top: 713px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=c2e7414e-d4ab-46c0-aed2-39d4b3f55b56"><span class="title">진주성</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -159px; left: 188px; top: 713px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=1e38f854-c8c5-49fa-af19-2f055be3d200"><span class="title">[명예대표축제]진주 남강유등축제 2020</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -108px; left: 233px; top: 724px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=51f3c097-6c81-4aa7-bcca-26863f24b8b6"><span class="title">진주시립 이성자미술관</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -87px; left: 179px; top: 734px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=7543c961-d026-4499-a2a3-1136635d7789"><span class="title">진주 레일바이크</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -148px; left: 157px; top: 726px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=cf979cf3-4d3d-4709-bf58-a6c97bd16668"><span class="title">진양호 공원 (진양호 전망대, 동물원)</span></a></div>
                  </div>
                </div>
              </div>
            </div>
            <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
              <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                <div
                  style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                </div>
                <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">8km</div>
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
                <div style="position: absolute; left: 619px; top: -361px;">
                  <div style="position: absolute; z-index: 0;"></div>
                  <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map2.daumcdn.net/map_2d/1912uow/L10/6/6.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -825px; top: 859px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L10/6/7.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -569px; top: 859px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L10/6/8.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -313px; top: 859px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L10/6/9.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -57px; top: 859px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L10/6/10.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 199px; top: 859px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L10/6/11.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 455px; top: 859px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L10/6/12.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 711px; top: 859px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L10/7/6.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -825px; top: 603px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L10/7/7.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -569px; top: 603px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L10/7/8.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -313px; top: 603px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L10/7/9.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -57px; top: 603px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L10/7/10.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 199px; top: 603px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L10/7/11.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 455px; top: 603px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L10/7/12.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 711px; top: 603px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L10/8/6.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -825px; top: 347px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L10/8/7.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -569px; top: 347px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L10/8/8.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -313px; top: 347px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L10/8/9.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -57px; top: 347px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L10/8/10.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 199px; top: 347px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L10/8/11.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 455px; top: 347px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L10/8/12.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 711px; top: 347px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                  </div>
                  <div style="position: absolute; z-index: 1;"></div>
                  <div style="width: 1508px; height: 500px; position: absolute; z-index: 1;"></div>
                  <div style="position: absolute; z-index: 1;"><svg version="1.1"
                      style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -3635px; top: -639px; width: 7540px; height: 2500px;" viewBox="0 0 7540 2500">
                      <defs></defs>
                      <path id="daum-maps-shape-1" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 5px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;"
                        d=" M3658 1131 L3688 1149 3838 1347 3883 1358 3830 1368 3808 1360" transform="translate(0,0)"></path>
                    </svg></div>
                  <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 24px; top: 493px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -87px; left: 24px; top: 493px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=8b2b5bff-3810-4d69-9a3a-0815b4271d64"><span class="title">산청 동의보감촌</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 54px; top: 511px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 204px; top: 709px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 204px; top: 709px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 249px; top: 720px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num5.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 195px; top: 730px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num6.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 173px; top: 722px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num7.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -159px; left: 54px; top: 511px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=4edcf4a4-2430-4343-9d43-01a37ac6c431"><span class="title">[문화관광축제] 산청한방약초축제 2020</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -58px; left: 204px; top: 709px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=c2e7414e-d4ab-46c0-aed2-39d4b3f55b56"><span class="title">진주성</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -159px; left: 204px; top: 709px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=1e38f854-c8c5-49fa-af19-2f055be3d200"><span class="title">[명예대표축제]진주 남강유등축제 2020</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -108px; left: 249px; top: 720px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=51f3c097-6c81-4aa7-bcca-26863f24b8b6"><span class="title">진주시립 이성자미술관</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -87px; left: 195px; top: 730px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=7543c961-d026-4499-a2a3-1136635d7789"><span class="title">진주 레일바이크</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -148px; left: 173px; top: 722px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=cf979cf3-4d3d-4709-bf58-a6c97bd16668"><span class="title">진양호 공원 (진양호 전망대, 동물원)</span></a></div>
                    </div>
                  </div>
                </div>
              </div>
              <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
                <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                  <div
                    style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                  </div>
                  <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">8km</div>
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
