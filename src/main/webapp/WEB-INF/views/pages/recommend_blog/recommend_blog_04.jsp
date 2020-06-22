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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">30</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">40</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">3,055</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>남들 다~ 가는 포항 말고, 산과 바다를 100% 즐길 수 있는 포항 가볼만한곳</h2>
            <div class="area_address">
              <span class="address">경북 포항시</span>
              <span id="modi_date">수정일 : 2020.06.02</span>
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
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_01.png" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: center;">★ 추천여행코스 : 호미곶 광장 → 호미반도 해안 둘레길 2코스 ‘선바우길’ → 오어사 → 장기읍성 → 보릿돌교</div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">6월의 시작, 벌써 여름이 시작된 것 같은 날씨가 이어지고 있는데요. 본격적인 더위가 기승을 부리기 전! 산과 바다, 모두 100% 즐길 수 있는 곳을 찾고 있다면? 여기 웃음꽃을 퐝퐝 피게 해 줄 여행지, 포항이 여러분을 기다리고 있습니다!</div>
                <div style="text-align: justify; "><br></div>
              </div><strong class="ar_title verticalLine">호미곶 광장</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="1" id3="1">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_02.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">우리나라 최동단에 자리한 호미곶은 명실상부 대표적인 포항 일출 명소! 일출이 가장 빠른 것은 물론, 동해에서 가장 아름다운 일출로도 손색이 없습니다. 호미곶이라는 이름의 유래를 아시나요? 한반도를 호랑이로 보았을 때, 호랑이의 꼬리에 해당한다고 하여 호미곶이라는 이름이 붙여졌습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="3" id3="2">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_03.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="4" id3="3">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_04.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="4" id3="4">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_05.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">이곳이 유독 인기를 끌었던 건 독특한 조형물 덕분인데요. 상생의 손이라고 불리는 거대한 손 모양의 청동 조형물이 그 주인공입니다. 은은하게 빛을 내는 상생의 손과 수평선 위로 떠 오르는 일출의 앙상블은 심장을 두근거리게 만드는데 한몫합니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="6" id3="5">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_06.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">상생의 손 맞은편에는 '상생의 왼손'이 존재합니다. 서로 도우며 살자는 의미에서 함께 지어진 것이라고 하니 놓치지 말고 함께 구경해보세요~ 포항 가볼만한곳으로 추천!</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="8" id3="6">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_07.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="8" id3="7">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_08.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">광장 뒤편으로는 새천년기념관이 자리하고 있습니다. 포항의 다양한 역사를 둘러볼 수 있답니다. 하이라이트는 기념관 옥상에 자리한 전망대! 전망대에 올라 호미곶 일대를 한눈에 내려다보시면 속이 뻥 뚫린 기분을 느껴볼 수 있습니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ 호미곶 광장 </a>
                      </span> <br></div>
                    <div> 위치 : 경북 포항시 남구 호미곶면 대보리</div>
                    <div> 입장료 : 새천년기념관 대인 3,000원 / 청소년 1,000원 / 어린이 500원</div>
                    <div> 운영시간 : 새천년기념관 09:00~17:00</div>
                    <div> 기타 정보 : 주차장 무료 이용 가능</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">호미반도 해안 둘레길 2코스 ‘선바우길’</strong>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="1" id3="8">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_09.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="1" id3="9">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_10.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">호미반도 해안 둘레길은 청림초등학교부터 시작해 영일만을 따라 호미곶까지 이어진 해안 둘레길입니다. 바다를 가장 가까이서 느끼며 걸을 수 있는 해안 둘레길로 1코스 연오랑세오녀길, 2코스&nbsp;<span style="text-align: left; background-color: rgb(250, 250, 250);">선바우길</span>, 3코스
                  구름소길, 4코스 호미길로 등 총 25km의 길이로 이루어져 있습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="3" id3="10">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_11.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="4" id3="11">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_12.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="4" id3="12">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_13.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">걷기 여행을 좋아한다면 날을 잡고 해안 둘레길을 모두 걸어보는 것을 추천해 드릴게요! 선바우길은 바다 위로 설계된 데크길을 따라 걸을 수 있는 편안한 코스로 바다를 걷는 듯한 독특한 기분을 만끽할 수 있습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="6" id3="13">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_14.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="7" id3="14">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_15.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="7" id3="15">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_16.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">선바우길의 또 다른 특징이라면 신랑 각시바위, 미인 바위, 소원을 빌면 부자가 된다는 힌디기 바위 등 다양한 괴석을 발견하는 재미가 있다는 점입니다.&nbsp;두 눈 크게 뜨고 신기한 괴석을 찾아보시면 좋을 것 같습니다!</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="9" id3="16">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_17.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="10" id3="17">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_18.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="10" id3="18">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_19.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">​데크길 구간의 둘레길을 벗어나면 마지막 구간으로 홍환 간이 해수욕장이 등장하는데요. 파도에 씻겨나가는 몽돌의 경쾌한 소리가 걷는 재미를 더해주기 때문에 이곳에선 '소리'에 집중해 걸어보면 좋습니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​주의해야 할 점! 바닷길 구간이라 그늘이 없기 때문에 따가운 햇볕에 맞설 자외선 차단제를 꼭 준비해주세요.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> ※ 호미반도 해안 둘레길 2코스 ‘선바우길’ <br></div>
                    <div> 위치 : 경북 포항시 남구 동해면 입암리 359</div>
                    <div> 기타 정보 : 2코스 선바우길, 연오랑세오녀 테마공원~입암리 선바우~하선대~홍환 간이 해수욕장(6.5km)</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">오어사</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="1" id3="19">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_20.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">오어사는 신라 시대 때 창건된 천년고찰로 수려한 자연경관을 보며 고즈넉함을 느끼기 좋은 장소입니다. 오어사라는 이름에는 재밌는 전설이 얽혀있습니다. 불력을 시험하기 위해 원효대사와 혜공선사는 개천에서 죽은 물고기를 살려내는 내기를 벌였고 이 중 한 마리의 물고기가 살아나자 서로 자신이 살린 고기라 하여 오어사라는 이름을 가지게 되었습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="3" id3="20">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_21.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">오어사 초입에는 오어지라는 커다란 호수가 자리하고 있습니다. 그곳에 원효교라 불리는 거대한 출렁다리를 만나볼 수 있는데요. 이 출렁다리를 건너면 오어지 둘레길로 이어집니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="5" id3="21">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_22.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="5" id3="22">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_23.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">오어지 둘레길은 약 7.7km의 숲길로 호숫가를 따라 정비해둔 길로&nbsp; 모두 걷는 게 부담스럽다면 일부만 걸어도 충분히 매력을 느껴볼 수 있습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="7" id3="23">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_24.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="8" id3="24">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_25.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="8" id3="25">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_26.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">오어사에는 경북문화재 제88호인 대웅전, 국가보물 제1280호인 범종, 원효대사 삿갓 등 그 외 다수의 유물을 보관하고 있습니다. ​오어사의 차분하게 울려 퍼지는 종소리를 따라 경내를 천천히 걷다 보면 절로 마음이 맑아지는 느낌을 받을 수 있습니다.</div>
                <div style="text-align: justify; "><br></div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="10" id3="26">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_27.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="11" id3="27">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_28.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="11" id3="28">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_29.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">부속 암자인 지장암도 빼놓을 수 없습니다. 가파른 산길을 따라 약 200m 오르면 절벽 위에 세워진 아찔한 지장암의 모습을 볼 수 있는데요. 오어사 가장 높은 곳에서 내려다보는 포항 가볼만한 곳 운제산의 호젓한 풍경도 꼭 담아가시길 바라요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="text-align: justify; background-color: rgb(250, 250, 250);"> ※오어사 </span> <br></div>
                    <div> 위치 : 경북 포항시 남구 오천읍 항사리 산28-14</div>
                    <div> 기타 정보 : 주차장 무료 이용 가능</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">장기읍성</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="1" id3="29">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_30.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="2" id3="30">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_31.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="2" id3="31">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_32.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">동악산 동쪽에 자리한 장기읍성은 일찍이 동해안을 지키는 다른 읍성과 함께 장기 지방의 지리적인 형국으로 보아 중요한 군사기지로서 그 특성을 보이고 있는데요. 또한 여러 기록을 살펴보았을 때 장기읍성은 고려시대 이전의 고성이었음을 짐작게 합니다.</div>
                <div style="text-align: justify; "><br></div>
                <div style="text-align: justify; ">​일제강점기 당시 일본인들에 의해 읍성 내 모든 관아가 파괴되었고 성벽이 허물어졌지만, 현재 마을 주민들에 의해 장기향교가 복원되어 자리를 지키고 있습니다. 이맘때쯤 장기읍성은 초록빛으로 둘러싸여 운치를 더하고 있었습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="4" id3="32">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_33.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="4" id3="33">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_34.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">포항 가볼만한곳인 장기읍성 둘레길은 성곽을 따라 약 2.5km 간 이어지는 구간으로 도보로 넉넉히 1시간 정도면 한 바퀴를 둘러볼 수 있습니다. 성벽 위에선 속이 뻥 뚫리는 장기면의 풍경과 멀리 동해의 모습을 내려다볼 수 있습니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ 장기읍성 </span>
                      <br></div>
                    <div> 위치 : 경북 포항시 남구 장기면 읍내리 127-2</div>
                    <div> 기타 정보 : 주차장 무료 이용 가능</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">보릿돌교</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="1" id3="34">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_35.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">포항의 숨은 가볼만한 곳을 찾고자 한다면 단연코 보릿돌교를 추천합니다! 동해를 가로지르는 보릿돌교는 관광 활성화를 위해 새롭게 문을 연 곳으로 장길리 복합낚시공원 내에 자리하고 있습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="3" id3="35">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_36.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">데크길을 따라 천천히 거닐다 보면 위용을 뽐내는 보릿돌교가 등장합니다. 200m의 달하는 길이로 바다 한가운데로 걸어 들어가는 듯한 기분을 느낄 수 있습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="5" id3="36">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_37.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="5" id3="37">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_38.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">보릿돌교 맞은 편에는 전망대가 자리하고 있습니다. 전망대에서 내려다보는 보릿돌교의 모습은 더욱더 장관을 이루는데요. 햇살에 반짝 빛나는 바다와 함께 어우러지는 풍경에 눈이 휘둥그레집니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="7" id3="38">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_39.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="7" id3="39">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_40.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">보릿돌교 아래쪽으로는 암석들로 이루어져 있습니다. 바다와 더 가까이 맞닿을 수 있음은 물론, 감성적인 사진도 남겨볼 수 있답니다. 다만, 암석이 미끄러울 수 있으니 조심하세요!</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="9" id3="40">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_41.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="9" id3="41">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog04/recommend_blog04_42.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div> <span style="background-color: rgb(250, 250, 250);"> ※ 보릿돌교 </span> <br></div>
                    <div> 위치 : 경북 포항시 남구 구룡포읍 동해안로 4736-30</div>
                    <div> 기타 정보 : 기상 악화 시, 통제될 수 있음.</div>
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
