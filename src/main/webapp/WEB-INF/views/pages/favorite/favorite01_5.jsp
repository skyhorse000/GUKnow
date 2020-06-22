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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">16</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">86</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">15,346</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>출렁다리 넘어 섬으로, 강진 가우도</h2>
            <div class="area_address">
              <span class="address">전남 강진군</span>
              <span id="modi_date">수정일 : 2020.05.20</span>
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
                <p style="text-align: justify;">산 넘어 남쪽, 봄기운을 가득 품은 섬이 있다. 해안선을 따라 2.5km 남짓한 산책로가 펼쳐져 있고, 시선이 머무는 곳마다 에메랄드빛 바다가 한 폭의 그림이 되어 뇌리에 담긴다. 마을 식당에서는 직접 채취한 해산물을 요리하는 손길이 바쁘다. 섬으로는 보기 드물게 먹거리, 볼거리, 즐길 거리까지 모두 갖췄다. 강진의 8개 섬 가운데 유일하게 사람이 사는 곳,
                  가우도 얘기다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0">
                    <img src="resources/home/assets/img/favorite/favorite05_01.jpg" alt="저두 출렁다리 입구에서 바라본 가우도 전경">
                  </button>
                  <strong class="tit">저두 출렁다리 입구에서 바라본 가우도 전경</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">강진은 여러모로 독특한 곳이다. 해남과 장흥을 양쪽에 끼고 있는 전형적인 어촌마을지만 유명하다 할 만한 것은 쌀, 딸기, 파프리카 등 바다와 별 상관없는 것들이다. 첫 손에 꼽는 음식도 해산물이 아닌 한정식이다. 조선시대 사대부나 왕족들이 강진에 유배 갈 때 수라간 궁녀들이 따라가 궁중요리를 전파했다는 설이 있다. 군의 형상도 그렇다. 남쪽의 강진만이 군의
                  핵심부까지 깊게 들어와 대구면과 도암면을 갈라놓았다. 지도로 보면 그 모습이 바지나 말굽을 연상케 한다.</p>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">최근에는 가우도라는 작은 섬이 강진의 특별함에 방점을 찍고 있다. 이 섬의 위치는 예컨대 강진이 바지라면 무릎 사이 즈음이다. 소머리와 생김새가 흡사하다 하여 그런 이름이 붙었다. 가구수 14호, 인구수 33명의 작은 섬이지만 강진만의 8개 섬 가운데 유일한 유인도로 그 위용을 뽐내고 있다. 4~5년 전 섬 양쪽에 출렁다리가 놓인 뒤로는 '남도답사 1번지'
                  강진의 핵심 관광자원으로 급부상해 해마다 수십만 명의 발길을 붙잡는 중이다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="3" id3="1">
                    <img src="resources/home/assets/img/favorite/favorite05_02.jpg" alt="가우도에 들어서면 각종 표지판이 관광객을 반긴다">
                  </button>
                  <strong class="tit">가우도에 들어서면 각종 표지판이 관광객을 반긴다</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">출렁다리라고 해서 겁낼 필요는 없다. 바람이 불면 위험할까봐 당초의 계획을 뒤집고 튼튼한 나무다리를 놓았기 때문이다. 그래도 바다를 도보로 횡단하는 일이 마냥 편치만은 않다. 수심이 비교적 얕은 지역이라지만 군데군데 걸린 구명튜브와 스릴을 노리고 만들어 놓은 유리바닥 구간을 보면 더 그렇다. 다리는 대구면 쪽으로 연결된 저두 출렁다리(438m, 도보 10분
                  소요)와 도암면 쪽으로 연결된 망호 출렁다리(716m, 도보 15분 소요)가 있다.&nbsp; 걸어서 입도할 수 있다는 점이 가우도의 가장 큰 매력 포인트다. 자동차는 드나들 수 없지만 섬 주민들이 외부에서 생필품 등을 사 나르기 위해 이용하는 사륜 전동 카트는 통행이 허락된다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="5" id3="2">
                    <img src="resources/home/assets/img/favorite/favorite05_03.jpg" alt="표지판을 따라 걷다 보면 만나는 대나무 길">
                  </button>
                  <strong class="tit">표지판을 따라 걷다 보면 만나는 대나무 길</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">상대적으로 거리가 짧은 저두 출렁다리로 입도한다고 가정했을 때, 왼쪽으로 나무 데크길이 보인다. 이 데크길은 가우도의 서쪽 해변을 따라 0.77km 가량 이어져 있다. 해변의 생김새에 따라 들쭉날쭉 깔린 길이지만 남해의 풍광을 감상하기에 부족함이 없다. 데크에 설치된 조명은 일몰 후 섬이 어둠에 잠길 때 등대 역할을 한다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="2" id3="3">
                    <img src="resources/home/assets/img/favorite/favorite05_04.jpg" alt="함께해길 데크길 구간">
                  </button>
                  <strong class="tit">함께해길 데크길 구간</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">데크길이 끝나는 곳엔 망호 출렁다리가 있다. 출발지였던 저두 출렁다리 왼쪽 데크길이 트래킹 코스라면 망호 출렁다리 인근에는 마을식당이나 낚시터, 매점, 펜션 등 쉬어갈 수 있는 시설이 밀집해 있다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="4" id3="4">
                    <img src="resources/home/assets/img/favorite/favorite05_05.jpg" alt="들쭉날쭉한 길도 나름 운치있다">
                  </button>
                  <strong class="tit">들쭉날쭉한 길도 나름 운치있다</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">이른 봄을 즐기러 온 향춘객들은 이곳에서 가져온 물을 나누어 마시며 다음 코스를 생각한다. 선택은 두 가지. 해변길을 따라 나머지 1.66km를&nbsp; 걷느냐, 마을이 있는 샛길로 빠져 섬 중앙부로 들어가느냐다. 해변길은 지금까지 걸어왔던 나무 데크길이 아닌 콘크리트 도로와 흙길로 이루어져 있으니 참고하도록 하자.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="6" id3="5">
                    <img src="resources/home/assets/img/favorite/favorite05_06.jpg" alt="우리네 고향과 닮아 있는 가우도 마을">
                  </button>
                  <strong class="tit">우리네 고향과 닮아 있는 가우도 마을</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">선택하기 나름이겠지만 지금까지 해변을 따라 걸어왔으니 마을로 들어가 볼 것을 추천한다. 14호 뿐인 작은 마을이라 방심하는 순간 지나쳐버릴 수 있다. 새마을 깃발을 휘날리는 빨간 벽돌집이 마을회관인데, 이 마을회관을 중심으로 크고 작은 집들이 옹기종기 모여 있다. 지금은 터만 남았지만 과거에는 분교까지 들어선 북적이는 마을이었단다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="8" id3="6">
                    <img src="resources/home/assets/img/favorite/favorite05_07.jpg" alt="함께해길에서 만날 수 있는 시인 김영랑 동상">
                  </button>
                  <strong class="tit">함께해길에서 만날 수 있는 시인 김영랑 동상</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">이렇게 마을을 통과해 저두 출렁다리로 가는 길은 해변길로 돌아가는 길보다 약 700m 짧다. 만약 샛길로 빠지지 않고 해변을 따라 섬 한 바퀴를 돈다면 1시간~1시간 30분 정도가 소요된다. 이 코스의 이름이 바로 함께해(海)길이다. </p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="10" id3="7">
                    <img src="resources/home/assets/img/favorite/favorite05_08.jpg" alt="다산 정약용 쉼터"></button>
                  <strong class="tit">다산 정약용 쉼터</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">섬을 한 바퀴 휘감는 생태탐방로 함께해길이 어르신들의 인기 코스라면 젊은이들은 청자타워 짚트랙을 찾는다. 청자타워는 가우도 산 정상에 위치한 청자모양 타워다. 함께해길과 연결된 등산로를 통해 10~15분 내외로 찾아갈 수 있다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="2" id3="8">
                    <img src="resources/home/assets/img/favorite/favorite05_09.jpg" alt="청자타워 전경" style="max-width: 336px;">
                  </button>
                  <strong class="tit">청자타워 전경</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">이곳의 짚트랙은 약 1km 길이로 해상체험시설로는 전국에서 가장 길다. 라인이 3개라 연인, 가족 단위 손님이 동시에 이용할 수 있다. 타워 1층에서 안전장비를 갖춘 뒤 6층 정상에 올라 새처럼 날아갈 준비를 한다. 직원의 카운트다운이 시작되면 머릿속이 하얘진다. 청자타워 높이만 해도 25m에 이른다는 걸 이제야 실감한다. 발밑에 펼쳐진 까마득한 풍경 속으로
                  어떻게 뛰어들어야 할지 막막하지만 몸은 이미 와이어를 따라 움직이고 있다. 안전펜스가 젖혀진 후 발판이 천천히 내려앉는 구조라 발이 땅에서 떨어지는 순간 의지와 상관없이 모든 체험자들이 동시에 활강을 시작한다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="4" id3="9">
                    <img src="resources/home/assets/img/favorite/favorite05_10.jpg" alt="짚트랙 체험을 위해 안전장비를 갖추는 모습">
                  </button>
                  <strong class="tit">짚트랙 체험을 위해 안전장비를 갖추는 모습</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify;">체험 시간은 1분 남짓. 손발이 저릿했던 공포는 어느새 성취감으로 바뀌어 마음을 흥분하게 만든다. 짜릿한 활강이 끝나면 저두 출렁다리 입구에 도착한다. 아예 섬 밖으로 나간 셈이 되므로 가우도에 더 이상 볼일이 남지 않은 때에 색다른 탈출 방법으로 이용하면 좋다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="6" id3="10">
                    <img src="resources/home/assets/img/favorite/favorite05_11.jpg" alt="짜릿한 활강"></button>
                  <strong class="tit">짜릿한 활강</strong>
                </div>
              </div>
              <hr><strong class="ar_title verticalLine">여행 정보</strong>
              <div class="txt_p">
                <p></p>
                <div style="text-align: justify;"><strong>가우도</strong></div>-짚트랙 운영시간 : 09:00 ~ 18:00 / 개인 25,000원<br>-복합낚시공원 이용시간 : 일출 후~일몰 전/ 1일 사용료 성인 15,000원 (5월~11월까지만 운영)<br>-가우도 편의시설 : 화장실, 마을식당, 펜션, 포차, 매점 <br>-저두, 망호 출렁다리 시작점에 있는 주차장 무료 이용
                가능.<p></p>
                <p><br></p>
                <p><strong>주변 음식점</strong><br>-예향 : 한정식 / 전라남도 강진군 강진읍 동성리 186-61 / 061-433-5777<br>-설성식당 : 돼지불고기백반 / 전라남도 강진군 병영면 병영성로 92 / 061-433-1282</p>
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
