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
              <button type="button" class="btn_good" onclick="setLike();"><span class="ico">좋아요</span><span class="num" id="conLike">35</span></button>
              <button type="button" class="btn_sharing" onclick="openShare();"><span class="ico">공유하기</span><span class="num" id="conShare">34</span></button>
              <span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">4,521</span></span>
            </div>

            <div class="area_tag">
              <span class="name3"><a href="#"><span class="ico">Now</span>추천</a></span>
            </div>
            <h2>일곱 가지 컬러풀한 무지개로 보는 대한민국구석구석!</h2>
            <div class="area_address">
              <span class="address">전국 </span>
              <span id="modi_date">수정일 : 2020.05.21</span>
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
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_01.png" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">자연이 그린 것 만큼 아름다운 색이 또 있을까요? 대한민국 구석구석의 매력적인 색들만 모아 왔습니다.</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify;">빨강부터 보라색까지! </div>
                <div style="text-align: justify;">무지개색 컬러풀한 색감이 돋보이는 대한민국의 7곳으로 랜선여행을 떠나볼까요?<br></div>
              </div><strong class="ar_title verticalLine">빨강 "남양주 물의정원"</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="1" id2="1" id3="1">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_02.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="1" id2="2" id3="2">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_03.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="1" id2="2" id3="3">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_04.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 운길산역 건너편 북한강 변에 자리한 물의정원은
                  아름다운 습지 공원입니다. 자전거 도로를 비롯해 물향기길, 물마음길, 물빛길 등 다양한 산책로와 전망 데크가 조성되어 있습니다. 산책길과 자전거도로가 완전히 분리되어 있어 아이들과 함께 걷기도 좋은 곳이랍니다. 6월에는 물의정원 가득 핀 빨간 양귀비꽃을 즐길 수 있습니다!&nbsp;</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : ​경기도 남양주시 조안면 북한강로 398</div>
                    <div>문의 : 031-590-2783</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">주황 "순천 순천만습지"</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="2" id2="1" id3="4">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_05.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="2" id2="2" id3="5">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_06.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="2" id2="2" id3="6">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_07.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 세계 5대 연안 습지 가운데 하나인 순천만습지는 거대한 갈대밭과 광활한 갯벌로 이루어져 있는 생태의 보고! 유명 소설 [무진기행]의 배경이 된 곳이기도 한데요.
                  자연생태관, 갈대밭 사이의 데크 탐방로, 용두산 전망대 등의 기타 편의시설도 잘 정비되어 있습니다.</div>
                <div style="text-align: justify;"> <br></div>
                <div style="text-align: justify;"> ​순천만습지의 전경을 한눈에 보고 싶다면 용두산 전망대를 추천드릴게요! 특히 이곳에서 보는 순천만습지의 주황빛 노을은 일품 노을로 손꼽힙니다. 시간의 여유가 된다면 꼭 일몰까지 감상하는 시간을 가져보세요!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 전라남도 순천시 순천만길 513-25</div>
                    <div>문의 : 061-749-6052</div>
                    <div>운영시간 : 08:00 ~ 일몰 시까지</div>
                    <div>입장료 : 성인 8000원, 청소년 및 중고등학생 6000원, 어린이 4000원</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">노랑 "안성 팜랜드"</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="3" id2="1" id3="7">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_08.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="3" id2="2" id3="8">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_09.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="3" id2="2" id3="9">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_10.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 안성 팜랜드는 목장 생활을 체험해볼 수 있는 곳인데요. 소, 양, 거위, 돼지, 당나귀 등 25종의 가축을 만져보고 먹이를
                  줄 수 있어 아이들과 함께 하기 안성맞춤입니다. ​다양한 체험 프로그램(승마, 이색자전거, 활쏘기 등)은 물론 탑승 놀이시설도 마련되어 있습니다.</div>
                <div style="text-align: justify;"> <br></div>
                <div style="text-align: justify;"> ​안성 팜랜드의 사진 명소는 바로 노란 유채꽃! 4월 중순부터 5월 초까지, 봄의 팜랜드에는 유채꽃 향기가 가득하답니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 경기도 안성시 공도읍 대신두길 28</div>
                    <div>문의 : 031-8053-7979</div>
                    <div>운영시간 : (02월~11월) 10:00~18:00, (12월~01월) 10:00~17:00</div>
                    <div>입장료 : 프로그램마다 다름(홈페이지 참조)</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">초록 "고창 학원농장 청보리밭"</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="4" id2="1" id3="10">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_11.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="4" id2="2" id3="11">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_12.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="4" id2="2" id3="12">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_13.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">고창의 청보리밭으로 유명한 학원농장은 겨울부터 봄까지는 청보리와 유채꽃, 여름과 가을에는 해바라기와 메밀밭을 일구는 곳입니다. ​넓고 완만한 구릉지에 끝없이 펼쳐진 청보리밭이 아름답다고 입소문이 나면서 영화, 드라마의 단골 촬영지가 되었습니다.</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify;">4월 중순부터 5월 중순까지 초록빛 바다를 이루는 청보리를 볼 수 있는데요. 청보리밭 사이로 구불구불 이어진 산책로와 원두막이 조성되어있습니다. 언덕 위에 있는 전망대에서는 마음까지 시원해지는 보리밭과 주변 풍광을 한눈에 볼 수 있습니다!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div>위치 : 전라북도 고창군 공음면 학원농장길 158-6</div>
                    <div>문의 : 063-564-9897​</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">파랑 "강릉 정동심곡 바다부채길"</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="5" id2="1" id3="13">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_14.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="5" id2="2" id3="14">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_15.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="5" id2="2" id3="15">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_16.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 정동심곡 바다부채길은 군부대의
                  정찰용으로만 이용해 사람의 손길이 거의 닿지 않았던 길인데요. 지난 2018년 일반인들에게 처음 공개되었습니다.</div>
                <div style="text-align: justify;"> <br></div>
                <div style="text-align: justify;"> 해안 산책로를 중심으로 한쪽에는 푸른 동해와 기암괴석 다른 한쪽에는 해안절벽이 펼쳐져 있는데요. 2,300만 년 전 지각변동으로 생긴 국내 유일의 해안단구도 볼 수 있습니다! 2.86km의 탐방로로 둘러보는데 약 한 시간 정도 소요됩니다.</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <div style="text-align: left;">위치 : 심곡매표소 - 강원도 강릉시 강동면 심곡리 114-3, 정동매표소 - 강원도 강릉시 강동면 헌화로 950-39</div>
                    <div style="text-align: left;">문의 : 033-641-9445, 033-641-9444</div>
                    <div style="text-align: left;">운영시간 : 하절기(04월~10월) 09:00 ~ 17:30, 동절기(11월~03월) 09:00 ~ 16:30</div>
                    <div style="text-align: left;">입장료 : 일반 3000원, 청소년 및 군인 2500원, 어린이 2000원</div>
                    <div style="text-align: left;"><br></div>
                    <div style="text-align: left;">*현재 공사 등의 이유로 주말만 개방</div>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">남색 "인천 인천대교"</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="6" id2="1" id3="16">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_17.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="6" id2="2" id3="17">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_18.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="6" id2="2" id3="18">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_19.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;"> 인천대교는 왕복 6차선, 21.38km의 길이로
                  국내 최장의 길이를 자랑하는 다리인데요. 인천의 손꼽히는 드라이브 코스로 바다를 가르는 청량감, 차를 춤추게 하는 거친 바람, 거대한 다리의 주탑(현수교에서 주요 인장재인 주케이블의 최고점을 지지하는 탑)이 인상적인 곳입니다.</div>
                <div style="text-align: justify;"> <br></div>
                <div style="text-align: justify;"> 인천대교기념관 전망대, 청량산 전망대, 영종도 등 인천 곳곳에서 아름다운 인천대교의 야경을 감상할 수 있습니다!</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <p>위치 : 인천광역시 중구 인천대교고속도로 3</p>
                  </div>
                </div>
              </div><strong class="ar_title verticalLine">보라 "태안 운여해변"</strong>
              <div class="img_typeBox typeFix clfix">
                <div><button type="button" id="7" id2="1" id3="19">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_20.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="img_typeBox type2 clfix">
                <div><button type="button" id="7" id2="2" id3="20">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_21.jpg" alt=""></button><strong class="tit"></strong>
                </div>
                <div><button type="button" id="7" id2="2" id3="21">
                  <img src="resources/home/assets/img/recommend_blog/recommend_blog06/recommend_blog06_22.jpg" alt=""></button><strong class="tit"></strong>
                </div>
              </div>
              <div class="txt_p">
                <div style="text-align: justify;">만리포, 몽산포, 꽃지 등 유명세를 떨치는 많은 태안의 해변 중에서도 운여해변은 으뜸 일몰명소로 꼽힙니다. 방파제 남쪽 끝 가지런히 심어진 소나무가 아름답기로 유명한데요. 밀물 때면 방파제 너머로 바닷물이 들어와 자그마한 호수를 만드는데 여기에 비치는 솔숲이 장관을 이룹니다.</div>
                <div style="text-align: justify;"><br></div>
                <div style="text-align: justify;">​맑은 날, 해 질 무렵 밀물이 든다면 보랏빛으로 물든 운여해변을 놓치지 마세요!&nbsp;</div>
              </div>
              <div class="infoBxPattern">
                <div class="lrPt">
                  <div class="txt_p">
                    <p>위치 : 충남 태안군 고남면 장곡리</p>
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
