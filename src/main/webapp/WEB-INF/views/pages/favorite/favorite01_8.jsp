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
  <link rel="stylesheet" href="resources/home/assets/css/favorite01.css">

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
                  <li><a href="login/register" >회원가입</a></li>
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
        <h2 class="ir_so">Favorite</h2>
        <div id="contents">
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">9</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">27</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">2,719</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>증도 - 아름다운 밤하늘의 별헤는 섬</h2>
            <div class="area_address">
              <span class="address">전남 신안군</span>
              <span id="modi_date">수정일 : 2020.05.19</span>
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
            <!-- // 기사 섹션 네비게이션 -->
            <!-- // 1108 추가 -->

            <!-- 0808 추가 -->
            <!-- div class="link_vr_area">
				<a href="#" class="link_vr_img">360 VR 사진</a><a href="#" class="link_vr_video">360 VR 동영상</a>
			</div-->
            <!-- // 0808 추가 -->
            <strong id="titCont" class="blind">본문 내용</strong><!-- 1108 id 추가 -->
            <!-- [D] 텍스트 미노출시 클래스 blind 추가 -->
            <div class="box_txtPhoto">
              <div class="txt_p">
                <p style="text-align: justify;">증도는 2007년 아시아 최초 슬로시티로 지정된 곳으로, 느리게 둘러보는 '힐링의 섬'이다. 한국관광공사 선정 에서 2012년, 2015년 두 차례나 손꼽혔을 정도로 연간 80만 명의 관광객이 찾고 있는 대표적인 관광명소이다. 또한 유네스코 생물권 보전지역, 갯벌도립공원, 국가습지보호지역, 람사르습지, 깜깜한 밤 별 보는 섬(Dark sky), 금연의 섬 등
                  다양한 타이틀로도 유명하다.</p>
              </div>
              <div class="img_typeBox type3 clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0" style="height: 306px;">
                    <img src="resources/home/assets/img/favorite/favorite08_01.jpg" alt="증도">
                  </button>
                  <strong class="tit">증도</strong>
                </div>
                <div>
                  <button type="button" id="0" id2="2" id3="1" style="height: 306px;">
                    <img src="resources/home/assets/img/favorite/favorite08_02.jpg" alt="우전해변의 일출">
                  </button>
                  <strong class="tit">우전해변의 일출</strong>
                </div>
                <div>
                  <button type="button" id="0" id2="2" id3="2" style="height: 306px;">
                    <img src="resources/home/assets/img/favorite/favorite08_03.jpg" alt="천년해송숲길 (신안군청 제공)">
                  </button>
                  <strong class="tit">천년해송숲길 (신안군청 제공)</strong>
                </div>
              </div>
              <div class="txt_p">
                <p class="MsoNormal" style="text-align: justify;"> <span style="font-family:&quot;MS Mincho&quot;;mso-bidi-font-family:&quot;MS Mincho&quot;"> ✔ </span> 연락처 <span lang="EN-US">
                    <o:p> </o:p>
                  </span></p>
                <p class="MsoNormal"> 신안군청 문화관광과 관광개발담당 <span lang="EN-US"> 061-240-8524 <o:p> </o:p></span></p>
                <p class="MsoNormal"> <span lang="EN-US"> &nbsp; </span></p>
                <p class="MsoNormal"> <span style="font-family:&quot;MS Mincho&quot;;mso-bidi-font-family:&quot;MS Mincho&quot;"> ✔ </span> 주소 <span lang="EN-US">
                    <o:p> </o:p>
                  </span></p>
                <p class="MsoNormal"> 전라남도 신안군 증도면 <span lang="EN-US">
                    <o:p> </o:p>
                  </span></p>
                <p class="MsoNormal"> <span lang="EN-US"> &nbsp; </span></p>
                <p class="MsoNormal"> <span style="font-family:&quot;MS Mincho&quot;;mso-bidi-font-family:&quot;MS Mincho&quot;"> ✔ </span> 여행팁 <span lang="EN-US">
                    <o:p> </o:p>
                  </span></p>
                <p class="MsoNormal"> 증도만의 갯벌과 아름다운 밤하늘을 감상하기 위해서는 물빠지는시간과 일출 <span lang="EN-US"> , </span> 일몰 시간을 확인해야 한다 <span lang="EN-US"> . </span> 이는 <a class="con_link" href="http://www.jeung-do.com" title="[새창열림] ‘증도닷컴’ 홈페이지로 이동"
                    target="_blank">증도닷컴</a>에서 가능하다 <span lang="EN-US"> . <o:p> </o:p></span></p>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">증도는 2007년 아시아 최초 슬로시티로 지정된 곳으로, 느리게 둘러보는 '힐링의 섬'이다. 한국관광공사 선정 &lt;한국인이 꼭 가봐야 할 관광 100선&gt;에서 2012년, 2015년 두 차례나 손꼽혔을 정도로 연간 80만 명의 관광객이 찾고 있는 대표적인 관광명소이다. 또한 유네스코 생물권 보전지역, 갯벌도립공원, 국가습지보호지역, 람사르습지, 깜깜한
                  밤 별 보는 섬(Dark sky), 금연의 섬 등 다양한 타이틀로도 유명하다.</p>
                <p><br></p>
                <div style="text-align: justify;">갯벌보호지역으로 지정된 증도의 청정 갯벌은 썰물 때 칠게, 농게, 짱뚱어 등 다양한 갯벌 생물을 생생하게 관찰하고 체험할 수 있다. 특히, 4km나 되는 해안사구 한반도 해송숲은 숲, 갯벌, 해풍, 바다의 4가지 요소를 통해 관광객들에게 힐링을 제공한다. 해가 서서히 지면서 바다와 산이 깜깜해지고 그 사이에 주민들이 생활하는 정겨운 불빛이 대조를 이루면서
                  최상의 아름다움을 선사하고 있다. 갯벌과 밤하늘이 가장 큰 볼거리인 증도 여행은 '시간'이 매우 중요하다. 중도의 물빠지는 시간과 일출, 일몰 시간을 확인해야 한다. 이는 증도닷컴에서 가능하다.</div>
                <p></p>
              </div>
              <div class="img_typeBox type3 clfix">
                <div>
                  <button type="button" id="2" id2="2" id3="8" style="height: 306px;">
                    <img src="resources/home/assets/img/favorite/favorite08_04.jpg" alt="썰물 때 드러난 갯벌">
                  </button>
                  <strong class="tit">썰물 때 드러난 갯벌</strong>
                </div>
                <div>
                  <button type="button" id="2" id2="2" id3="9" style="height: 306px;">
                    <img src="resources/home/assets/img/favorite/favorite08_05.jpg" alt="증도 갯벌 풍경">
                  </button>
                  <strong class="tit">증도 갯벌 풍경</strong>
                </div>
                <div>
                  <button type="button" id="2" id2="2" id3="10" style="height: 306px;">
                    <img src="resources/home/assets/img/favorite/favorite08_06.jpg" alt="우전해변의 일출">
                  </button>
                  <strong class="tit">우전해변의 일출</strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="3" id2="1" id3="12" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_07.jpg" alt="한반도 해송숲 전경">
                  </button>
                  <strong class="tit">한반도 해송숲 전경</strong>
                </div>
                <div>
                  <button type="button" id="3" id2="1" id3="13" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_08.jpg" alt="우전해변 해수욕장">
                  </button>
                  <strong class="tit">우전해변 해수욕장</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">한반도 해송숲은 4km의 아름다운 해변과 해풍으로 모래가 농경지로 날아오는 것을 막으려고 사막같은 모래위에 방풍림으로 조성된 것으로, 증도면 상정봉 정상에서 바라보면 숲 전체의 모양이 한반도 모양이다. 우전해변은 비치파라솔이 설치되어 이국적인 풍경으로 영화 '덕혜옹주' 촬영지였다.</p>
              </div>
              <div class="txt_p">- 위치 : 전라남도 신안군 증도면 우전리<br> - 문의 : 061-240-8524 (문화관광과)</div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="4" id2="1" id3="14" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_09.jpg" alt="짱뚱어다리 전경">
                  </button>
                  <strong class="tit">짱뚱어다리 전경</strong>
                </div>
                <div>
                  <button type="button" id="4" id2="1" id3="15" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_10.jpg" alt="짱뚱어다리 아래 갯벌">
                  </button>
                  <strong class="tit">짱뚱어다리 아래 갯벌</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">솔무등공원과 우전해변 사이 갯벌위에 세워진 470m의 짱뚱어다리는 증도 여행의 필수 코스로 다리 아래로 무수히 많은 갯벌생물이 관찰된다.</p>
              </div>
              <div class="txt_p">- 위치 : 전라남도 신안군 증도면 증동리<br> - 문의 : 061-240-4003 (증도면사무소)</div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="5" id2="1" id3="16" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_11.jpg" alt="태평염생식물원 전경">
                  </button>
                  <strong class="tit">태평염생식물원 전경</strong>
                </div>
                <div>
                  <button type="button" id="5" id2="1" id3="17" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_12.jpg" alt="태평염생식물원 입구">
                  </button>
                  <strong class="tit">태평염생식물원 입구</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">태평염생식물원은 태평염전 소금밭 11만㎡ 넓이의 염전 습지에 조성된 국내 최고의 염생식물원로, 약 220m의 탐방로를 따라가면 염생식물뿐 아니라 갖가지 갯벌 생물들을 가까이에서 관찰할 수 있다.</p>
              </div>
              <div class="txt_p">- 위치 : 전라남도 신안군 증도면 증동리<br> - 문의 : 061-240-8524&nbsp;(문화관광과)</div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="6" id2="1" id3="18" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_13.jpg" alt="화도 노두길 전경">
                  </button>
                  <strong class="tit">화도 노두길 전경</strong>
                </div>
                <div>
                  <button type="button" id="6" id2="1" id3="19" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_14.jpg" alt="만조에 잠긴 화도 노두길">
                  </button>
                  <strong class="tit">만조에 잠긴 화도 노두길</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">화도 노두길은 증도와 연결된 화도마을을 건너는 다리지만, 밀물 때는 길이 물 속에 잠겨 건널 수 없다. 썰물 때 갯벌이 드러나 짱뚱어, 농게, 칠게 등 갯벌생물을 가장 가까이서 관찰할 수 있다.</p>
              </div>
              <div class="txt_p">- 위치 : 전라남도 신안군 증도면 화도마을<br> - 문의 : 061-240-8524&nbsp;(문화관광과)</div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="7" id2="1" id3="20" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_15.jpg" alt="태평염전 전경">
                  </button>
                  <strong class="tit">태평염전 전경</strong>
                </div>
                <div>
                  <button type="button" id="7" id2="1" id3="21" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_16.jpg" alt="태평염전 겨울 풍경">
                  </button>
                  <strong class="tit">태평염전 겨울 풍경</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">국내 단일 염전 최대크기(140만평)로 1953년 한국전쟁 이후 피난민들을 정착시키기 위해 물이 빠지면 노두(징검다리)를 통해 건너다녔던 전증도와 후증도 사이 갯벌을 막아 조성했다. 태평염전과 당시 소금창고였던 소금박물관은 각각 등록문화재 360호와 361호로 지정됐다.</p>
              </div>
              <div class="txt_p">- 위치 : 전라남도 신안군 증도면 지도증도로 1053-11<br>- 문의 : 061-275-1596 (<a class="con_link" href="http://www.taepyungsalt.com" title="[새창열림] ‘태평염전’ 홈페이지로 이동" target="_blank">태평염전</a>)<br></div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="8" id2="1" id3="22" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_17.jpg" alt="신안해저유물발굴 기념비 전경">
                  </button>
                  <strong class="tit">신안해저유물발굴 기념비 전경</strong>
                </div>
                <div>
                  <button type="button" id="8" id2="1" id3="23" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_18.jpg" alt="보물섬전망대">
                  </button>
                  <strong class="tit">보물섬전망대</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">1975년 증도면 방축리 앞 바다에서 한 어부의 그물에 도자기가 걸려 올라오면서 시작된 신안 해저유물의 발굴(1976~1984)은 세계학계의 비상한 관심을 집중시키며 국가사적 247로 지정되었으며, 증도는 '보물섬'으로 유명해졌다. 인양된 유물은 도자기, 금속제품, 석제품, 동전류, 자단목 등 약 28,000여 점에 달한다.</p>
              </div>
              <div class="txt_p">- 위치 : 전라남도 신안군 증도면 방축리<br> - 문의 : 061-240-8524&nbsp;(문화관광과)</div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="9" id2="1" id3="24" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_19.jpg" alt="신안갯벌센터와 슬로시티센터 전경">
                  </button>
                  <strong class="tit">신안갯벌센터와 슬로시티센터 전경</strong>
                </div>
                <div>
                  <button type="button" id="9" id2="1" id3="25" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_20.jpg" alt="신안갯벌센터 내부">
                  </button>
                  <strong class="tit">신안갯벌센터 내부</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">우전해변 일대에 조성된 신안갯벌센터는 지하1층, 지상3층의 규모로 국내 최대이자 최초의 갯벌생태 교육공간이다. 증도의 청정갯벌을 쉽게 이해하고 갯벌의 소중한 가치를 배우고, 갯벌에 사는 여러 생물들에 대한 전시를 볼 수 있다.</p>
              </div>
              <div class="txt_p">- 관람시간 : 주중 09:00 ~ 17:00 / 주말 09:00 ~ 16:30 (매주 월요일 휴관)<br> - 위치 : 전라남도 신안군 증도면 지도증도로 1766-4<br> - 문의 : 061-275-8400</div>
              <div class="txt_p"><b>소금밭 체험</b></div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="10" id2="2" id3="26" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_21.jpg" alt="소금밭체험풍경">
                  </button>
                  <strong class="tit">소금밭체험풍경</strong>
                </div>
                <div>
                  <button type="button" id="10" id2="2" id3="27" style="height: 465px;">
                    <img src="resources/home/assets/img/favorite/favorite08_22.jpg" alt="아버지와딸이함께소금밭체험">
                  </button>
                  <strong class="tit">아버지와딸이함께소금밭체험</strong>
                </div>
              </div>
              <div class="txt_p">태평염전 현장에서 자연 그대로의 천일염에 대해 배우고, 직접 만들어 보는 체험이다.<br></div>
              <div class="txt_p">- 운영기간 : 3월 중순 ~ 10월 중순<br>- 신청방법 : 최소 3일전에 전화 예약<br>- 장소 : 전라남도 신안군 증도면 지도증도로 1058 (<a class="con_link" href="http://www.saltmuseum.org" title="[새창열림] ‘소금박물관’ 홈페이지로 이동" target="_blank">소금박물관</a>)<br>- 문의 :
                061-275-0829<br></div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="11" id2="1" id3="28">
                    <img src="resources/home/assets/img/favorite/favorite08_23.jpg" alt="코스정보" style="width: 450px; height: 550px;">
                  </button>
                  <strong class="tit" style="margin-top: 45px;">코스정보</strong>
                </div>
              </div>
              <div class="txt_p">
                <p></p>
                <div style="text-align: justify;"><b>&lt;당일 코스&gt;</b></div> - 코스 안내 : 짱뚱어다리 → 갯벌 체험 → 태평염전 → 소금박물관 → 소금밭 체험 → 태평염생식물원 → 신안갯벌센터·슬로시티센터 → 우전해변<p></p>
                <p><br> <b>&lt;1박2일 코스&gt;</b><br> - 코스 안내 : 짱뚱어다리 → 갯벌 체험 → 한반도 해송숲 → 신안갯벌센터·슬로시티센터 → 화도 노두길 → 태평염전 → 소금박물관 → 태평염생식물원 → 문준경전도사 순교지 → 신안해저유물발굴 기념비</p>
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
  <script src="resources/home/assets/js/movie.js"></script>
  <script src="resources/home/assets/js/login.js"></script>
  <script type="text/javascript">
    //배너 이미지 슬라이드
    var swiper = new Swiper('.swiper-container', {
      pagination: {
        el: '.swiper-pagination',
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      autoplay: {
        delay: 3000,
      },
    });

    //영화차트 이미지 슬라이드
    var swiper = new Swiper('.swiper-container2', {
      slidesPerView: 4,
      spaceBetween: 10,
      //            mousewheel: {
      //                invert: true,
      //            },
      keyboard: {
        enabled: true,
        onlyInViewport: false,
      },
      autoplay: {
        delay: 3000,
      },
      breakpoints: {
        600: {
          slidesPerView: 1.4,
          spaceBetween: 24
        },
        768: {
          slidesPerView: 2,
          spaceBetween: 24
        },
        960: {
          slidesPerView: 3,
          spaceBetween: 24
        }
      }
    });

    //영화차트 탭 메뉴
    var movBtn = $(".movie_title > ul > li");
    var movCont = $(".movie_chart > div");

    movCont.hide().eq(0).show();

    movBtn.click(function(e) {
      e.preventDefault(); //a 태그에 #이 들어 있어서 클릭시 상단으로 올라가는 문제 해결
      var target = $(this);
      var index = target.index();
      movBtn.removeClass("active");
      target.addClass("active");
      movCont.css("display", "none");
      movCont.eq(index).css("display", "block");
    });

    //공지사항 탭 메뉴
    var tabMenu = $(".notice");

    //컨텐츠 내용을 숨겨주세요!
    tabMenu.find("ul > li > ul").hide();
    tabMenu.find("li.active > ul").show();

    function tabList(e) {
      e.preventDefault(); //#의 기능을 차단
      var target = $(this);
      target.next().show().parent("li").addClass("active")
        .siblings("li").removeClass("active").find("ul").hide();
      //버튼을 클릭하면 ~ div를 보여주고
      //부모의 li 태그에 클래스 추가하고
      //형제의 li 태그에 클래스 제거하고
      //제거한 자식의 div 태그를 숨겨줌
    }

    tabMenu.find("ul > li > a").click(tabList).focus(tabList);
  </script>
</body>

</html>
