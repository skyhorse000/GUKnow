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
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">24</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">2,224</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>성곽과 마을과 마천루가 어우러진 풍경, 종로 창신숭인채석장전망대와 산마루놀이터</h2>
            <div class="area_address">
              <span class="address">서울 종로구</span>
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
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="1" id3="0">
                    <img src="resources/home/assets/img/favorite/favorite04_01.jpg" alt="아이들이 자유롭게 뛰어놀기 좋은 산마루놀이터">
                  </button>
                  <strong class="tit">아이들이 자유롭게 뛰어놀기 좋은 산마루놀이터</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">서울 낙산 자락에 자리한 종로구 창신동·숭인동 일대는 예부터 풍경이 아름다워 조선 시대 문신들의 집이나 별장지로 사랑받았다. 하지만 일제강점기 들어 이 지역이 파헤쳐지기 시작했다. 일제가 서울에 석조 건물을 짓기 위해 경성부 직영 채석장으로 활용하면서부터다. 낙산에서 캐낸 화강암은 질이 좋기로 유명해 조선총독부와 옛 서울역, 시청, 한국은행 등을 짓는 데
                  사용했다. 위치가 동대문 바로 밖이라 캐낸 돌을 실어 나르기도 편했다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="3" id3="1">
                    <img src="resources/home/assets/img/favorite/favorite04_02.jpg" alt="일제강점기 경성부 직영 채석장으로 사용한 곳에 2019년 11월 문을 연 창신숭인채석장전망대">
                  </button>
                  <strong class="tit">일제강점기 경성부 직영 채석장으로 사용한 곳에 2019년 11월 문을 연 창신숭인채석장전망대</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">해방 이후 채석장 사용은 중단됐고, 한국전쟁이 끝나고 상경한 이주민과 피란민이 채석장 주위로 모여들면서 마을이 생겼다. 지금의 창신·숭인 지역이 모습을 갖추기 시작한 것은 이때부터다. 2007년 뉴타운 지역으로 지정돼 아파트 단지가 들어설 뻔했으나, 주민들이 반대해 지정이 해제됐다. 2014년 ‘전국 1호’ 도시 재생 지역으로 선정, 국내 도시 재생 모범
                  사례로 평가받는다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="5" id3="2">
                    <img src="resources/home/assets/img/favorite/favorite04_03.jpg" alt="창신숭인채석장전망대는 낙산공원과 가깝다.">
                  </button>
                  <strong class="tit">창신숭인채석장전망대는 낙산공원과 가깝다.</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 2019년 11월 채석장 상부에 문을 연 창신숭인채석장전망대는 한양도성을 비롯해 서울의 스카이라인이 한눈에 보인다. 전망이 좋다는 소문이 나면서 찾는 이들이 꾸준히 늘어나고 있다. 벽돌 2개가 맞물린 듯 노출 콘크리트로 지은 3층 건물이 주변 경관과 묘하게 어우러진다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="7" id3="3">
                    <img src="resources/home/assets/img/favorite/favorite04_04.jpg" alt="3층에 해당하는 고도 121.5m 전망대에서 바라본 풍경">
                  </button>
                  <strong class="tit">3층에 해당하는 고도 121.5m 전망대에서 바라본 풍경</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 엘리베이터를 타고 3층에 해당하는 고도 121.5m 전망대에 오르면 정면으로 동대문
                  DDP를 비롯한 도심의 스카이라인이, 오른쪽으로 한양도성과 남산이 아득하게 시야에 들어온다. 산동네 주택과 고층 빌딩, 한양도성이 어우러져 서울의 여느 전망 명소와 다른 풍경을 보여준다. 서울의 역사와 나이를 어렴풋하나마 가늠할 수 있다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="9" id3="4">
                    <img src="resources/home/assets/img/favorite/favorite04_05.jpg" alt="의자와 탁자가 마련된 2층">
                  </button>
                  <strong class="tit">의자와 탁자가 마련된 2층</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">2층에는 의자와 탁자가 마련되어 전경을 편하게 감상할 수 있다. 창신숭인채석장전망대는 현재 시범 운영 중으로, 화~금요일 오후 1시부터 6시까지 이용할 수 있다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="11" id3="5">
                    <img src="resources/home/assets/img/favorite/favorite04_06.jpg"
                      alt="국내 도시 재생 모범 사례로 평가받는 창신·숭인 지역에 2019년 5월 문을 연 산마루놀이터. 골무를 닮은 외관이 독특하다.">
                    </button>
                    <strong class="tit">국내 도시 재생 모범 사례로 평가받는 창신·숭인 지역에 2019년 5월 문을 연 산마루놀이터. 골무를 닮은 외관이 독특하다.</strong>
                  </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 이곳에서 야트막한 집들 사이로 난 골목을 따라 내려가면 특이하게 생긴 건물 하나가 있다. 2019년 5월 문을 연 산마루놀이터다. 골무홀, 정글짐, 열린광장, 황토놀이터, 모래놀이터 등이 있어 아이들이 특히 좋아한다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="13" id3="6">
                    <img src="resources/home/assets/img/favorite/favorite04_07.jpg" alt="‘우리나라 봉제 산업 1번지’ 창신동에 자리한 산마루놀이터 실내">
                  </button>
                  <strong class="tit">‘우리나라 봉제 산업 1번지’ 창신동에 자리한 산마루놀이터 실내</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 건물 외관은 바느질할 때 사용하는 골무를 형상화한 것이라고 한다. 창신동 일대에는 1000여 개의 봉제 업체가 있고, 봉제업 종사자도 3000여 명이나 된다. ‘우리나라 봉제 산업 1번지’로 불리는 이 지역을 생각하면 왜 이런 건물이 들어섰는지 짐작이 간다. 산마루놀이터는 2019대한민국국토대전에서 창의적 놀이 공간이라는 점을 높게 평가받아 대통령상의
                  영예를 차지하기도 했다. <br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="15" id3="7">
                    <img src="resources/home/assets/img/favorite/favorite04_08.jpg" alt="높이 9m에 이르는 정글짐">
                  </button>
                  <strong class="tit">높이 9m에 이르는 정글짐</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">입구에 들어서면 거대한 벌집처럼 생긴 구조물이 반긴다. 육각형 구조물은 밧줄로 연결된 흔들다리를 건너가면 정글짐과 연결된다. 높이 9m에 이르는데, 아이들도 별 무서움 없이 꼭대기까지 올라간다(만 3세부터 이용 가능).<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="17" id3="8">
                    <img src="resources/home/assets/img/favorite/favorite04_09.jpg" alt="산마루놀이터 옥상 전망대로 가는 길">
                  </button>
                  <strong class="tit">산마루놀이터 옥상 전망대로 가는 길</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">정글짐 꼭대기는 옥상 전망대로 이어진다. 전망대에는 강화유리로 만든 데크가 있다. 이곳에서 남산과 동대문 일대가 한눈에 잡힌다. 정글짐 주위로 빙글빙글 돌아가는 길을 따라 전망대에 오를 수도 있다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="19" id3="9">
                    <img src="resources/home/assets/img/favorite/favorite04_10.jpg" alt="1층 고무홀에 있는 도서관">
                  </button>
                  <strong class="tit">1층 고무홀에 있는 도서관</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">1층에 자리한 골무홀은 도서관이다. 아이들이 좋아할 만한 동화책과 그림책이 가득하다. 각종 마술 도구도 마련되어 아이들이 즐겁게 놀 수 있다. 산마루놀이터 이용 시간은 하절기 오전 9시~오후 7시, 동절기 오전 9시~오후 6시. 월요일과 공휴일, 설날·추석 연휴에는 문을 열지 않고, 무료로 운영한다.<br>
                </div>
              </div>
              <div class="txt_p">
                <div>〈당일 여행 코스〉</div>
                <div>낙산성곽→창신숭인채석장전망대→산마루놀이터</div>
                <div><br></div>
                <div>〈1박 2일 여행 코스〉</div>
                <div>첫째 날 / 낙산성곽→창신숭인채석장전망대→산마루놀이터&nbsp;</div>
                <div>둘째 날 / 대학로 주변→동대문</div>
              </div>
              <hr><strong class="ar_title verticalLine">여행 정보</strong>
              <div class="txt_p">
                <div> ○ 문의 전화</div>
                <div> &nbsp;- 창신숭인채석장전망대 02)764-6364(창신숭인도시재생협동조합)</div>
                <div> &nbsp;- 산마루놀이터 070-8181-0502</div>
                <div> <br></div>
                <div> ○ 대중교통 정보</div>
                <div> [지하철] 6호선 창신역 1번 출구, 창신숭인채석장전망대까지 도보 약 8분.</div>
                <div> 1·6호선 동묘앞역 9번 출구, 창신숭인채석장전망대까지 도보 약 10분.</div>
                <div> 1·4호선 동대문역 3번 출구, 창신숭인채석장전망대까지 도보 약 11분.</div>
                <div> * 문의 : <a class="con_link" href="http://www.seoulmetro.co.kr" title="[새창열림] ‘서울교통공사’ 홈페이지로 이동" target="_blank"> 서울교통공사 </a> 1577-1234</div>
                <div> [버스] 7025번 지선버스 이용, 충신동 정류장 하차, 창신숭인채석장전망대까지 도보 약 15분.</div>
                <div> * 문의 : <a class="con_link" href="https://topis.seoul.go.kr" title="[새창열림] ‘서울특별시교통정보센터’ 홈페이지로 이동" target="_blank">서울특별시교통정보센터</a> 120</div>
                <div> <br></div>
                <div> ○ 자가운전 정보</div>
                <div> 세종대로→종로→지봉로→창신숭인채석장전망대</div>
                <div> <br></div>
                <div> ○ 숙박 정보</div>
                <div> &nbsp;- <a class="con_link" href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=62cd337b-bfba-4216-b683-d45d087c67ab" title="‘JW메리어트 동대문스퀘어서울’ 정보 페이지로 이동"> JW메리어트 동대문스퀘어서울 </a> : 종로구 청계천로, 02)2276-3000</div>
                <div> &nbsp;- <a class="con_link" href="https://www.skyparkhotel.com/html/accommdation/accom6_tab1_01.asp" title="[새창열림] ‘호텔스카이파크 킹스타운동대문점’ 홈페이지로 이동" target="_blank"> 호텔스카이파크 킹스타운 동대문점 </a> : 중구 장충단로13길, 02)6952-8991</div>
                <div> <br></div>
                <div> ○ 식당 정보</div>
                <div> &nbsp;- 동래복국 : 복국, 종로구 종로, 02)741-4705</div>
                <div> &nbsp;- 동묘발전소 : 돈가스, 종로구 종로, 02)6398-7917</div>
                <div> <br></div>
                <div> ○ 주변 볼거리</div>
                <div> <a class="con_link" href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=3c98e24b-9fb9-4ecf-b8a2-f26a5890748f" title="‘낙산공원’ 정보 페이지로 이동"> 낙산공원 </a> , 이화마을 등</div>
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
