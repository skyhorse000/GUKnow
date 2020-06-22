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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">13</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">113</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">6,140</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="/list/rem_list.do"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>기암괴석과 출렁다리의 앙상블, 삼척 초곡용굴촛대바위길</h2>
            <div class="area_address">
              <span class="address">강원 삼척시</span>
              <span id="modi_date">수정일 : 2020.01.21</span>
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
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="1" id3="0">
                    <img src="resources/home/assets/img/favorite/favorite02_01.jpg" alt="초곡용굴촛대바위길과 기암괴석">
                  </button>
                  <strong class="tit">초곡용굴촛대바위길과 기암괴석</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">삼척의 가을 포구를 찾는 길은 떨림이 있다. 호젓한 바다와 어우러진 해변 길은 파도와 이색 지형이 뒤엉켜 설렘으로 다가선다. 초곡항은 삼척의 고요하고 아늑한 포구다.&nbsp;<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="3" id3="1">
                    <img src="resources/home/assets/img/favorite/favorite02_02.jpg" alt="초곡항과 초곡마을">
                  </button>
                  <strong class="tit">초곡항과 초곡마을</strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="4" id3="2">
                    <img src="resources/home/assets/img/favorite/favorite02_03.jpg" alt="황영조 기념공원" style="max-width: 367px;">
                  </button>
                  <strong class="tit">황영조 기념공원</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">마라톤 금메달리스트 황영조의 고향으로 알려진 작은 어촌은 최근 기암괴석 해변 길이 공개되며 삼척의 새 명소로 조명 받고 있다. 근덕면 초곡항은 삼척해양레일바이크가 출발하는 궁촌해변과 어촌 체험 마을로 유명한 장호항 사이에 다소곳이 자리한다. 국도7호선에서 벗어나 문암해변을 거쳐 해안 길을 굽이굽이 지나면 초곡마을에 닿는다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="6" id3="3">
                    <img src="resources/home/assets/img/favorite/favorite02_04.jpg" alt="전망대에서 조망한 초곡용굴촛대바위길">
                  </button>
                  <strong class="tit">전망대에서 조망한 초곡용굴촛대바위길</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">해안 절벽을 잇는 초곡용굴촛대바위길은 2019년 7월 12일 개장했다. 촛대바위, 거북바위, 사자바위, 용굴 등 독특한 지형이 늘어선 해안 절경 외에 출렁다리가 이 길의 주요 자랑거리다. 끝자락인 용굴까지 데크 512m, 출렁다리 56m 포함 총연장 660m 길이 짙푸른 해변을 따라 이어진다. 용굴 일대는 구렁이가 용이 돼 승천했다는 전설이 있다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="8" id3="4">
                    <img src="resources/home/assets/img/favorite/favorite02_05.jpg" alt="나무데크길과 바다">
                  </button>
                  <strong class="tit">나무데크길과 바다</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">독특한 바위가 빚어낸 해안 절경은 군사 지역이라 한동안 육로로 다가설 수 없었다. 장호항에서 배를 타고 감상하거나, 초곡마을 주민이 귀한 손님에게 배편으로 보여주던 숨은 명소다. 예산 93억원을 투입해서 해안 절벽을 따라 데크를 만들고, 철조망을 걷은 뒤에야 이곳의 비경이 일반 관광객에게 공개됐다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="10" id3="5">
                    <img src="resources/home/assets/img/favorite/favorite02_06.jpg" alt="초곡용굴촛대바위길 입구">
                  </button>
                  <strong class="tit">초곡용굴촛대바위길 입구</strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="11" id3="6">
                    <img src="resources/home/assets/img/favorite/favorite02_07.jpg" alt="초곡용굴촛대바위길 초입">
                  </button>
                  <strong class="tit">초곡용굴촛대바위길 초입</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">초곡용굴촛대바위길은 초곡항에서 어판장을 지나면 빠르게 연결된다. 잔파도에 몸을 뒤척이는 고깃배와 흰 등대를 지나치면 길 초입이다.&nbsp;<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="13" id3="7">
                    <img src="resources/home/assets/img/favorite/favorite02_08.jpg" alt="제1전망대">
                  </button>
                  <strong class="tit">제1전망대</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">데크에 발을 디디면 바위에 우뚝 솟은 제1전망대가 먼저 모습을 드러낸다. 전망대가 세 군데 있지만, 초곡용굴촛대바위길의 윤곽을 조망하기에는 이곳이 탁월하다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="15" id3="8">
                    <img src="resources/home/assets/img/favorite/favorite02_09.jpg" alt="초곡용굴촛대바위길 포토존">
                  </button>
                  <strong class="tit">초곡용굴촛대바위길 포토존</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">전망대에서 내려오면 드넓은 동해를 배경으로 사진 찍기 좋은 지점이 보인다. 포토 존 모형 안에 푸른 바다가 동그랗게 담긴다. 청정한 초곡항 앞바다는 자연산 문어, 전복 등의 주요 서식처다. 제주에서 건너온 초곡마을 해녀들은 물질로 삶을 꾸려갔다. ‘몬주익의 영웅’ 황영조의 어머니 역시 제주 출신 초곡마을 해녀다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="17" id3="9">
                    <img src="resources/home/assets/img/favorite/favorite02_10.jpg" alt="초곡용굴촛대바위길 출렁다리">
                  </button>
                  <strong class="tit">초곡용굴촛대바위길 출렁다리</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">초곡용굴촛대바위길 출렁다리는 바다 위 움푹 들어간 절벽 사이를 가로지른다. 길이 56m에 높이는 약 11m다. 심하게 흔들리지 않지만, 다리 중앙이 유리라 발아래 파도치는 바다를 내려다보면 아찔하다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="19" id3="10">
                    <img src="resources/home/assets/img/favorite/favorite02_11.jpg" alt="촛대바위와 파도">
                  </button>
                  <strong class="tit">촛대바위와 파도</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">출렁다리를 지나 모퉁이를 돌아서면 기암괴석의 향연이 펼쳐진다. 뭉툭한 탑처럼 비쭉 솟은 촛대바위 옆으로 거북바위가 있다. 파도가 넘나드는 촛대바위는 이 길의 주요 상징물이다. 예전에 배를 타고 초곡항 구경에 나선 사람들은 촛대바위와 조우하는 게 주된 바람이었다.<br></div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="0" id2="21" id3="11">
                    <img src="resources/home/assets/img/favorite/favorite02_12.jpg" alt="거북바위">
                  </button>
                  <strong class="tit">거북바위</strong>
                </div>
                <div>
                  <button type="button" id="0" id2="21" id3="12">
                    <img src="resources/home/assets/img/favorite/favorite02_13.jpg" alt="사자바위">
                  </button>
                  <strong class="tit">사자바위</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">거북바위는 커다란 바위 맨 위에 거북 한 마리가 놓인 형상이다. 보는 방향에 따라 모습이 다른데, 용굴 쪽으로 다가가서 보면 삼각형으로 변해 ‘피라미드바위’라고도 부른다. 길 끝자락 절벽에는 사자바위의 윤곽이 또렷하다. 수컷 사자가 절벽에 얼굴을 내밀고 동해와 하늘을 바라보는 모습이다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="23" id3="13">
                    <img src="resources/home/assets/img/favorite/favorite02_14.jpg" alt="용굴로 가는 나무데크길">
                  </button>
                  <strong class="tit">용굴로 가는 나무데크길</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">용굴 입구의 계단을 내려서면 초곡용굴촛대바위길이 마무리된다. 용굴에는 가난한 어부가 죽은 구렁이를 발견한 뒤 초곡 용굴에서 정성껏 제사를 지내자, 구렁이가 용이 돼 승천했다는 전설이 있다. 그 후 어부는 그물 가득 고기를 잡았다고 한다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="25" id3="14">
                    <img src="resources/home/assets/img/favorite/favorite02_15.jpg" alt="용굴과 파도">
                  </button>
                  <strong class="tit">용굴과 파도</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">용굴 위에 구멍이 있어 파도가 칠 때면 더욱 깊은 울림을 만든다. 작은 배는 용굴 사이로 드나들 수 있으며, 한국전쟁 때 마을 주민들이 배를 타고 이곳에 숨어 지냈다는 아픈 사연도 전해진다.<br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="27" id3="15">
                    <img src="resources/home/assets/img/favorite/favorite02_16.jpg" alt="용굴전망대">
                  </button>
                  <strong class="tit">용굴전망대</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">
                  <div>초곡용굴촛대바위길은 왕복 30분 거리인데, 사진을 찍으며 걷다 보면 한 시간 정도 걸린다. 오전 9시부터 오후 6시까지(11~2월은 오후 5시) 연중 개방하며, 입장료는 없다.</div>
                  <div><br></div>
                  <div>〈당일 여행 코스〉</div>
                  <div>초곡용굴촛대바위길→용화해변→장호항→대금굴, 환선굴</div>
                  <div><br></div>
                  <div>〈1박 2일 여행 코스〉</div>
                  <div>첫째 날 / 초곡용굴촛대바위길→용화해변→장호항→삼척 죽서루</div>
                  <div>둘째 날 / 이사부길→대금굴, 환선굴→하이원추추파크</div>
                </div>
              </div>
              <hr><strong class="ar_title verticalLine">여행 정보</strong>
              <div class="txt_p">
                <div> ○관련 웹 사이트 주소</div>
                <div> &nbsp;- 삼척문화관광 <a title="[새창열림]‘삼척문화관광’ 홈페이지로 이동" href="http://www.samcheok.go.kr/tour.web" target="_blank"> www.samcheok.go.kr/tour.web </a></div>
                <div> <br></div>
                <div> ○ 문의 전화</div>
                <div> &nbsp;- 초곡용굴촛대바위길 033)575-4605</div>
                <div> <br></div>
                <div> ○ 대중교통 정보</div>
                <div> [버스] 서울-삼척, 서울고속버스터미널에서 하루 19~24회(06:30~23:30) 운행, 약 3시간 30분 소요.</div>
                <div> 삼척고속버스터미널 앞 정류장에서 임원·호산행 24번 버스(1시간 30분~2시간 간격 운행) 이용, 초곡항 정류장 하차, 약 1시간 소요. 초곡용굴촛대바위길까지 도보 약 600m.</div>
                <div> * 문의 : 서울고속버스터미널 1688-4700 고속버스통합예매 <a title="[새창열림]‘고속버스통합예매’ 홈페이지로 이동" href="http://www.kobus.co.kr" target="_blank"> www.kobus.co.kr </a> 강원여객 033)574-2686</div>
                <div> <br></div>
                <div> ○ 자가운전 정보</div>
                <div> 동해고속도로→궁촌교차로→삼척로→초곡길→초곡항</div>
                <div> <br></div>
                <div> ○ 숙박 정보</div>
                <div> &nbsp;- 쏠비치호텔&amp;리조트 삼척 : 삼척시 수로부인길, 1588-4888, <a title="[새창열림]‘쏠비치 삼척’ 홈페이지로 이동" href="http://www.daemyungresort.com/sb/sc" target="_blank"> www.daemyungresort.com/sb/sc </a></div>
                <div> &nbsp;- 검봉산자연휴양림 : 원덕읍 임원안길, 033)574-2553, <a title="[새창열림]‘검봉산자연휴양림’ 홈페이지로 이동" href="http://www.foresttrip.go.kr" target="_blank"> www.foresttrip.go.kr </a></div>
                <div> <br></div>
                <div> ○ 식당 정보</div>
                <div> &nbsp;- 바다횟집 : 곰칫국, 삼척시 새천년도로, 033)574-3543</div>
                <div> &nbsp;- 동해바다 : 장치찜, 삼척시 청석로, 033)574-0987</div>
                <div> &nbsp;- 부일막국수 : 막국수, 삼척시 새천년도로, 033)572-1277</div>
                <div> <br></div>
                <div> ○ 주변 볼거리</div>
                <div> 장호항, 도계유리마을, 황영조기념관, 맹방해변</div>
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
