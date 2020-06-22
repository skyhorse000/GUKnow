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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">30</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">38</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">4,696</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>나만 알고 싶은 쑥섬의 비밀정원, 애도</h2>
            <div class="area_address">
              <span class="address">전남 고흥군</span>
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
                <p style="text-align: justify; ">여행을 떠나본 사람은 안다. 오늘 떠날 여행을 내일로 미루지 말아야 한다는 것을. 전남 고흥의 작은 섬, 애도를 만났다. 준비물이라고는 철 지난 바닷가에서 쉬어갈 폭신한 담요 한 장과 감미로운 음악을 들려줄 이어폰, 아끼는 시집 두어 권이면 충분한 곳. 봄이면 온 섬에 향긋한 쑥이 쑥쑥 자라서 쑥섬이라 불리는 애도(艾島)는 사랑 애(愛)가 아니라 쑥빛
                  애(艾)라지만, 단아하고 고즈넉한 마을 굽이굽이 피어나는 꽃길을 걷다 보면, 그리운 얼굴이 불쑥 떠오르는 사랑의 섬이다. </p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="0" id2="2" id3="0">
                    <img src="resources/home/assets/img/favorite/favorite06_01.jpg" alt="애도의 별 정원에서 바라보는 꽃과 바다">
                  </button>
                  <strong class="tit">애도의 별 정원에서 바라보는 꽃과 바다</strong>
                  </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">다람쥐 쳇바퀴처럼 반복되는 일상과 부질없는 욕망의 흔적들을 한낱 우주의 티끌처럼 날려버릴 수는 없을까, 푸르른 망망대해와 나로호 우주센터가 있는 고흥을 폭풍 검색했다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="3" id3="1">
                    <img src="resources/home/assets/img/favorite/favorite06_02.jpg" alt="300여 종의 꽃들이 사시사철 피고 지는 별정원" style="max-width: 367px;">
                  </button>
                  <strong class="tit">300여 종의 꽃들이 사시사철 피고 지는 별정원</strong>
                  </div>
              </div>
              <div class="txt_p">
                <p>그러다 운명처럼 애도를 만났다. 마음의 여유조차 없던 날들 속에서 ‘쉴섬’ 애도를 찾은 건, 어쩌면 운명보다 행운이었다. </p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="5" id3="2">
                    <img src="resources/home/assets/img/favorite/favorite06_03.jpg" alt="혼자 보내도 좋은 섬의 휴식" style="max-width: 367px;">
                  </button>
                  <strong class="tit">혼자 보내도 좋은 섬의 휴식 </strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">격렬하게 아무것도 하고 싶지 않았던 소망대로 누구의 방해도 없이 혼자 혹은 둘만의 시간을 느릿느릿 보낼 수 있는 곳, 가슴이 뻥 뚫리도록 탁 트인 다도해의 절경을 바라볼 수 있는 곳, 청정 난대림의 푸른 골짜기를 지나 바다를 배경으로 아름다운 꽃밭을 만나는 곳, 애도의 하루는 힐링과 감동의 순간이 파도처럼 밀려온다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="7" id3="3">
                    <img src="resources/home/assets/img/favorite/favorite06_04.jpg" alt="수평선과 꽃을 함께 감상하는 시간" style="max-width: 367px;">
                  </button>
                  <strong class="tit">수평선과 꽃을 함께 감상하는 시간</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">애도에는 독특한 섬 문화도 남아있다. 애도에는 개와 닭 그리고 무덤이 없다. 골목에는 사부작사부작 돌아다니는 고양이들만 보인다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="9" id3="4">
                    <img src="resources/home/assets/img/favorite/favorite06_05.jpg" alt="가슴이 시원해지는 다도해의 절경">
                  </button>
                  <strong class="tit">가슴이 시원해지는 다도해의 절경</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">오랜 세월을 담담하게 지켜온 돌담처럼, 14가구의 애도 주민들은 전통적으로 내려오는 규약들을 수백 년 동안 묵직하게 지켜오고 있다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="1" id2="11" id3="5">
                    <img src="resources/home/assets/img/favorite/favorite06_06.jpg" alt="애도에서 만난 고양이들" style="max-width: 367px;">
                  </button>
                  <strong class="tit">애도에서 만난 고양이들</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">해안선 길이 1km(면적 0.32㎢)의 작은 섬인 ‘애도(艾島)’는 전남 고흥군 봉래면에 속한 섬이다. 나로도 여객선터미널에서 배를 타고 3분이면 도착하는 섬, 애도는 가깝고도 먼 섬이지만, 호젓하게 떠나는 힐링 여행에 안성맞춤이다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="3" id3="6">
                    <img src="resources/home/assets/img/favorite/favorite06_07.jpg" alt="나로도에서 3분이면 도착하는 가깝고도 먼 섬, 애도">
                  </button>
                  <strong class="tit">나로도에서 3분이면 도착하는 가깝고도 먼 섬, 애도</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">나로도 여객선터미널에서 바라보면 애도 마을이 손에 잡힐 것 같다. 배에 타자마자 내려야 할 만큼 가깝지만, 잠시라도 배에서 맞는 바닷바람은 쾌적하고 시원하다. 애도 선착장에는 갈매기로 꾸며진 무인 탐방비 박스가 있다. ‘힐링파크 쑥섬쑥섬’의 입장료 5천 원은 섬과 주민을 위해 쓰인다. 무인박스 옆에는 애도 탐방 코스 안내도가 친절하게 그려져 있다. 왼쪽 길로
                  가든 오른쪽 길로 가든 아름다운 애도의 풍광과 사랑에 빠지는 건 시간문제다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="5" id3="7">
                    <img src="resources/home/assets/img/favorite/favorite06_08.jpg" alt="입장료 5천 원은 섬과 주민을 위해 쓰인다">
                  </button>
                  <strong class="tit">입장료 5천 원은 섬과 주민을 위해 쓰인다</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">선착장에서 왼쪽 길로 접어들면, 갈매기 카페를 지나 탐방로로 가는 가파른 언덕길이 나타난다. 타박타박 오를수록 산길은 시원하고 호젓하다. 햇볕을 가릴 만큼 울창한 난대림 숲길에서 만나는 후박나무, 푸조나무, 육박나무와 돈나무 군락지는 영화 속의 밀림이 떠오를 정도다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="7" id3="8">
                    <img src="resources/home/assets/img/favorite/favorite06_09.jpg" alt="울창한 난대림 숲길" style="max-width: 367px;">
                  </button>
                  <strong class="tit">울창한 난대림 숲길</strong>
                </div>
              </div>
              <div class="txt_p">
                <p>숨을 고르기가 무섭게 다도해와 수평선을 바라보며 걷는 3km의 몬당길이 이어진다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="9" id3="9">
                    <img src="resources/home/assets/img/favorite/favorite06_10.jpg" alt="섬마을 처자들이 풍류를 즐겼다는 여자산포바위">
                  </button>
                  <strong class="tit">섬마을 처자들이 풍류를 즐겼다는 여자산포바위</strong>
                </div>
              </div>
              <div class="txt_p">
                <p>산길을 오르다 해발 80m, 눈앞에 펼쳐지는 해상정원을 만나면 절로 감탄이 터져 나온다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="11" id3="10">
                    <img src="resources/home/assets/img/favorite/favorite06_11.jpg" alt="숲이 우거져 시원한 산길">
                  </button>
                  <strong class="tit">숲이 우거져 시원한 산길</strong>
                </div>
              </div>
              <div class="txt_p">
                <p>봄부터 겨울까지 300여 종의 꽃들이 알록달록 피고 지는 곳, 여기가 애도의 우주정원(별정원, 태양정원, 달정원)이다. </p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="13" id3="11">
                    <img src="resources/home/assets/img/favorite/favorite06_12.jpg" alt="당할머니 나무라고 불리는 후박나무" style="max-width: 367px;">
                  </button>
                  <strong class="tit">당할머니 나무라고 불리는 후박나무</strong>
                  </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">꽃범의 꼬리, 백일홍, 상사화, 칸나, 황화코스모스, 갯패랭이, 매리골드, 천일홍, 과꽃, 은잔화, 낮달맞이, 맨드라미, 문빔, 우단동자, 금계국, 수국, 마타리, 겹삼잎국화, 멜람포디움, 페튜니아 등 이름도 색다른 300여 종의 꽃들이 1년 내내 피고 지는 별정원을 돌아보고 마을로 내려오면 돌담에 핀 야생화도 예사롭지 않다. 수백 년 되었다는 사랑의
                  돌담길을 지나 우끄터리 쌍우물까지 걸어가면, 200년 혹은 300년을 살아온 아름드리 동백나무가 무성하게 이어지는 동백길을 만난다. </p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="15" id3="12">
                    <img src="resources/home/assets/img/favorite/favorite06_13.jpg" alt="동백길에서 바라보는 일몰 풍경">
                  </button>
                  <strong class="tit">동백길에서 바라보는 일몰 풍경</strong>
                </div>
              </div>
              <div class="txt_p">
                <p>마을 주민들의 추억이 느껴지는 쌍우물을 지나 등대까지 올라가면 애도의 비경인 일몰이 기다린다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="17" id3="13">
                    <img src="resources/home/assets/img/favorite/favorite06_14.jpg" alt="일몰이 아름다운 등대" style="max-width: 367px;">
                  </button>
                  <strong class="tit">일몰이 아름다운 등대</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">일몰 때문에 하룻밤을 묵어간다고 할 만큼 멋진 노을을 감상하는 곳이다. 섬에서 1박 한다면 아름다운 별밤은 추가 보너스. 짙은 어둠이 내리면, 검은 융단에 박힌 보석처럼 눈부시게 빛나는 별자리를 오롯이 감상할 수 있다. </p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="2" id2="19" id3="14">
                    <img src="resources/home/assets/img/favorite/favorite06_15.jpg" alt="등대에서 바라보는 일몰">
                  </button>
                  <strong class="tit">등대에서 바라보는 일몰</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">애도는 전라남도 제1호의 민간 정원이다. 애도와 사랑에 빠진 김상현 교사와 고채훈 약사 부부가 지난 16년간 가꾼 해발 80m의 해상 정원인 우주정원이다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="3" id3="15">
                    <img src="resources/home/assets/img/favorite/favorite06_16.jpg" alt="국내 유일의 해상 정원인 별정원">
                  </button>
                  <strong class="tit">국내 유일의 해상 정원인 별정원</strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">나로도 주민으로 주말이나 방학이면 쑥섬정원으로 출근하는 김상현 씨는 섬 이야기만 나오면 까맣게 그을린 얼굴에 환한 미소가 번진다. 애도와 사랑에 빠지는 다섯 곳의 풍광에 목소리가 다섯 배 밝아진다.</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify;">“난대림 숲속에서 등대까지 걷다 보면 ‘와!’라는 감탄사가 다섯 번 나옵니다. 울창한 난대림 숲이 시작되는 환희의 언덕에서 한 번, 다도해가 내려다보이는 뷰 포인트를 만나서 두 번, 언덕에서 시작되는 별정원 앞에서 세 번, 봄날 동백길의 장관을 보며 네 번, 등대에서 바라보는 일몰에서 다섯 번, 와!가 절로 나오죠. 애도에서 만나는 모든 풍경은 감동의
                  물결입니다.”</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify;">그는 우주정원을 조성할 때 바닥에 까는 지피식물이 필요 없었다고 말한다. 꽃과 너무나 잘 어울리는 푸른 바다가 있었기 때문이다. 원예 전문가라고 할 만큼 꽃에 박식한 부인 덕분에 자신은 꽃의 배치에만 신경을 썼다지만, 별정원을 돌아보면 16년의 땀방울이 고스란히 느껴질 만큼 부부의 정성과 애정이 절절하게 느껴진다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="5" id3="16">
                    <img src="resources/home/assets/img/favorite/favorite06_17.jpg" alt="애도에 아름다운 해상정원을 만들고 꽃피운 김상현 씨">
                  </button>
                  <strong class="tit">애도에 아름다운 해상정원을 만들고 꽃피운 김상현 씨</strong>
                </div>
              </div>
              <div class="txt_p">
                <p>애도는 전남 고흥군 봉래면 나로도 여객선터미널에서 배편(왕복 2,000원)으로 입도할 수 있다.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="7" id3="17">
                    <img src="resources/home/assets/img/favorite/favorite06_18.jpg" alt="갈매기 카페 외관">
                  </button>
                  <strong class="tit">갈매기 카페 외관</strong>
                </div>
              </div>
              <div class="txt_p">
                <p>총 탐방 시간은 1시간 30분에서 2시간 정도 걸리지만, 여유로운 산책을 즐기고 싶다면 마지막 배 시간을 기억해둘 것.</p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="9" id3="18">
                    <img src="resources/home/assets/img/favorite/favorite06_19.jpg" alt="무인으로 운영되는 갈매기 카페" style="max-width: 367px;">
                  </button>
                  <strong class="tit">무인으로 운영되는 갈매기 카페</strong>
                </div>
              </div>
              <div class="txt_p">
                <p style="text-align: justify; ">미리 체험 신청을 하면 숲해설가와 함께 숲 체험을 할 수 있다. 방학에는 어촌 체험으로 바닷가 고동 잡기, 칠게 잡기, 주꾸미 잡기 등 다양한 체험이 준비되어 있다. 수익금은 모두 마을을 위해 사용된다. 매월 20일은 마을 배의 정기휴일이라 문의와 예약 필수. </p>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div>
                  <button type="button" id="3" id2="11" id3="19">
                    <img src="resources/home/assets/img/favorite/favorite06_20.jpg" alt="소박하게 꾸며진 돌게펜션">
                  </button>
                  <strong class="tit">소박하게 꾸며진 돌게펜션</strong>
                </div>
              </div>
              <hr><strong class="ar_title verticalLine">여행 정보</strong>
              <div class="txt_p">
                <p> <strong> <a class="con_link" href="http://www.ssookseom.com" title="[새창열림] ‘힐링파크 쑥섬쑥섬, 애도’ 홈페이지로 이동" target="_blank"> 힐링파크 쑥섬쑥섬, 애도 </a> </strong></p>
                <p> -주소 : 전남 고흥군 봉래면 애도길 43</p>
                <p> -문의 : 010-2504-1991, 010-8672-9222</p>
                <p> <strong> <br> </strong></p>
                <p> <strong> 주변 음식점 </strong></p>
                <p> -순천횟집 : 생선회 / 나로도항길 117 / 061-833-6441</p>
                <p> -다도해회관 : 생선회 / 나로도항길 103-18 / 061-834-5111</p>
                <p> -서울식당 : 생선회 / 나로도항길 151 / 061-835-5111</p>
                <p> <strong> <br> </strong></p>
                <p> <strong> 숙소 </strong></p>
                <p> - <a class="con_link" href="http://www.우주항공호텔.com" title="[새창열림] ‘우주항공호텔’ 홈페이지로 이동" target="_blank"> 우주항공호텔 </a> : 나로도항길 94-9 / 061-835-9631</p>
                <p> - <a class="con_link" href="http://www.narocenter.com" title="[새창열림] ‘나로비치호텔’ 홈페이지로 이동" target="_blank"> 나로비치호텔 </a> : 나로도항길 94-10 / 061-835-9001</p>
                <p> -&nbsp;<a class="con_link" href="http://narohotel1.modoo.at" title="[새창열림] ‘나로호텔펜션’ 홈페이지로 이동" target="_blank">나로호텔펜션</a> : 나로도항길 110-8 / 061-833-8893</p>
                <p> <br></p>
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
