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
        <h2 class="ir_so">Recommend_blog</h2>
        <div id="contents">
          <div class="tit_cont">
            <div class="post_area">
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">23</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">23</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">2,358</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>광양으로 떠나는 힐링 광양여행</h2>
            <div class="area_address">
              <span class="address">전남 광양시</span>
              <span id="modi_date">수정일 : 2020.06.05</span>
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

            <strong id="titCont" class="blind">본문 내용</strong><!-- 1108 id 추가 -->
            <!-- [D] 텍스트 미노출시 클래스 blind 추가 -->
            <div class="box_txtPhoto">
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="0" id2="1" id3="0">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_01.png" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">일상에 지쳐 있는 나를 발견한다면, 그 때가 바로 여행을 떠나야할 때! 전남 가볼만한 곳, 광양여행은 어떨까요? </div>
                <div style="text-align: justify; ">서천변 양귀비꽃밭부터 구봉산전망대까지 광양시민들의 찐 힐링장소로 떠나는 광양 힐링여행지를 소개합니다.<br></div>
              </div><strong class="ar_title verticalLine">광양 서천변 양귀비밭</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="1" id3="1">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_02.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">광양 서천은 백운산에서 시작된 물줄기가 광양 앞바다에 이르는 하천입니다. 서천에는 서천체육공원, 서천변인라인스케이트장 등 많은 부대시설들이 있는데요.&nbsp;</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="3" id3="2">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_03.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="3" id3="3">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_04.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">그중에서도 6월에만 볼 수 있는 특별한 서천변을 소개합니다! 광양 서천변에는 수십 미터에 이르는 서천을 따라 붉은 양귀비꽃들이 장관을 이루고 있습니다.&nbsp;동천변 고수부지 8만㎡에 이르는 대단위 꽃단지를 확대 조성하여 양귀비꽃과 수레국화, 샤스타데이지, 메밀, 금계국 등 다양한 봄꽃을 심어 매년 화려한 경관을 보여주고 있습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="5" id3="4">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_05.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="5" id3="5">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_06.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">서천변에는 7km 넘는 산책로가 조성되어 있는데요. 광양 가볼만한곳으로 꼽히는 휴식공원으로 곳곳에 설치된 포토존과 휴식공간 등 편의시설을 확충하여 주민들의 사랑을 받는 곳입니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​시원한 강바람이 불어오는 산책로를 따라 걷다 보면 붉은 양귀비를 만날 수 있는데요. 사랑하는 사람과 함께 사진으로 추억을 담아내고 함께 서천을 걸으며 이야기를 나눌 수 있는 힐링공간입니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="7" id3="6">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_07.jpg" alt="" style="max-width: 366px;"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">이맘때, 서천변에서는 붉은 양귀비뿐만 아니라 ‘수레국화’도 만날 수 있습니다. 흔히 떠올리는 노란 국화가 아닌 짙은 푸른색의 수레국화 역시 서천을 따라 예쁘게 피어있어 눈으로 즐기는 것 뿐만 아니라 향긋한 향으로 마음을 정화할 수 있습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="9" id3="7">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_08.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="9" id3="8">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_09.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">곳곳에 설치된 벤치와 파라솔에서 잠시 쉬어갈 수 있고 깔끔하게 잘 관리가 이루어지는 공용 화장실과 주차장도 있습니다. 광양 가볼만한곳, 힐링 공간으로서 부족함이 없는 곳으로 추천드려요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div><span style="background-color: rgb(250, 250, 250);">※ 광양 서천변 양귀비밭</span><br></div>
                    <div>위치 : 전남 광양시 광양읍 칠성리 596​</div>
                    <div>입장료 : 무료</div>
                    <div>운영시간 : 연중무휴 개방, 양귀비꽃 개화시기(5~6월)</div>
                    <div>기타 정보 : 주차장 무료 개방, 무료 캠핑장 운영</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">마로산성</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="1" id3="9">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_10.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">광양 마로산성은 대표적인 백제시대의 산성입니다. 광양 IC에서 3km 거리에 있어 많은 여행객이 찾는 광양 필수코스이면서 광양시민들의 힐링공간으로 자리 잡은 곳입니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="3" id3="10">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_11.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">현재 확인된 성벽의 길이는 550m로 18,945㎡에 이르는 규모의 성입니다. 마로산성은 누구나 가볍게 오를 수 있는데요. 산성으로 가는 길은 여러 갈래로 나뉘어 있으며 산성으로 향하는 모든 길이 소나무 숲으로 구성되어 있습니다. 마로산성에서는 남해고속도로, 광양읍 멀리 순천까지 볼 수 있답니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​마로산성은 발굴 당시 구리거울, 덧무늬병, 청동마, 철제마 등 백제와 통일신라시대의 유물이 다량 출토되었는데요. 사적 제492호로 지정되면서 더욱 가치를 인정받은 곳입니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="5" id3="11">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_12.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="5" id3="12">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_13.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">마로산성 외곽을 따라 산책로가 잘 조성되어있고 특히 ‘마로산 숲길’이라는 등산로를 통해서 마로산 정상까지 갈 수 있어 트레킹 코스로도 좋은 곳입니다. ​잠시나마 도시에서 벗어나 일상에서 벗어나 ‘자연의 소리를 들으며 바람을 즐기기 좋은 곳’이라는 생각이 드는 곳입니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div><span style="background-color: rgb(250, 250, 250);">※ 마로산성</span><br></div>
                    <div>위치 : 전라남도 광양시 광양읍 용강리 산78</div>
                    <div>입장료 : 무료</div>
                    <div>운영시간 : 365일 연중 무휴</div>
                    <div>가는 법 : 자차 이용 시, 광양 마로산성 주차장 / 버스 이용 시, 중마터미널에서 990번 버스 이용</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">동천내하천섬공원</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="1" id3="13">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_14.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">동천내하천섬공원은 인위적으로 조성한 공원이 아닌 백운산으로부터 흘려 내려오는 물줄기를 따라 퇴적물이 쌓여 만들어졌는데요. 자연이 선물해준 아름다운 섬으로 지금은 아름다운 힐링공원으로 탈바꿈했습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="3" id3="14">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_15.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="3" id3="15">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_16.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">광양 가볼만한곳인 동천내하천섬공원은 육룡면 일대를 한눈에 담을 수 있는 전망대, 자연이 살아 숨 쉬는 생태연못 그리고 자연이 만들어 낸 산책로로 구성되어있습니다.&nbsp;가족 단위의 방문객들에게 좋은 자연학습장 겸 여행지로 손색이 없답니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="5" id3="16">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_17.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="5" id3="17">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_18.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="6" id3="18">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_19.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">자연이 만들어내는 시원한 그늘과 피톤치드가 가득한 향기가 마음을 사로잡았고 데크에 누워 바라보는 하늘에서는 바람에 살랑이는 나무와 따스한 햇볕이 비추고 있었습니다.</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify; ">몇 년 전까지는 공원 내 캠핑이 가능했었지만, 안전상의 이유로 현재는 금지되어 있습니다. ​근거리에 캠핑 필수코스로 꼽히는 백운산자연휴양림 내 야영장과 봉강하조 오토캠핑장 등이 운영이 되고 있으니 캠핑을 즐기고자 하는 분들은 참고하시면 좋을 것 같습니다!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div><span style="background-color: rgb(250, 250, 250);">※ 동천내하천섬공원</span><br></div>
                    <div>위치 : 전남 광양시 옥룡면 산남리​​</div>
                    <div>입장료 : 무료</div>
                    <div>운영시간 : 365일 연중무휴</div>
                    <div>가는 법 : 자차 이용 시,&nbsp;<span style="background-color: rgb(250, 250, 250);">동천내하천섬공원</span>&nbsp;주차장 / 버스 이용 시, 광양 시내에서 21-3,21번 버스 이용</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">광양 운암사 &amp; 옥룡사지</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="1" id3="19">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_20.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">광양 운암사는 이곳이 언제 만들어졌는지, 누구로부터 보존되어 왔는지에 대한 정확한 기록은 없는데요. ​옥룡사 도선국사비의 자료를 바탕으로 추측했을 때 1150년 경에 운암사가 있었음을 알 수 있습니다. 현재는 1993년부터 그 자리에 종견스님이 운암사를 지어 거주하고 있습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="3" id3="20">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_21.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="3" id3="21">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_22.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">운암사와 옥룡사지를 연결하는 길인 '옥룡사 동백나무 숲'은 풍수지리설에 따라 부족한 곳은 더하고 더한 곳은 덜하기 위해서 동백나무를 심었다는 이야기가 전해집니다.&nbsp;</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="5" id3="22">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_23.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">동백나무 숲을 따라 걷다 보면 드넓은 옥룡사지를 만날 수 있습니다. 옥룡사지는 통일신라 말기의 뛰어난 고승이자 풍수지리의 대가인 도선국사가 35년 동안 제사를 양성했던 곳으로 현재는 터만 남았습니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​운암사와 옥룡사지는 “쉬어간다”라는 말이 어울리는 곳입니다. 나이를 알 수 없는 높은 나무가 그늘을 만들어주고 시원한 바람이 더위를 식혀주는 곳, 여유롭게 벤치에 앉아있는 것만으로도 마음이 정화되는 듯한 기분을 주는 곳입니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="7" id3="23">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_24.jpg" alt="" style="max-width: 366px;"></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">달리는 차 소리와 누군가의 목소리를 떠나 자연의 소리를 듣고 마음을 치유할 수 있는 곳, 바로 광양 운암사와 옥룡사지가 아닐까요?&nbsp;</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> ※ 광양 운암사 <span style="background-color: rgb(250, 250, 250);">
                        &nbsp;&amp; 옥룡사지 </span></div>
                    <div> 위치 : 전남 광양시 옥룡면 운암길 83</div>
                    <div> 입장료 : 무료</div>
                    <div> 운영시간 : 365일 연중무휴&nbsp;</div>
                    <div> 가는 법 :&nbsp; 광양 운암사/옥룡사지 광양 시내에서 21-3번 버스 이용</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">옥룡 왕금지구 한옥마을</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="1" id3="24">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_25.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">'한옥마을'하면 전주 한옥마을, 북촌 한옥마을만 떠올리셨나요? 광양에도 멋진 ‘한옥마을’이 있답니다!</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​광양 가볼만한곳인 옥룡 왕금지구 한옥마을은&nbsp; 배산임수를 그대로 품은 한옥마을인데요. 앞으로 광양 동천이 흐르고 뒤로는 백운산이 자리하고 있습니다. 농촌 거주 희망 수요가 급증함에 따라 수요자의 요구에 맞춘 전원 주거단지 조성사업을 통해 만들어졌습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="3" id3="25">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_26.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">‘힐링’이라는 단어가 딱! 어울리는 마을로서 주민들에게는 ‘삶의 힐링’을 선물하고 여행객과 관광객들에게는 게스트하우스와 펜션을 통해서 ‘여행 속 힐링’을 선물하는 마을입니다.</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify; ">​주변에는 운암사, 옥룡사지, 백운산 등 많은 관광지가 있고 멀지 않은 거리에 도심이 있어서 광양을 찾는 여행객들이 하루를 보내기 좋습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="5" id3="26">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_27.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">오래된 고택은 아니지만 한옥을 현대스럽게 표현한 한옥마을은 한옥 특유의 아름다움과 현대건물의 편안함 모두를 놓치지 않은 곳입니다.</div>
                <div style="text-align: justify;"></div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div><span style="background-color: rgb(250, 250, 250);">※ 옥룡 왕금지구 한옥마을</span><br></div>
                    <div>위치 : 전라남도 광양시 신재로 827</div>
                    <div><br></div>
                    <div>★주민 거주 지역으로 소란 및 큰 소리 자제★</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">구봉산 전망대</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="6" id2="1" id3="27">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_28.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">해발 473m에 있는 구봉산 전망대는 순천, 여수, 하동, 남해까지 한눈에 볼 수 있으며 정상에는 9.4m의 봉수대가 자리하고 있어 광양 가볼만한곳, 일출, 일몰 명소로 주목받고 있습니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​정상부 하단 주차장까지 차량 진입이 가능하고 구봉산 전망대에는 광양만권을 한눈에 바라볼 수 있는 무료 이용가능한 망원경이 설치되어 있습니다. 야간에는 광양만의 멋진 야경을 볼 수 있는 관광명소로 빼놓을 수 없는 코스이기도 합니다!</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="6" id2="3" id3="28">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_29.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="6" id2="4" id3="29">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_30.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="6" id2="4" id3="30">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_31.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">메탈아트 봉수대는 옛날 봉수대가 있었던 구봉산 정상(해발 473m)에 들어선 현대식 봉수대로 매화꽃이 피어오르는 모습을 쇠로 이미지한 작품입니다. 역사 속에 사라졌던 봉수대를 새롭게 바꿔 봉수대의 의미를 가지면서도 아름다운 빛을 뿜어내는 색다른 조형물로 변신했습니다!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ 구봉산 전망대
                      </span> <br></div>
                    <div> 위치 : 전남 광양시 구봉산전망대길 155</div>
                    <div> 입장료 : 무료</div>
                    <div> 운영시간 : 365일 연중무휴</div>
                    <div> 가는 법 : 버스 이용시,&nbsp; 광양 시내에서 23번 버스 이용</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">중마금호 수변공원 &amp; 무지개 다리</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="7" id2="1" id3="31">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_32.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">중마금호 수변공원의 무지개 다리는 길이는 300m 폭은 4m의 규모로 이순신대교 해변관광 테마거리조성사업 일환으로 설계되었습니다. 매일 5회, 30분 간격으로 조명쇼가 펼쳐지는데요. 20시부터 30분 간격으로 22시까지 운영되고 있습니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​특히 무지개 다리에서 바라보는 이순신대교의 모습은 또 다른 매력을 보여주고 있어 구봉산 전망대와는 다른 각도로 이순신 대교를 볼 수 있습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="7" id2="3" id3="32">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_33.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="7" id2="3" id3="33">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_34.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="7" id2="4" id3="34">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog03/recommend_blog03_35.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">무지개를 포함해서 중마금호 수변공원을 산책하는데 30분에서 1시간 정도 소요되는 코스로 여행을 마무리하는 날, 광양에서의 마지막 추억을 즐길 수 있습니다!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div><span style="background-color: rgb(250, 250, 250);">※ 중마금호 수변공원 &amp; 무지개 다리</span><br></div>
                    <div>위치 : 전남 광양시 금호동&nbsp;</div>
                    <div>운영시간 : 난간조명 19:10~01:00, 조명쇼(5회) 20:00~22:00, 30분 간격</div>
                    <div>가는 법 : 버스 이용 시,&nbsp; 광양 시내에서 8,15,54,9,23번 이용</div>
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

</body>

</html>
