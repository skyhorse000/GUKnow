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
            <h2>고흥의 문화유적 코스 1</h2>
            <div class="area_address">
              <span class="address">전라남도 고흥군</span><span id="dist">코스 총거리 : 26.55km</span>
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
                <p>지협을 통해 육지와 연결된 북부를 제외한 군 전체가 남해에 둘러싸여 있는 고흥 반도의 형상을 두고서‘누워있는 소’ ‘잘록한 호리병 모양’ ‘다도해에 드리운 복주머니’라고 표현하기도 한다. 이곳의 역사와 문화가 깃든 고흥의 여행 코스를 소개한다.</p>
              </div>
            </div>
            <div class="box_rightType2">
              <div class="img_cosViewR">
                <img src="resources/home/assets/img/course_blog/course_blog01/course_blog01_01.jpg" alt="고흥의 문화유적 코스 1">
              </div>
            </div>
          </div>

          <!-- 하단 썸네일, 지도 -->
          <div class="wrap_contView cosMt clfix">
            <ul class="list_thumType">
              <li>
                <div class="photo">
                  <a href="#"><em class="numbering">1</em>
                    <img src="resources/home/assets/img/course_blog/course_blog01/course_blog01_02.jpg" alt="고흥 존심당 및 아문">
                  </a>
                </div>
                <div class="area_txt">
                  <div class="tit">
                    <a href="#">고흥 존심당 및 아문
                    </a>
                  </div>
                  <p>내 위치에서 320.9km - 전라남도 고흥군 고흥읍 후동길 4</p>
                  <p></p>
                  <p class="tag">
                    <span>#관광지</span><span>#아문</span><span>#역사</span><span>#역사공부</span><span>#역사관광지</span><span>#역사를품은곳</span><span>#역사문화재</span><span>#역사속</span><span>#역사유적지</span><span>#역사이야기</span><span>#전라권</span><span>#전라남도유형문화재</span><span>#존심당</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far">
                      <a href="javascript:" onclick="setFavoContent(&quot;5633385f-ae81-4a6c-adcd-5cc04ddbeeb5&quot;)">즐겨찾기
                      </a>
                    </li>
                    <li class="btn_share">
                      <a href="javascript:"
                        onclick="getShareInfo(&quot;%EA%B3%A0%ED%9D%A5%20%EC%A1%B4%EC%8B%AC%EB%8B%B9%20%EB%B0%8F%20%EC%95%84%EB%AC%B8&quot;,&quot;undefined&quot;,&quot;5633385f-ae81-4a6c-adcd-5cc04ddbeeb5&quot;,&quot;12&quot;);">공유하기
                      </a>
                    </li>
                    <li class="btn_cart">
                      <a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;5633385f-ae81-4a6c-adcd-5cc04ddbeeb5&quot;,&quot;&quot;)">코스에 담기
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo">
                  <a href="#">
                    <em class="numbering">2</em>
                    <img src="resources/home/assets/img/course_blog/course_blog01/course_blog01_03.jpg" alt="쌍충사">
                  </a>
                </div>
                <div class="area_txt">
                  <div class="tit">
                    <a href="#">쌍충사
                    </a>
                  </div>
                  <p>내 위치에서 328.9km - 전라남도 고흥군 도양읍 목넘가는길 34</p>
                  <p></p>
                  <p class="tag">
                    <span>#관광지</span><span>#쌍충사</span><span>#역사</span><span>#역사공부</span><span>#역사관광지</span><span>#역사를품은곳</span><span>#역사문화재</span><span>#역사속</span><span>#역사속으로</span><span>#역사여행</span><span>#역사유적</span><span>#역사유적지</span><span>#역사이야기</span><span>#역사탐방</span><span>#역사탐험</span><span>#전라권</span><span>#전라남도기념물</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far">
                      <a href="javascript:" onclick="setFavoContent(&quot;13acb662-b938-4cee-b353-ff7a682ed155&quot;)">즐겨찾기
                      </a>
                    </li>
                    <li class="btn_share">
                      <a href="javascript:" onclick="getShareInfo(&quot;%EA%B3%A0%ED%9D%A5%20%EC%8C%8D%EC%B6%A9%EC%82%AC&quot;,&quot;undefined&quot;,&quot;13acb662-b938-4cee-b353-ff7a682ed155&quot;,&quot;12&quot;);">공유하기
                      </a>
                    </li>
                    <li class="btn_cart">
                      <a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;13acb662-b938-4cee-b353-ff7a682ed155&quot;,&quot;&quot;)">코스에 담기
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo">
                  <a href="#"><em class="numbering">3</em>
                    <img src="resources/home/assets/img/course_blog/course_blog01/course_blog01_04.jpg" alt="점심식사(녹동회타운)">
                  </a>
                </div>
                <div class="area_txt">
                  <div class="tit">
                    <a href="#">점심식사(녹동회타운)
                    </a>
                  </div>
                  <p>내 위치에서 328.9km - 전라남도 고흥군 도양읍 목넘가는길 19</p>
                  <p>061-842-5199</p>
                  <p class="tag"><span>#건라권</span><span>#고흥군</span><span>#맛집</span><span>#생선매운탕</span><span>#음식</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far">
                      <a href="javascript:" onclick="setFavoContent(&quot;3754b422-72ef-485b-9d24-b5d574fff74e&quot;)">즐겨찾기
                      </a>
                    </li>
                    <li class="btn_share">
                      <a href="javascript:" onclick="getShareInfo(&quot;%EB%85%B9%EB%8F%99%ED%9A%8C%ED%83%80%EC%9A%B4&quot;,&quot;undefined&quot;,&quot;3754b422-72ef-485b-9d24-b5d574fff74e&quot;,&quot;39&quot;);">공유하기
                      </a>
                    </li>
                    <li class="btn_cart">
                      <a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;39&quot;,&quot;3754b422-72ef-485b-9d24-b5d574fff74e&quot;,&quot;&quot;)">코스에 담기
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo">
                  <a href="#"><em class="numbering">4</em>
                    <img src="resources/home/assets/img/course_blog/course_blog01/course_blog01_05.jpg" alt="소록도"></a>
                </div>
                <div class="area_txt">
                  <div class="tit">
                    <a href="#">소록도
                    </a>
                  </div>
                  <p>내 위치에서 329.8km - 전라남도 고흥군 도양읍 소록리</p>
                  <p></p>
                  <p class="tag"><span>#관광지</span><span>#자연</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;6a2ee24e-fa3b-4618-a9b9-953c05900a66&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EC%86%8C%EB%A1%9D%EB%8F%84&quot;,&quot;undefined&quot;,&quot;6a2ee24e-fa3b-4618-a9b9-953c05900a66&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;6a2ee24e-fa3b-4618-a9b9-953c05900a66&quot;,&quot;&quot;)">코스에 담기</a></li>
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
                    <div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 129px; top: 302px;"><img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/marker.png" alt="" title=""
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
              <div style="position: absolute; left: 666px; top: -394px;">
                <div style="position: absolute; z-index: 0;"></div>
                <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d/1912uow/L8/20/28.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -808px; top: 856px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L8/20/29.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -552px; top: 856px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L8/20/30.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -296px; top: 856px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L8/20/31.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -40px; top: 856px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/20/32.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 216px; top: 856px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/21/28.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -808px; top: 600px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L8/21/29.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -552px; top: 600px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L8/21/30.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -296px; top: 600px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L8/21/31.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -40px; top: 600px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/21/32.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 216px; top: 600px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/22/28.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -808px; top: 344px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L8/22/29.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -552px; top: 344px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L8/22/30.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -296px; top: 344px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L8/22/31.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -40px; top: 344px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/22/32.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 216px; top: 344px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                </div>
                <div style="position: absolute; z-index: 1;"></div>
                <div style="width: 940px; height: 500px; position: absolute; z-index: 1;"></div>
                <div style="position: absolute; z-index: 1;"><svg version="1.1"
                    style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2546px; top: -606px; width: 4700px; height: 2500px;" viewBox="0 0 4700 2500">
                    <defs></defs>
                    <path id="daum-maps-shape-0" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 3px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;" d=" M2575 1090 L2136 1379 2138 1380 2126 1408"
                      transform="translate(0,0)"></path>
                  </svg></div>
                <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 30px; top: 484px;">
                    <img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -97px; left: 30px; top: 484px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=5633385f-ae81-4a6c-adcd-5cc04ddbeeb5"><span class="title">고흥 존심당 및 아문</span></a></div>
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -411px; top: 773px; display: block;">
                    <img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -408px; top: 774px; display: block;">
                    <img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -420px; top: 803px; display: block;">
                    <img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -73px; left: -411px; top: 773px;">
                    <div class="spot">
                      <a href="#"><span class="title">고흥 쌍충사</span>
                      </a>
                    </div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -72px; left: -408px; top: 774px;">
                    <div class="spot">
                      <a href="#"><span class="title">녹동회타운</span>
                      </a>
                    </div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -58px; left: -420px; top: 803px;">
                    <div class="spot">
                      <a href="#"><span class="title">소록도</span>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
              <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                <div
                  style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                </div>
                <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">2km</div>
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
                <div style="position: absolute; left: 816px; top: -378px;">
                  <div style="position: absolute; z-index: 0;"></div>
                  <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map3.daumcdn.net/map_2d/1912uow/L8/20/27.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1009px; top: 841px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/20/28.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -753px; top: 841px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/20/29.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -497px; top: 841px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L8/20/30.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -241px; top: 841px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/20/31.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 15px; top: 841px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/20/32.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 271px; top: 841px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/20/33.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 527px; top: 841px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/21/27.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1009px; top: 585px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/21/28.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -753px; top: 585px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/21/29.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -497px; top: 585px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L8/21/30.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -241px; top: 585px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/21/31.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 15px; top: 585px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/21/32.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 271px; top: 585px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/21/33.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 527px; top: 585px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/22/27.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1009px; top: 329px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/22/28.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -753px; top: 329px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/22/29.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -497px; top: 329px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L8/22/30.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -241px; top: 329px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/22/31.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 15px; top: 329px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/22/32.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 271px; top: 329px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/22/33.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 527px; top: 329px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                  </div>
                  <div style="position: absolute; z-index: 1;"></div>
                  <div style="width: 1349px; height: 500px; position: absolute; z-index: 1;"></div>
                  <div style="position: absolute; z-index: 1;"><svg version="1.1"
                      style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -3514px; top: -622px; width: 6745px; height: 2500px;" viewBox="0 0 6745 2500">
                      <defs></defs>
                      <path id="daum-maps-shape-1" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 5px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;" d=" M3598 1090 L3159 1379 3161 1380 3149 1409"
                        transform="translate(0,0)"></path>
                    </svg></div>
                  <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 85px; top: 469px;">
                      <img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -97px; left: 85px; top: 469px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=5633385f-ae81-4a6c-adcd-5cc04ddbeeb5"><span class="title">고흥 존심당 및 아문</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -356px; top: 758px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -353px; top: 759px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: -365px; top: 788px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -73px; left: -356px; top: 758px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=13acb662-b938-4cee-b353-ff7a682ed155"><span class="title">고흥 쌍충사</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -72px; left: -353px; top: 759px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=3754b422-72ef-485b-9d24-b5d574fff74e"><span class="title">녹동회타운</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -58px; left: -365px; top: 788px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=6a2ee24e-fa3b-4618-a9b9-953c05900a66"><span class="title">소록도</span></a></div>
                    </div>
                  </div>
                </div>
              </div>
              <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
                <div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
                  <div
                    style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
                  </div>
                  <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">2km</div>
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
