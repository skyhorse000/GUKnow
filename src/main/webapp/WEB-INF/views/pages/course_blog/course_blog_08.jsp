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
            <h2>부산의 자연생태 체험 코스</h2>
            <div class="area_address">
              <span class="address">부산</span><span id="dist">코스 총거리 : 28.68km</span>
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
                <p>부산은 바다가 있는 큰 도시로 다양한 코스, 체험거리, 즐길거리가 무궁무진하다. 그중에서도 이 코스는 부산을 둘러싼 육지 자연환경과 바다환경과 생물들을 골고루 둘러볼 수 있는 코스다. 코스 중간에 부산이 가진 다양한 별미 맛보는 것도 잊지 말자.</p>
              </div>
            </div>
            <div class="box_rightType2">
              <div class="img_cosViewR">
                <img src="resources/home/assets/img/course_blog/course_blog08/course_blog08_02.jpg" alt="부산의 자연생태 체험 코스">
              </div>
            </div>
          </div>

          <!-- 하단 썸네일, 지도 -->
          <div class="wrap_contView cosMt clfix">
            <ul class="list_thumType">
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=dccb86d3-df25-4dea-a0e5-56fd5987751e&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=6"><em class="numbering">1</em>
                  <img
                      src="resources/home/assets/img/course_blog/course_blog08/course_blog08_03.jpg" alt="삼락생태공원"></a>
                    </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=dccb86d3-df25-4dea-a0e5-56fd5987751e&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=6">삼락생태공원</a> </div>
                  <p>내 위치에서 317.0km - 부산광역시 사상구 삼락동</p>
                  <p></p>
                  <p class="tag">
                    <span>#가족여행</span><span>#걷기길</span><span>#걷기여행</span><span>#경상권</span><span>#공원</span><span>#관광지</span><span>#사계절</span><span>#삼락생태공원</span><span>#연인과함께</span><span>#자연좋은곳</span><span>#전망좋은곳</span><span>#친환경여행</span><span>#힐링</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;dccb86d3-df25-4dea-a0e5-56fd5987751e&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EC%82%BC%EB%9D%BD%EC%83%9D%ED%83%9C%EA%B3%B5%EC%9B%90&quot;,&quot;undefined&quot;,&quot;dccb86d3-df25-4dea-a0e5-56fd5987751e&quot;,&quot;12&quot;);">공유하기</a>
                    </li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;dccb86d3-df25-4dea-a0e5-56fd5987751e&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=aebb3990-a608-4400-b26e-58e744093245&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=6"><em class="numbering">2</em>
                  <img
                      src="resources/home/assets/img/course_blog/course_blog08/course_blog08_04.jpg" alt="부산 암남공원"></a>
                    </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=aebb3990-a608-4400-b26e-58e744093245&amp;big_category=A02&amp;mid_category=A0202&amp;big_area=6">부산 암남공원</a> </div>
                  <p>내 위치에서 329.0km - 부산광역시 서구 암남공원로 185</p>
                  <p></p>
                  <p class="tag">
                    <span>#걷기길</span><span>#관광지</span><span>#바다풍경</span><span>#부산암남공원</span><span>#산책길</span><span>#산책하기</span><span>#산책하기좋은곳</span><span>#생태관광지</span><span>#여름휴가</span><span>#연인과함께</span><span>#해안길산책</span><span>#휴식공간</span><span>#휴식여행</span><span>#휴식하기</span><span>#휴식하기좋은곳</span>
                  </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;aebb3990-a608-4400-b26e-58e744093245&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EB%B6%80%EC%82%B0%20%EC%95%94%EB%82%A8%EA%B3%B5%EC%9B%90&quot;,&quot;undefined&quot;,&quot;aebb3990-a608-4400-b26e-58e744093245&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;aebb3990-a608-4400-b26e-58e744093245&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=104ca656-e45b-4088-834b-8374facfd194&amp;big_category=A01&amp;mid_category=A0101&amp;big_area=6"><em class="numbering">3</em>
                  <img
                      src="resources/home/assets/img/course_blog/course_blog08/course_blog08_05.jpg" alt="영도 등대"></a>
                    </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=104ca656-e45b-4088-834b-8374facfd194&amp;big_category=A01&amp;mid_category=A0101&amp;big_area=6">영도 등대</a> </div>
                  <p>내 위치에서 333.9km - 부산광역시 영도구 전망로 181</p>
                  <p></p>
                  <p class="tag"><span>#경상권</span><span>#관광지</span><span>#등대</span><span>#영도등대</span><span>#자연</span><span>#전시관</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;104ca656-e45b-4088-834b-8374facfd194&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:" onclick="getShareInfo(&quot;%EC%98%81%EB%8F%84%20%EB%93%B1%EB%8C%80&quot;,&quot;undefined&quot;,&quot;104ca656-e45b-4088-834b-8374facfd194&quot;,&quot;12&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;12&quot;,&quot;104ca656-e45b-4088-834b-8374facfd194&quot;,&quot;&quot;)">코스에 담기</a></li>
                  </ul>
                </div>
              </li>
              <li>
                <div class="photo"><a href="/detail/ms_detail.do?cotid=f4d2910e-97fc-43ae-a075-d992aa3a8348&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=6"><em class="numbering">4</em>
                  <img
                      src="resources/home/assets/img/course_blog/course_blog08/course_blog08_06.jpg" alt="국립해양박물관"></a>
                    </div>
                <div class="area_txt">
                  <div class="tit"> <a href="/detail/ms_detail.do?cotid=f4d2910e-97fc-43ae-a075-d992aa3a8348&amp;big_category=A02&amp;mid_category=A0206&amp;big_area=6">국립해양박물관</a> </div>
                  <p>내 위치에서 330.9km - 부산광역시 영도구 해양로301번길 45</p>
                  <p></p>
                  <p class="tag"><span>#경상권</span><span>#교과서속여행</span><span>#국립해양박물관</span><span>#단체관광</span><span>#문화시설</span><span>#사계절</span><span>#아이와함께</span><span>#여름방학가볼만한곳</span><span>#체험학습</span> </p>
                </div><button type="button" title="내용 더보기" class="btn_view">더보기</button>
                <div class="pop_subMenu" id="pop_subMenu2">
                  <ul>
                    <li class="btn_far"><a href="javascript:" onclick="setFavoContent(&quot;f4d2910e-97fc-43ae-a075-d992aa3a8348&quot;)">즐겨찾기</a></li>
                    <li class="btn_share"><a href="javascript:"
                        onclick="getShareInfo(&quot;%EA%B5%AD%EB%A6%BD%ED%95%B4%EC%96%91%EB%B0%95%EB%AC%BC%EA%B4%80&quot;,&quot;undefined&quot;,&quot;f4d2910e-97fc-43ae-a075-d992aa3a8348&quot;,&quot;14&quot;);">공유하기</a></li>
                    <li class="btn_cart"><a href="javascript:" onclick="myCourseList(&quot;C&quot;,&quot;14&quot;,&quot;f4d2910e-97fc-43ae-a075-d992aa3a8348&quot;,&quot;&quot;)">코스에 담기</a></li>
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
                    <div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 204px; top: 271px;"><img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/marker.png" alt="" title=""
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
              <div style="position: absolute; left: 267px; top: -434px;">
                <div style="position: absolute; z-index: 0;"></div>
                <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d/1912uow/L8/28/48.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -487px; top: 799px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L8/28/49.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -231px; top: 799px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L8/28/50.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 25px; top: 799px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L8/28/51.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 281px; top: 799px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/28/52.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 537px; top: 799px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/29/48.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -487px; top: 543px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L8/29/49.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -231px; top: 543px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L8/29/50.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 25px; top: 543px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L8/29/51.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 281px; top: 543px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/29/52.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 537px; top: 543px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/30/48.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -487px; top: 287px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map1.daumcdn.net/map_2d/1912uow/L8/30/49.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -231px; top: 287px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map2.daumcdn.net/map_2d/1912uow/L8/30/50.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 25px; top: 287px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map3.daumcdn.net/map_2d/1912uow/L8/30/51.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 281px; top: 287px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                    src="https://map0.daumcdn.net/map_2d/1912uow/L8/30/52.png" alt="" draggable="false"
                    style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 537px; top: 287px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                </div>
                <div style="position: absolute; z-index: 1;"></div>
                <div style="width: 940px; height: 500px; position: absolute; z-index: 1;"></div>
                <div style="position: absolute; z-index: 1;"><svg version="1.1"
                    style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2147px; top: -566px; width: 4700px; height: 2500px;" viewBox="0 0 4700 2500">
                    <defs></defs>
                    <path id="daum-maps-shape-0" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 3px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;" d=" M2176 1050 L2303 1420 2524 1448 2487 1358"
                      transform="translate(0,0)"></path>
                  </svg></div>
                <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 30px; top: 485px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -79px; left: 30px; top: 485px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=dccb86d3-df25-4dea-a0e5-56fd5987751e"><span class="title">삼락생태공원</span></a></div>
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 157px; top: 855px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 378px; top: 883px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 341px; top: 793px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                      style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -80px; left: 157px; top: 855px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=aebb3990-a608-4400-b26e-58e744093245"><span class="title">부산 암남공원</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -67px; left: 378px; top: 883px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=104ca656-e45b-4088-834b-8374facfd194"><span class="title">영도 등대</span></a></div>
                  </div>
                  <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -86px; left: 341px; top: 793px;">
                    <div class="spot"><a href="/detail/detail_view.do?cotid=f4d2910e-97fc-43ae-a075-d992aa3a8348"><span class="title">국립해양박물관</span></a></div>
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
                <div style="position: absolute; left: 486px; top: -418px;">
                  <div style="position: absolute; z-index: 0;"></div>
                  <div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map3.daumcdn.net/map_2d/1912uow/L8/28/47.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -679px; top: 783px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/28/48.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -423px; top: 783px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/28/49.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -167px; top: 783px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L8/28/50.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 89px; top: 783px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/28/51.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 345px; top: 783px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/28/52.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 601px; top: 783px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/28/53.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 857px; top: 783px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/29/47.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -679px; top: 527px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/29/48.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -423px; top: 527px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/29/49.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -167px; top: 527px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L8/29/50.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 89px; top: 527px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/29/51.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 345px; top: 527px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/29/52.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 601px; top: 527px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/29/53.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 857px; top: 527px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/30/47.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -679px; top: 271px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/30/48.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -423px; top: 271px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/30/49.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -167px; top: 271px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map2.daumcdn.net/map_2d/1912uow/L8/30/50.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 89px; top: 271px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map3.daumcdn.net/map_2d/1912uow/L8/30/51.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 345px; top: 271px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map0.daumcdn.net/map_2d/1912uow/L8/30/52.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 601px; top: 271px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
                      src="https://map1.daumcdn.net/map_2d/1912uow/L8/30/53.png" alt="" draggable="false"
                      style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 857px; top: 271px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                  </div>
                  <div style="position: absolute; z-index: 1;"></div>
                  <div style="width: 1508px; height: 500px; position: absolute; z-index: 1;"></div>
                  <div style="position: absolute; z-index: 1;"><svg version="1.1"
                      style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -3502px; top: -582px; width: 7540px; height: 2500px;" viewBox="0 0 7540 2500">
                      <defs></defs>
                      <path id="daum-maps-shape-1" style="stroke: rgb(255, 51, 51); stroke-opacity: 0.6; stroke-width: 5px; color: rgb(255, 51, 51); stroke-linecap: round; display: block;" d=" M3596 1050 L3723 1421 3944 1448 3907 1358"
                        transform="translate(0,0)"></path>
                    </svg></div>
                  <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 94px; top: 469px;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num1.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -79px; left: 94px; top: 469px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=dccb86d3-df25-4dea-a0e5-56fd5987751e"><span class="title">삼락생태공원</span></a></div>
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 221px; top: 839px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num2.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 442px; top: 867px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num3.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; margin: -36px 0px 0px -12px; z-index: 0; left: 405px; top: 777px; display: block;"><img draggable="false" src="resources/home/assets/img/course_blog/icon_map_num4.png" alt="" title=""
                        style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 26px, 36px, 0px); top: 0px; left: 0px; width: 26px; height: 36px;">
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -80px; left: 221px; top: 839px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=aebb3990-a608-4400-b26e-58e744093245"><span class="title">부산 암남공원</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -67px; left: 442px; top: 867px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=104ca656-e45b-4088-834b-8374facfd194"><span class="title">영도 등대</span></a></div>
                    </div>
                    <div style="position: absolute; z-index: 0; white-space: nowrap; margin: -3px 0px 0px -86px; left: 405px; top: 777px;">
                      <div class="spot"><a href="/detail/detail_view.do?cotid=f4d2910e-97fc-43ae-a075-d992aa3a8348"><span class="title">국립해양박물관</span></a></div>
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
