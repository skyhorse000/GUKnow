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
            <h2>영암의 명물 기찬랜드와 낙지요리 코스</h2>
            <div class="area_address">
              <span class="address">전라남도 영암군</span><span id="dist">코스 총거리 : 12.35km</span>
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
                <p>월출산 자락의 기찬랜드는 자연풀장, 삼림욕장 등 웰빙시설이 되어 있어 자연에서 즐기려는 가족단위 여행에 각광받고 있다. 특히 가야금테마파크가 조성되어 있어 자녀들이 민족문화체험을 함께 할 수 있다. 월출산의 정기가 살아있는 소나무 숲 쉼터에서 자연을 마음껏 즐길 수 있는 코스니 영암에서 이 여름의 뜨거움을 식혀보자.</p>
              </div>
            </div>
            <div class="box_rightType2">
              <div class="img_cosViewR">
                <img src="resources/home/assets/img/course_blog/course_blog04/course_blog04_02.jpg" alt="영암의 명물 기찬랜드와 낙지요리 코스">
              </div>
            </div>
          </div>

          <!-- 하단 썸네일, 지도 -->
          <div class="wrap_contView cosMt clfix">
            <ul class="list_thumType">
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=b492c583-b256-471c-a372-aedfaeed4f0d&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=38"><em class="numbering">1</em>
                    <img src="resources/home/assets/img/course_blog/course_blog04/course_blog04_03.jpg" alt="월출산 기찬랜드"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=b492c583-b256-471c-a372-aedfaeed4f0d&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=38">월출산 기찬랜드</a> </div>
                  <p>내 위치에서 299.5km - 전라남도 영암군 영암읍 기찬랜드로 19-3</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#경치좋은곳</span><span>#관광지</span><span>#산책하기좋은곳</span><span>#월출산</span><span>#월출산기찬랜드</span><span>#자연좋은곳</span><span>#자연환경</span><span>#전라권</span><span>#휴식하기좋은곳</span><span>#휴양여행</span><span>#힐링</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;b492c583-b256-471c-a372-aedfaeed4f0d&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%9B%94%EC%B6%9C%EC%82%B0%20%EA%B8%B0%EC%B0%AC%EB%9E%9C%EB%93%9C&quot;,&quot;undefined&quot;,&quot;b492c583-b256-471c-a372-aedfaeed4f0d&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;b492c583-b256-471c-a372-aedfaeed4f0d&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=d6fc76d4-f8b3-4d99-b9cf-570d104847fa&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=38"><em class="numbering">2</em>
                    <img src="resources/home/assets/img/course_blog/course_blog04/course_blog04_04.jpg" alt="영암향교"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=d6fc76d4-f8b3-4d99-b9cf-570d104847fa&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=38">영암향교</a> </div>
                  <p>내 위치에서 298.9km - 전라남도 영암군 영암읍 교동로 73</p>
                  <p></p>
                  <p class="tag">
                    <span>#관광지</span><span>#역사</span><span>#역사공부</span><span>#역사관광지</span><span>#역사를품은곳</span><span>#역사문화재</span><span>#역사속</span><span>#역사속으로</span><span>#역사유적</span><span>#역사유적지</span><span>#역사이야기</span><span>#역사탐험</span><span>#영암향교</span><span>#전라권</span><span>#전라남도문화재자료</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;d6fc76d4-f8b3-4d99-b9cf-570d104847fa&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EC%98%81%EC%95%94%ED%96%A5%EA%B5%90&quot;,&quot;undefined&quot;,&quot;d6fc76d4-f8b3-4d99-b9cf-570d104847fa&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;d6fc76d4-f8b3-4d99-b9cf-570d104847fa&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=57aa3cec-313f-4686-8a8b-3dc97e507eb6&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=38"><em class="numbering">3</em>
                    <img src="resources/home/assets/img/course_blog/course_blog04/course_blog04_05.jpg" alt="녹동서원"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=57aa3cec-313f-4686-8a8b-3dc97e507eb6&amp;big_category=A02&amp;mid_category=A0201&amp;big_area=38">녹동서원</a> </div>
                  <p>내 위치에서 298.9km - 전라남도 영암군 영암읍 교동로 73</p>
                  <p></p>
                  <p class="tag">
                    <span>#관광지</span><span>#녹동서원</span><span>#역사</span><span>#역사공부</span><span>#역사관광지</span><span>#역사를품은곳</span><span>#역사문화재</span><span>#역사속</span><span>#역사속으로</span><span>#역사유적</span><span>#역사유적지</span><span>#역사탐방</span><span>#역사탐험</span><span>#전라권</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;57aa3cec-313f-4686-8a8b-3dc97e507eb6&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EB%85%B9%EB%8F%99%EC%84%9C%EC%9B%90&quot;,&quot;undefined&quot;,&quot;57aa3cec-313f-4686-8a8b-3dc97e507eb6&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;57aa3cec-313f-4686-8a8b-3dc97e507eb6&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=006e677e-fc2a-4f19-9263-57bc3fad3b3b&amp;big_category=A05&amp;mid_category=A0502&amp;big_area=38"><em class="numbering">4</em>
                    <img src="resources/home/assets/img/course_blog/course_blog04/course_blog04_06.jpg" alt="동락식당"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=006e677e-fc2a-4f19-9263-57bc3fad3b3b&amp;big_category=A05&amp;mid_category=A0502&amp;big_area=38">동락식당</a> </div>
                  <p>내 위치에서 298.6km - 전라남도 영암군 영암읍 서문로 10</p>
                  <p>061-473-2892</p>
                  <p class="tag"><span>#갈낙탕</span><span>#동락식당</span><span>#맛집</span><span>#영암맛집</span><span>#음식</span><span>#전라권</span><span>#한식</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;006e677e-fc2a-4f19-9263-57bc3fad3b3b&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EB%8F%99%EB%9D%BD%EC%8B%9D%EB%8B%B9&quot;,&quot;undefined&quot;,&quot;006e677e-fc2a-4f19-9263-57bc3fad3b3b&quot;,&quot;39&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;39&quot;,&quot;006e677e-fc2a-4f19-9263-57bc3fad3b3b&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=e5d76d04-6d62-4eef-8098-d39d705afa4a&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=38"><em class="numbering">5</em>
                    <img src="resources/home/assets/img/course_blog/course_blog04/course_blog04_07.jpg" alt="영암도기박물관"></a>
                </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=e5d76d04-6d62-4eef-8098-d39d705afa4a&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=38">영암도기박물관</a> </div>
                  <p>내 위치에서 303.4km - 전라남도 영암군 군서면 서호정길 5</p>
                  <p></p>
                  <p class="tag"><span>#기차여행</span><span>#단체체험</span><span>#문화시설</span><span>#박물관</span><span>#아이와함께</span><span>#영암도기박물관</span><span>#이색체험</span><span>#전라권</span><span>#체험학습</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;e5d76d04-6d62-4eef-8098-d39d705afa4a&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EC%98%81%EC%95%94%EB%8F%84%EA%B8%B0%EB%B0%95%EB%AC%BC%EA%B4%80&quot;,&quot;undefined&quot;,&quot;e5d76d04-6d62-4eef-8098-d39d705afa4a&quot;,&quot;14&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;14&quot;,&quot;e5d76d04-6d62-4eef-8098-d39d705afa4a&quot;,&quot;&quot;)">코스에 담기</a></li>
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
                    <div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 102px; top: 292px;"><img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/marker.png" alt="" title=""
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
              <div style="position: absolute; left: 578px; top: -301px;">
                <div style="position: absolute; z-index: 0;"></div>
                <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map2.daumcdn.net/map_2d/1912uow/L7/48/46.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -747px; top: 676px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L7/48/47.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -491px; top: 676px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L7/48/48.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -235px; top: 676px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L7/48/49.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 21px; top: 676px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L7/48/50.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 277px; top: 676px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L7/49/46.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -747px; top: 420px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L7/49/47.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -491px; top: 420px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L7/49/48.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -235px; top: 420px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L7/49/49.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 21px; top: 420px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L7/49/50.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 277px; top: 420px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L7/50/46.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -747px; top: 164px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L7/50/47.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -491px; top: 164px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L7/50/48.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -235px; top: 164px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L7/50/49.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 21px; top: 164px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L7/50/50.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 277px; top: 164px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                </div>
                <div style="position: absolute; z-index: 1;"></div>
                <div style="width: 940px; height: 500px; position: absolute; z-index: 1;"></div>
                <div style="position: absolute; z-index: 1;"><svg version="1.1"
                    style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2458px; top: -699px; width: 4700px; height: 2500px;" viewBox="0 0 4700 2500">
                    <defs></defs>
                    <path id="daum-maps-shape-0" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 3px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;" d=" M2516 1167 L2553 1131 2557 1129 2569 1116 2132 1382"
                      transform="translate(0,0)"></path>
                  </svg></div>
                <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 59px; top: 469px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -87px; left: 59px; top: 469px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=b492c583-b256-471c-a372-aedfaeed4f0d"><span class="title">월출산 기찬랜드</span></a></div>
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 96px; top: 433px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 100px; top: 431px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 112px; top: 418px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -327px; top: 684px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num5.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: 96px; top: 433px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=d6fc76d4-f8b3-4d99-b9cf-570d104847fa"><span class="title">영암향교</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: 100px; top: 431px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=57aa3cec-313f-4686-8a8b-3dc97e507eb6"><span class="title">녹동서원</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: 112px; top: 418px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=006e677e-fc2a-4f19-9263-57bc3fad3b3b"><span class="title">동락식당</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -86px; left: -327px; top: 684px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=e5d76d04-6d62-4eef-8098-d39d705afa4a"><span class="title">영암도기박물관</span></a></div>
                  </div>
                </div>
              </div>
            </div>
            <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
              <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                <div
                  style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                </div>
                <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">1km</div>
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
                <div style="position: absolute; left: 732px; top: -269px;">
                  <div style="position: absolute; z-index: 0;"></div>
                  <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map1.daumcdn.net/map_2d/1912uow/L7/48/45.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -873px; top: 644px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L7/48/46.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -617px; top: 644px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L7/48/47.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -361px; top: 644px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L7/48/48.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -105px; top: 644px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L7/48/49.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 151px; top: 644px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L7/48/50.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 407px; top: 644px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L7/48/51.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 663px; top: 644px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L7/49/45.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -873px; top: 388px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L7/49/46.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -617px; top: 388px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L7/49/47.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -361px; top: 388px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L7/49/48.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -105px; top: 388px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L7/49/49.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 151px; top: 388px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L7/49/50.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 407px; top: 388px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L7/49/51.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 663px; top: 388px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L7/50/45.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -873px; top: 132px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L7/50/46.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -617px; top: 132px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L7/50/47.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -361px; top: 132px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L7/50/48.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -105px; top: 132px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L7/50/49.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 151px; top: 132px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L7/50/50.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 407px; top: 132px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L7/50/51.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 663px; top: 132px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                  </div>
                  <div style="position: absolute; z-index: 1;"></div>
                  <div style="width: 1508px; height: 500px; position: absolute; z-index: 1;"></div>
                  <div style="position: absolute; z-index: 1;"><svg version="1.1"
                      style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -3748px; top: -731px; width: 7540px; height: 2500px;" viewBox="0 0 7540 2500">
                      <defs></defs>
                      <path id="daum-maps-shape-1" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 5px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;" d=" M3936 1168 L3973 1132 3977 1129 3989 1116 3552 1382"
                        transform="translate(0,0)"></path>
                    </svg></div>
                  <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 189px; top: 437px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -87px; left: 189px; top: 437px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=b492c583-b256-471c-a372-aedfaeed4f0d"><span class="title">월출산 기찬랜드</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 226px; top: 401px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: 226px; top: 401px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=d6fc76d4-f8b3-4d99-b9cf-570d104847fa"><span class="title">영암향교</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 230px; top: 399px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: 230px; top: 399px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=57aa3cec-313f-4686-8a8b-3dc97e507eb6"><span class="title">녹동서원</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 242px; top: 386px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -65px; left: 242px; top: 386px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=006e677e-fc2a-4f19-9263-57bc3fad3b3b"><span class="title">동락식당</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -197px; top: 652px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num5.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -86px; left: -197px; top: 652px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=e5d76d04-6d62-4eef-8098-d39d705afa4a"><span class="title">영암도기박물관</span></a></div>
                    </div>
                  </div>
                </div>
              </div>
              <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
                <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                  <div
                    style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                  </div>
                  <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">1km</div>
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
