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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">24</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">27</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">5,050</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>쉬고 싶은 그대, 섬으로 가라. 창원 돝섬</h2>
            <div class="area_address">
              <span class="address">경남 창원시</span>
              <span id="modi_date">수정일 : 2020.04.09</span>
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
                    <img src="resources/home/assets/img/favorite/favorite07_01.jpg" alt="돝섬 1" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">따뜻한 햇살이 느껴지는 요즘. 우리나라에서 가장 빠르게 봄기운을 느낄 수 있는 남쪽에 돝섬 해상유원지가 있습니다. 경남 창원에 위치한 돝섬은 마산 앞바다에 떠 있는 조그만 섬인데요. 섬을 위에서 내려다 보면 마치 돼지가 옆으로 누워있는 모습과 닮았다고 해서 돼지를 부르는 옛말인 ‘돝’ 이라는 단어를 사용해 이름이 붙여진 섬이랍니다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="3" id3="1">
                    <img src="resources/home/assets/img/favorite/favorite07_02.jpg" alt="돝섬 4" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">그래도 ‘섬’ 이라고 육로로는 갈 수 없어 반드시 배편을 이용해야 하는데요. 돝섬으로 가는 배편은 마산항 돝섬터미널에서 탈 수 있습니다. 오전 9시부터 매 30분마다 출항을 하구요. 돝섬에서 나오는 마지막 배는 계절에 따라 조금씩 다르니&nbsp; 배 운항시간은 미리미리 숙지할 필요가 있습니다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="5" id3="2">
                    <img src="resources/home/assets/img/favorite/favorite07_03.jpg" alt="돝섬 5" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="6" id3="3">
                    <img src="resources/home/assets/img/favorite/favorite07_04.jpg" alt="돝섬 6" style="max-width: 825px; max-height: 371px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">배에 올라타고 선실 의자에 앉아 바깥 풍경을 구경 좀 하려고 하니 벌써 도착해버린 돝섬 선착장. 돝섬은 출발하는 배에 올라타기 전, 마산항 선착장에서도 바로 보일만큼 매우 가까운 곳에 있어 실제로 배를 타고 가는 시간은 10여분 정도 밖에 걸리지 않더군요.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="8" id3="4">
                    <img src="resources/home/assets/img/favorite/favorite07_05.jpg" alt="돝섬 7" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">섬의 생김새도 돼지모양.. 이름도 돼지와 연관되어 있는 돝섬은 최근엔 ‘황금돼지섬’ 이라는 새로운 별명으로 많은 이들에게 돼지의 상징인 ‘복’을 가져다 주는 행운의 섬으로도 소개되고 있는데요. 원래 이 섬은 1982년 민간자본에 의한 국내 최초의 해상유원지로 개발이 되어 당시 섬 안에는 놀이시설과 동물원도 갖추고 있어 마산, 창원시민들의 단골 나들이 장소로
                  많이 알려졌다고 합니다. 하지만 2003년 태풍 매미로 인해 여러 시설들이 파괴되고 이후 시설물들의 운영 중지 및 사람들의 발길이 점점 뜸해져 점점 흉물이 되어가던 섬을 통합 창원시가 직접 나서 관리를 하기 시작했는데요. 흉물이었던 놀이시설과 동물원은 모두 철거되고, 대신 해상 문화공간 및 자연 테마공원으로 탈바꿈하여 ‘돝섬 해상공원’으로 지난 2011년 재개장을 하게 되었습니다. 유원지의 모습은 사라지고
                  자연친화적인 해안둘레길을 비롯한 산책로가 잘 마련되어 있구요. 2012년에는 창원조각비엔날레를 이곳에서 개최를 하여 곳곳에 조각작품들도 감상할 수 있습니다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="10" id3="5">
                    <img src="resources/home/assets/img/favorite/favorite07_06.jpg" alt="돝섬 9" style="max-width: 825px; max-height: 371px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="11" id3="6">
                    <img src="resources/home/assets/img/favorite/favorite07_07.jpg" alt="돝섬 8"
                    style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="12" id3="7">
                    <img src="resources/home/assets/img/favorite/favorite07_08.jpg" alt="돝섬 10" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">일단 돝섬에 도착하게 되면, 가장 먼저 섬의 해안둘레길을 따라 걸어서 한바퀴 산책해 보는걸 추천드립니다. 워낙 작은 섬이라 한바퀴 도는 데에도 채 30분이 걸리지 않을만큼 짧은 코스이기도 하고, 길 자체도 평탄한 편이며, 나무데크로 만들어진 목책로가 잘 만들어져 있어 부담없이 산책하기 좋습니다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="14" id3="8">
                    <img src="resources/home/assets/img/favorite/favorite07_09.jpg" alt="돝섬 11" style="max-width: 825px; max-height: 464px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="15" id3="9">
                    <img src="resources/home/assets/img/favorite/favorite07_10.jpg" alt="돝섬 10" style="max-width: 825px; max-height: 371px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">
                  <div>해안산책로 구간 중간중간에는 바닷가 쪽으로 내려갈 수 있는 코스도 마련되어 있구요. 실제 물이 빠지는 시간대에는 갯벌체험을 할 수 있는 바다체험장도 있습니다. 아무래도 추운 겨울철에는 갯벌체험을 하기 어려울 수 있겠지만, 따뜻한 계절에는 아이들과 함께 오면 자연학습 현장으로도 괜찮은 곳이 아닐까 생각되는군요.</div>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="17" id3="10">
                    <img src="resources/home/assets/img/favorite/favorite07_11.jpg" alt="돝섬 12" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="18" id3="11">
                    <img src="resources/home/assets/img/favorite/favorite07_12.jpg" alt="돝섬 13" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">또한 산책로 한쪽에는 요트계류장과 함께 해양스포츠센터가 마련되어 있는데요. 필요에 따라 요트교육 혹은 카약 같은 해양스포츠 체험을 할 수 있기도 해서 역시 여름철에는 시원한 바다를 만끽할 수 있는 곳이 되기도 합니다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="20" id3="12">
                    <img src="resources/home/assets/img/favorite/favorite07_13.jpg" alt="돝섬 14" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="21" id3="13">
                    <img src="resources/home/assets/img/favorite/favorite07_14.jpg" alt="돝섬 15" style="max-width: 825px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">해안산책로를 거의 한바퀴 다 돌았을 무렵 만나게 된 돝섬의 새로운 명물인 흔들다리예요. 생각보다 다리길이가 꽤나 길어 커플 두명이 알콩달콩 걸어 보기에도 괜찮은 다리일 것 같습니다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="23" id3="14">
                    <img src="resources/home/assets/img/favorite/favorite07_15.jpg" alt="돝섬 16" style="max-width: 825px; max-height: 371px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">해안산책로를 한바퀴 돌고 나서도 돌아가는 배 시간이 여유롭다면, 돝섬에서 제일 높은 정상까지 이어진 길을 따라 올라보는 것도 좋습니다. 정상이라 해봐야 해발 50미터 정도 밖에 되지 않는 그리 높지 않은 곳이라 누구나 쉽게 걸어 올라갈 수 있는 코스이구요. 오르면서 아래로 내려다 보이는 마산 앞바다의 풍경은 더욱 멋져 보입니다.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="25" id3="15">
                    <img src="resources/home/assets/img/favorite/favorite07_16.jpg" alt="돝섬 19" style="max-width: 825px; max-height: 401px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div>
                  <button type="button" id="0" id2="26" id3="16">
                    <img src="resources/home/assets/img/favorite/favorite07_17.jpg" alt="돝섬 17" style="max-width: 99%; max-height: 465px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
                <div>
                  <button type="button" id="0" id2="26" id3="17">
                    <img src="resources/home/assets/img/favorite/favorite07_18.jpg" alt="돝섬 18" style="max-width: 99%; max-height: 465px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">정상으로 오르는 언덕길 중간중간에는 지난 2012년 조각비엔날레 때 만들어졌던 조각작품들이 곳곳에 자리잡고 있습니다. 마치 거대한 야외미술관에 온 듯한 느낌이 들 정도로 다양한 작품들이 전시되어 있으니 하나하나 둘러보며 감상하는 재미도 있어요.<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="28" id3="18">
                    <img src="resources/home/assets/img/favorite/favorite07_19.jpg" alt="돝섬 20" style="max-width: 825px; max-height: 371px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">드디어 도착한 돝섬의 정상입니다. 정상 부근에는 ‘하늘화원’ 이라는 넓은 정원과 꽃밭이 있습니다. 그리고 한쪽에는 길다란 장미터널도 마련되어 있으니 5월에 오게 되면 예쁜 장미터널을 만날 수 있지 않을까 생각되네요.&nbsp;<br>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="30" id3="19">
                    <img src="resources/home/assets/img/favorite/favorite07_20.jpg" alt="돝섬 21" style="max-width: 825px; max-height: 371px;">
                  </button>
                  <strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">80, 90년대 놀이시설과 동물원으로 시끌벅적한 유원지였던 곳이 지금은 도심 속의 조용한 힐링 섬 여행지로 바뀌면서 옛 명성 못지않게 최근 돝섬을 찾는 여행객들이 점점 늘어나고 있다고 합니다. 창원이나 마산 시내에서도 접근성이 좋고, 섬이긴 하지만 배를 타는 시간도 그리 길지 않기에 시끌벅적한 도시생활에서 벗어나 나만의 조용한 시간을 갖고 싶다면 돝섬으로
                  향해 보는건 어떨까요?<br>
                </div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <hr><strong class="ar_title verticalLine">여행 정보</strong>
                  <div class="txt_p">
                    <div> <span style="font-weight: bold;"><a class="con_link" title="‘창원 돝섬’ 정보 페이지로 이동" href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f87c749f-7263-4dab-b1cc-2554ba86a93d"> 창원 돝섬 해상유원지 </a> </span></div>
                    <div> 위치: 경남 창원시 마산합포구 제2부두로 56&nbsp;</div>
                    <div> 가는 법: 창원 마산항 돝섬 유람선터미널에서 배로 10분&nbsp;</div>
                    <div> 입장료: 승선료 대인 8000원, 소인 5000원 (왕복)&nbsp;</div>
                    <div> 운영 기간(시간): 마산항 첫배 09:00 / 돝섬 마지막배 17:30(동절기), 18:00 (하절기)</div>
                    <div> <br></div><span style="font-weight: bold; color: rgb(256, 0, 0);"> * 코로나바이러스감염증-19 확산 방지를 위해 돝섬 내 체험시설 이용불가</span>
                  </div>
                </div>
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
