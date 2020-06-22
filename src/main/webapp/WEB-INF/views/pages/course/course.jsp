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
  <link rel="stylesheet" href="resources/home/assets/css/course.css">

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

<body style="overflow: auto;">
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
      <div class="row">
        <h2 class="ir_so">Popular</h2>
        <div id="contents">
          <div class="tit_cont tit_cos">
            <div class="tit_pos">
              <h2><span class="ico">Easy</span>코스</h2><!-- 1224 텍스트 수정 -->
            </div>
          </div>
          <div class="wrap_contView">
            <h3 class="tit_atc">여러분이 직접 만든 코스를 소개합니다!</h3>
            <span class="cosTop3">
              <a href="#">
                <img src="resources/home/assets/img/course/banner_cos_top3.gif" alt="프로계획러 사용자가 직접 만든 풀코스 여행 자세히 보기" class="pc">
              </a>
            </span>
            <div id="snscourseDiv" class="box_cosList grid userName" style="position: relative; height: 634px;">
              <div class="area_course grid-item" style="position: absolute; left: 0px; top: 0px;">
                <div class="course_des">
                  <a href="#">
                    <strong>대전투어</strong>
                    <ul>
                      <li>지역 : 대전 중구</li>
                      <li>총거리 : 11.3km</li>
                    </ul>
                    <span class="userInfo">
                      <span id="fimg0" class="img">
                        <img src="resources/home/assets/img/img_profile.png" alt="정은이" onerror="this.style.visibility='hidden'">
                      </span>
                      <em>정은이</em>
                    </span>
                  </a>
                  <img src="resources/home/assets/img/course/course_01.jpg" alt="대전투어" class="img_thumBg">
                </div>
                <ul>
                  <li><span><a href="#">대전근현대사전시관(옛 충남도청사 본관)</a></span></li>
                  <li><span><a href="#">우암사적공원</a></span></li>
                  <li><span><a href="#">추동인공생태습지</a></span></li>
                  <li><span><a href="#">대동하늘공원</a></span></li>
                </ul>
              </div>
              <div class="area_course grid-item" style="position: absolute; left: 320px; top: 0px;">
                <div class="course_des">
                  <a href="#">
                    <strong>아버지와 추억담기</strong>
                    <ul>
                      <li>지역 : 울산 남구</li>
                      <li>총거리 : 316.7km</li>
                    </ul>
                    <span class="userInfo">
                      <span id="fimg1" class="img">
                        <img src="resources/home/assets/img/img_profile.png" alt="Silver Lee" onerror="this.style.visibility='hidden'" style="visibility: hidden;">
                      </span>
                      <em>Silver Lee</em>
                    </span>
                  </a>
                  <img src="resources/home/assets/img/course/course_02.jpg" alt="아버지와 추억담기" class="img_thumBg">
                </div>
                <ul>
                  <li><span><a href="#">장생포 고래문화마을</a></span></li>
                  <li><span><a href="#">울산 귀신고래 회유해면</a></span></li>
                  <li><span><a href="#">고래할매집</a></span></li>
                  <li><span><a href="#">장생포 고래바다여행선</a></span></li>
                  <li><span><a href="#">아바이마을</a></span></li>
                  <li><span><a href="#">영랑호</a></span></li>
                  <li><span><a href="#">화랑도체험관광단지</a></span></li>
                  <li><span><a href="#">아바이마을 갯배</a></span></li>
                  <li><span><a href="#">88생선구이</a></span></li>
                  <li><span><a href="#">속초 등대전망대</a></span></li>
                  <li><span><a href="#">영금정</a></span></li>
                </ul>
              </div>
              <div class="area_course grid-item" style="position: absolute; left: 640px; top: 0px;">
                <div class="course_des">
                  <a href="#">
                    <strong>남해 사천 진주 여행</strong>
                    <ul>
                      <li>지역 : 경남 남해군</li>
                      <li>총거리 : 103.1km</li>
                    </ul>
                    <span class="userInfo">
                      <span id="fimg2" class="img">
                        <img src="resources/home/assets/img/img_profile.png" alt="윤정이" onerror="this.style.visibility='hidden'">
                      </span>
                      <em>윤정이</em>
                    </span>
                  </a>
                  <img src="resources/home/assets/img/course/course_03.jpg" alt="남해 사천 진주 여행" class="img_thumBg">
                </div>
                <ul>
                  <li><span><a href="#">창선교와 원시어업 죽방렴</a></span></li>
                  <li><span><a href="#">독일마을</a></span></li>
                  <li><span><a href="#">남해 파독전시관</a></span></li>
                  <li><span><a href="#">원예예술촌</a></span></li>
                  <li><span><a href="#">바람흔적미술관</a></span></li>
                  <li><span><a href="#">가천 다랭이마을</a></span></li>
                  <li><span><a href="#">와인갤러리</a></span></li>
                  <li><span><a href="#">다솔사(경남)</a></span></li>
                  <li><span><a href="#">진주성</a></span></li>
                  <li><span><a href="#">진주 중앙유등시장</a></span></li>
                  <li><span><a href="#">인사동 골동품거리</a></span></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- 1217 추가 -->
          <div id="area0">
            <div class="wrap_contView">
              <h3 class="tit_atc">요즘 떠나면 좋을 캠핑 LIST</h3> <span class="date" id="csmain0">도심을 벗어나 여유를 느끼며 힐링하러 떠나보자</span>
              <div class="box_cosList clfix grid" id="csmainList0" style="position: relative; height: 886px;">
                <div class="area_course grid-item" style="position: absolute; left: 0px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>호젓해서, 너무 호젓해서 좋은</strong>
                      <ul>
                        <li>지역 : 전북 장수군</li>
                        <li>코스 총거리 : 12.88km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_04.jpg" alt="호젓해서, 너무 호젓해서 좋은" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>방화동 가족휴가촌</span></li>
                    <li><span>방화동자연휴양림</span></li>
                    <li><span>논개사당(의암사)</span></li>
                    <li><span>장수향교</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 320px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>자연 속에서 즐기는 휴식 같은 캠핑</strong>
                      <ul>
                        <li>지역 : 경기 연천군</li>
                        <li>코스 총거리 : 125.67km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_05.jpg" alt="자연 속에서 즐기는 휴식 같은 캠핑" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>연천 경순왕릉</span></li>
                    <li><span>연천 숭의전지</span></li>
                    <li><span>연천 당포성</span></li>
                    <li><span>재인폭포</span></li>
                    <li><span>고대산캠핑리조트</span></li>
                    <li><span>태풍전망대</span></li>
                    <li><span>전곡선사박물관</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 640px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>벽계계곡에서 즐기는 캠핑여행</strong>
                      <ul>
                        <li>지역 : 경남 의령군</li>
                        <li>코스 총거리 : 32.6km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_06.jpg" alt="벽계계곡에서 즐기는 캠핑여행" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>정암루</span></li>
                    <li><span>충익사</span></li>
                    <li><span>한우산</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 640px; top: 293px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>덕유산 너른 풍에서 하룻밤</strong>
                      <ul>
                        <li>지역 : 전북 무주군</li>
                        <li>코스 총거리 : 26.32km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_09.jpg" alt="덕유산 너른 풍에서 하룻밤" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>덕유산국립공원(본소,적상분소)</span></li>
                    <li><span>무주 구천동 관광특구</span></li>
                    <li><span>무주머루와인동굴</span></li>
                    <li><span>적상산사고지</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 0px; top: 333px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>산세 깊은 계룡산에서 쾌적한 글램핑</strong>
                      <ul>
                        <li>지역 : 충남 공주시</li>
                        <li>코스 총거리 : 2.44km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_07.jpg" alt="산세 깊은 계룡산에서 쾌적한 글램핑" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>계룡산국립공원</span></li>
                    <li><span>계룡산글램핑장</span></li>
                    <li><span>동학사계곡</span></li>
                    <li><span>동학사(공주)</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 320px; top: 453px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>땅끝에서 즐기는 캠핑여행</strong>
                      <ul>
                        <li>지역 : 전남 해남군</li>
                        <li>코스 총거리 : 59.2km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_08.jpg" alt="땅끝에서 즐기는 캠핑여행" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>해남윤씨 녹우당</span></li>
                    <li><span>점심식사(원조장수통닭)</span></li>
                    <li><span>달마산과 미황사</span></li>
                    <li><span>땅끝관광지</span></li>
                    <li><span>땅끝 모노레일카</span></li>
                    <li><span>[해양수산부 선정 아름다운 어촌] 대죽마을</span></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- 배너 -->
          <div class="wrap_contView section_line" id="wBanner" style="">
            <!-- pc banner -->
            <ul class="banner_2col bn_m_none clfix">
              <li>
                <a href="#">
                  <img src="resources/home/assets/img/course/course_10.png" alt="리틀홈Pick 체험이 있는 야외 나들이 12" target="_blank">
                </a>
              </li>
              <li>
                <a href="#">
                  <img src="resources/home/assets/img/course/course_11.png" alt="리틀홈Pick 체험이 있는 야외 나들이 12">
                </a>
              </li>
            </ul>
          </div>
          <!-- //배너 -->

          <div id="area1">
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">속이 뻥 뚫리는 드라이브</h3>
              <span class="date" id="csmain1">언택트가 떠오르는 지금! 해변을 달려보자</span>
              <div class="box_cosList clfix grid" id="csmainList1" style="position: relative; height: 746px;">
                <div class="area_course grid-item" style="position: absolute; left: 0px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>700리 해안의 풍광을 따라 달리는 지상 최고의 드라이브</strong>
                      <ul>
                        <li>지역 : 경남 거제시</li>
                        <li>코스 총거리 : 28.96km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_12.jpg" alt="700리 해안의 풍광을 따라 달리는 지상 최고의 드라이브" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>거제도 해금강</span></li>
                    <li><span>학동흑진주몽돌해변</span></li>
                    <li><span>해금강테마박물관</span></li>
                    <li><span>도장포어촌체험마을</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 320px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>바다와 호수가 만들어준 멋진 드라이브 코스 1</strong>
                      <ul>
                        <li>지역 : 경기 안산시</li>
                        <li>코스 총거리 : 19.79km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_13.jpg" alt="바다와 호수가 만들어준 멋진 드라이브 코스 1" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>안산문화원</span></li>
                    <li><span>최용신기념관</span></li>
                    <li><span>성호기념관</span></li>
                    <li><span>경기도 미술관</span></li>
                    <li><span>안산갈대습지공원</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 640px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>(강릉~고성) 풍경 따라 맛 따라, 7번 국도 드라이브</strong>
                      <ul>
                        <li>지역 : 강원 강릉시</li>
                        <li>코스 총거리 : 99.85km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_14.jpg" alt="(강릉~고성) 풍경 따라 맛 따라, 7번 국도 드라이브" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>강릉 주문진 &lt;도깨비&gt; 촬영장소</span></li>
                    <li><span>청간정</span></li>
                    <li><span>성진회관</span></li>
                    <li><span>대진등대</span></li>
                    <li><span>통일전망대</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 0px; top: 333px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>태안의 가장 아름다운 해변캠핑을 즐기다</strong>
                      <ul>
                        <li>지역 : 충남 태안군</li>
                        <li>코스 총거리 : 64.9KM</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_15.jpg" alt="태안의 가장 아름다운 해변캠핑을 즐기다" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>백화산</span></li>
                    <li><span>점심식사(정가네박속낙지탕)</span></li>
                    <li><span>신두리해안사구</span></li>
                    <li><span>학암포오토캠핑장(캠핑 1박)</span></li>
                    <li><span>구름포해수욕장</span></li>
                    <li><span>천리포수목원</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 320px; top: 373px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>대게의 고장, 영덕대게로를 따라 바다를 즐기다</strong>
                      <ul>
                        <li>지역 : 경북 영덕군</li>
                        <li>코스 총거리 : 42.3km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_16.jpg" alt="대게의 고장, 영덕대게로를 따라 바다를 즐기다" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>강구항</span></li>
                    <li><span>영덕해맞이공원</span></li>
                    <li><span>점심식사(죽도산, 대게종가)</span></li>
                    <li><span>영덕 대소산 봉수대</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 640px; top: 373px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>(평창~고성) 숲과 바다를 넘나드는 힐링 로드</strong>
                      <ul>
                        <li>지역 : 강원 평창군</li>
                        <li>코스 총거리 : 124km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_17.jpg" alt="(평창~고성) 숲과 바다를 넘나드는 힐링 로드" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>평창 오대산 선재길</span></li>
                    <li><span>천학정</span></li>
                    <li><span>송지호둘레길</span></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div id="area2">
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">함께 이겨낸 역사</h3>
              <span class="date" id="csmain2">6·25전쟁 70주년을 맞이하여 다시 돌아보는 그 날</span>
              <div class="box_cosList clfix grid" id="csmainList2" style="position: relative; height: 726px;">
                <div class="area_course grid-item" style="position: absolute; left: 0px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>민통선 안 최초의 예술 공간</strong>
                      <ul>
                        <li>지역 : 경기 연천군</li>
                        <li>코스 총거리 : 27㎞</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_18.jpg" alt="민통선 안 최초의 예술 공간" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>연강갤러리</span></li>
                    <li><span>전곡역</span></li>
                    <li><span>차탄천 에움길(지오 트레일)</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 320px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>파주에서 즐길 수 있을 만한 좋은 여행</strong>
                      <ul>
                        <li>지역 : 경기 파주시</li>
                        <li>코스 총거리 : 63.67km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_19.jpg" alt="파주에서 즐길 수 있을 만한 좋은 여행" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>모산목장 (낙농체험) </span></li>
                    <li><span>헤이리 문화예술마을</span></li>
                    <li><span>점심식사(콩스콩스두부, 파머스테이블)</span></li>
                    <li><span>임진각관광지(평화누리공원)</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 640px; top: 0px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>6.25전쟁 최대 격전지, 칠곡 방어선 돌아보기</strong>
                      <ul>
                        <li>지역 : 경북 칠곡군</li>
                        <li>코스 총거리 : 28.52km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_20.jpg" alt="6.25전쟁 최대 격전지, 칠곡 방어선 돌아보기" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>칠곡호국평화기념관</span></li>
                    <li><span>다부동전적기념관</span></li>
                    <li><span>성베네딕도회 왜관수도원</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 0px; top: 293px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>통일을 꿈꾸는 김포 문화역사 탐방</strong>
                      <ul>
                        <li>지역 : 경기 김포시</li>
                        <li>코스 총거리 : 40㎞</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_21.jpg" alt="통일을 꿈꾸는 김포 문화역사 탐방" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>강화도제적봉평화전망대</span></li>
                    <li><span>한재당</span></li>
                    <li><span>김포국제조각공원</span></li>
                    <li><span>김포 대명항</span></li>
                    <li><span>김포 덕포진</span></li>
                    <li><span>김포 장릉</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 640px; top: 293px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>한국전쟁의 상흔을 어루만지다</strong>
                      <ul>
                        <li>지역 : 강원 철원군</li>
                        <li>코스 총거리 : 44km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_23.jpg" alt="한국전쟁의 상흔을 어루만지다" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>고석정국민관광지</span></li>
                    <li><span>제2땅굴</span></li>
                    <li><span>철원평화전망대</span></li>
                  </ul>
                </div>
                <div class="area_course grid-item" style="position: absolute; left: 320px; top: 353px;">
                  <div class="course_des">
                    <a href="#">
                      <strong>(고성) 북녘땅과 마주한 DMZ 여행</strong>
                      <ul>
                        <li>지역 : 강원 고성군</li>
                        <li>코스 총거리 : 27.63km</li>
                      </ul>
                    </a>
                    <img src="resources/home/assets/img/course/course_22.jpg" alt="(고성) 북녘땅과 마주한 DMZ 여행" class="img_thumBg">
                  </div>
                  <ul>
                    <li><span>통일안보공원</span></li>
                    <li><span>통일전망대</span></li>
                    <li><span>6.25전쟁체험전시관</span></li>
                    <li><span>DMZ박물관</span></li>
                    <li><span>화진포역사안보전시관</span></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
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
