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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">32</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">31</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">3,369</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>속세를 벗어나 즐기는 남도 기행</h2>
            <div class="area_address">
              <span class="address">전남 </span>
              <span id="modi_date">수정일 : 2020.06.01</span>
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
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_01.png" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">유난히 답답한 요즘엔 떠나고 싶은 마음이 차오를 수밖에 없죠 . 그런 분들을 위해 랜선여행을 준비했습니다! 속세를 벗어나 자유를 즐길 수 있는 1박 2일 남도 여행을 소개합니다.&nbsp;</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify;">​고즈넉한 산책로, 상쾌한 풀향기, 시원한 파도 소리를 상상해 보세요. 답답했던 마음이 탁 트이는 느낌이 들 거예요!</div>
              </div><strong class="ar_title verticalLine">강진 다산초당</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="1" id3="1">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_02.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="2" id3="2">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_03.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="2" id3="3">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_04.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> '남도 답사 일번지'로 알려진 곳! 전라남도 강진으로 떠나볼까요? 조선 후기를 대표하는 실학자, 다산 정약용의 유배지로 알려진 다산초당이 첫 번째 목적지입니다. 정약용의 18년 유배 기간 중 약 10여 년을 머물렀던 거처가 바로 이곳인데요. 그는 이곳에서 강진 앞바다의 풍경을 바라보며 시간을 보냈다고 합니다. 또한 그의 대표 저서인 목민심서를 저술하는 등 조선 후기의 실학을 집대성하는 데 노력을 기울이기도 했답니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="4" id3="4">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_05.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="4" id3="5">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_06.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="5" id3="6">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_07.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 정약용은 이곳에서 머무는 동안, 근처 백련사의 주지인 혜장스님과 차를 마시며 담소를
                  나누고, 산책하는 걸 즐겼다고 전해집니다. 지금도 그 산책로가 남아 있는데요. 다산초당에서 백련사까지 이어지는 산책로를 거닐어보지 않을 수 없겠죠? 동백나무와 대나무가 어우러진 숲은 딴 세상에 온 듯한 분위기를 자아냅니다. 눈 앞에 펼쳐지는 강진 앞바다의 풍경을 감상하며 천일각과 해월루에서 한껏 여유를 부려도 좋습니다!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치: 전남 강진군 도암면 다산초당길 68 (주차장)</div>
                    <div>운영시간: 09:00~18:00</div>
                    <div>관람요금: 무료</div>
                    <div>백련사를 통해서도 진입 가능 (전남 강진군 도암면 백련사길 145)</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">강진 백운동원림(백운동정원)</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="1" id3="7">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_08.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="2" id3="8">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_09.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="2" id3="9">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_10.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 다산초당이 숲속에 숨어 있는 암자라면, 백운동원림은 조선 후기의 선비 이담로가 직접 꾸민 정원입니다. 담양의 소쇄원, 완도 보길도의 부용동과 함께 호남 3대 별서원림으로 꼽히는 곳인데요. ​월출산을 배경으로 두고, 자연의 모습을 최대한 보전한 채 만들어 낸 모습이 지금까지도 잘 보존된 것이 특징입니다. 정약용이 선정한 백운동원림의 12경을 하나씩 찾아보는 재미도 쏠쏠하답니다!</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="4" id3="10">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_11.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="5" id3="11">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_12.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="5" id3="12">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_13.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 백운동원림의 산책로를 따라가면 드넓은 차밭, '오설록강진다원'이 등장합니다.
                  33헥타르(ha)에 달하는 규모를 자랑하는 이곳의 풍경은 무척 이색적입니다. 언덕 너머로 솟은 월출산의 기암이 초록빛 차밭과 어우러지며 그야말로 절경을 연출합니다.&nbsp;</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <p>위치: 전남 강진군 성전면 월하안운길 100-63</p>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">해남 산채 요리와 대흥사</strong>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="1" id3="13">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_14.jpg" alt=""></button><strong class="tit"></strong></div>
                <div><button type="button" id="3" id2="1" id3="14">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_15.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">해남은 땅끝마을, 달마산, 우수영관광지 등등 여러 볼거리와 즐길 거리가 가득한 지역입니다. 산과 바다가 만나는 해남에서는 자연산 버섯이나 산채 등을 이용한 한식은 물론, 남도의 대표 먹거리를 한데 모아 상을 차리는 남도한정식을 맛볼 수도 있습니다. ​해남의 쌀과 청정 지하수, 직접 빚은 누룩으로 만드는 무감미료 프리미엄 막걸리로 꾸준히 사랑받는
                  '해창막걸리'의 주조장 역시 이곳에 있습니다.</div>
              </div>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="3" id3="15">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_16.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="4" id3="16">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_17.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="4" id3="17">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_18.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 식사를 즐겼다면 두륜산 도립공원 기슭에 자리한 대흥사 경내를 거닐어보세요. 유네스코
                  세계유산 '산사, 한국의 산지승원'으로 지정된 사찰 중 한 곳인데요. ​입구부터 이어지는 숲길은 대둔사계곡이 흐르는 '물소리길'과 동백나무로 가득한 '동백숲길'로 나뉘어 뻗어갑니다. 자연을 중시해 독특한 가람 배치(사찰 건물의 배치)를 보여주는 대흥사의 사찰 경내도, 부처가 누워 있는 모습처럼 보인다는 두륜산의 능선도 감상해보세요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 전라남도 해남군 삼산면 대흥사길 400</div>
                    <div>전화번호 : 대흥사 종무소 061-534-5502</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">완도 청해포구촬영장</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="1" id3="18">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_19.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="2" id3="19">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_20.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="2" id3="20">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_21.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 이번에는 섬으로 떠나봅니다. 연륙교가 있어 쉽게 오갈 수 있는 섬, 완도는 청정 바다와 난대림으로 우거진 숲이 매력적인 곳입니다. 많은 관광 명소가 있지만, 이번에는 바다를 감상할 수 있는 이색 명소 두 곳을 차례로 소개해드리겠습니다.&nbsp;</div>
                <div style="text-align: justify;"> <br></div>
                <div style="text-align: justify;"> 먼저 청해포구촬영장! 드라마 '해신' 촬영 당시 촬영 세트장으로 건립된
                  공간입니다. 이후 다양한 사극 드라마, 영화 등의 배경으로도 자주 등장하며 완도의 명소가 되었습니다.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="4" id3="21">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_22.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="4" id3="22">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_23.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify; ">전통 가옥과 저잣거리 등을 구현한 풍경과 완도의 아름다운 바다가 어우러지는 모습이 멋진 곳입니다.&nbsp;<span style="text-align: justify;">곳곳에 다양한 포토존, 체험 도구 등이 설치되어 있어 재미있는 경험을 할 수도 있습니다.</span></div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치: 전남 완도군 완도읍 청해진서로 1161-8</div>
                    <div>관람시간: 하절기 07:30~19:30 / 동절기 08:00~18:00</div>
                    <div>관람요금: 어른 5,000원 / 경로 4,000원 / 청소년 3,000원 / 어린이 2,000원</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">완도 정도리 구계등</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="1" id3="23">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_24.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="2" id3="24">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_25.jpg" alt=""></button><strong class="tit"></strong></div>
                <div><button type="button" id="5" id2="2" id3="25">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_26.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 멀지 않은 곳에 있는 구계등은 우리나라 명승 제3호로 지정된 해변입니다. 몽돌이 가득한
                  이 해변은 그야말로 힐링 그 자체라고도 할 수 있는 곳입니다. 일정 간격으로 파도가 드나들 때마다 수많은 몽돌이 그에 맞춰 앞뒤로 구르는데요.</div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="4" id3="26">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_27.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="4" id3="27">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog05/recommend_blog05_28.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">이곳의 갯돌들은 몇 만 년 동안 파도에 씻기고 깎인 탓에 표면이 아주 매끄러울 뿐만 아니라 모난 데 없이 동글동글합니다. 파도가 밀려왔다 빠질 때마다 갯돌들이 서로 몸을 문지르면서 자그르락 자그르락 소리를 연신 쏟아냅니다. 해변 뒤편에는 갖가지의 상록활엽수들로 울울창창한 숲이 시원한 그늘을 드리우고 있어 초여름의 따가운 햇볕을 피하기에도 좋은데요.
                </div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify;">누군가 해변에 의자를 가져다 둔 덕분에, 앉아서 바다를 감상할 수 있습니다. 잔잔하게 펼쳐진 바다에 울려 퍼지는 몽돌 소리를 들으며, 완도의 바다를 한껏 즐겨보세요.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <p>위치: 전남 완도군 완도읍 정도1길 67-2</p>
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
