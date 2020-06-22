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
  <link rel="stylesheet" href="resources/home/assets/css/popular.css">

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

<body style="overflow: auto;">
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
      <div class="row">
        <h2 class="ir_so">Popular</h2>
        <div id="contents">
          <div class="tit_cont tit_ms">
            <!-- 각 타이틀 변경 클래스 tit_ms 명소 -->
            <div class="tit_pos">
              <h2><span class="ico">All</span>여행지</h2>
            </div>
          </div>
          <div id="contentAppend">
            <div class="wrap_contView">
              <h3 class="tit_atc">T-map 추천 6월 인기 여행지 Top 11</h3> <span class="date">대한민국구석구석은 T-map빅데이터를 활용한 월별 방문율 증가 여행지를 소개합니다.</span>
              <div class="listBn_msPc m_none" id="msmain0">
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_01.png" alt="담양 메타세쿼이아길">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">담양 메타세쿼이아길</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_02.png" alt="남양주 물의정원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">남양주 물의정원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_03.png" alt="예당호 출렁다리">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">예당호 출렁다리</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_04.png" alt="롯데월드">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">롯데월드</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_05.png" alt="매미성">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">매미성</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_06.png" alt="아쿠아플라넷 일산">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">아쿠아플라넷 일산</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_07.png" alt="서울식물원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">서울식물원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_08.bmp" alt="강화씨사이드리조트 루지">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">강화씨사이드리조트 루지</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_09.png" alt="여수 해상케이블카">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">여수 해상케이블카</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_10.png" alt="부산 송도해상케이블카">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">부산 송도해상케이블카</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_11.png" alt="대부도 바다향기 수목원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">대부도 바다향기 수목원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li class="list_more">
                    <a href="#">더보기</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">SNS 인기 여행지 Top 11</h3> <span class="date">대한민국구석구석 인스타그램 추천 여행지를 소개합니다.</span>
              <div class="listBn_msPc m_none" id="msmain1">
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_12.png" alt="아홉산숲">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">아홉산숲</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_13.png" alt="안성팜랜드">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">안성팜랜드</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_14.png" alt="완도 정도리 구계등">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">완도 정도리 구계등</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_15.png" alt="악어봉">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">악어봉</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_16.png" alt="아부오름">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">아부오름</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_17.png" alt="새천년해안도로">
                    <a href="/detail/ms_detail.do?cotid=52561673-e059-499d-930d-a5698f31a7d0&amp;big_category=A02&amp;mid_category=A0203&amp;big_area=32" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">새천년해안도로</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_18.png" alt="가천 다랭이마을">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">가천 다랭이마을</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_19.png" alt="구룡포 일본인 가옥거리">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">구룡포 일본인 가옥거리</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_20.png" alt="포천 한탄강 하늘다리">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">포천 한탄강 하늘다리</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_21.png" alt="매물도">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">매물도</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_22.png" alt="방화수류정(동북각루)">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">방화수류정(동북각루)</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li class="list_more">
                    <a href="#">더보기</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">별이 빛나는 밤~♪</h3>
              <span class="date">밤이 더 빛나는 야간 관광지를 소개합니다. </span>
              <div class="listBn_msPc m_none" id="msmain2">
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_23.png" alt="동탄호수공원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">동탄호수공원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_24.png" alt="추암 출렁다리">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">추암 출렁다리</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_25.png" alt="세빛섬">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">세빛섬</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_26.png" alt="대동하늘공원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">대동하늘공원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_27.png" alt="춤추는 바다분수">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">춤추는 바다분수</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_28.png" alt="마린시티">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">마린시티</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_29.png" alt="통영밤바다 야경투어">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">통영밤바다 야경투어</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_30.png" alt="플라타너스 별빛 달빛 길">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">플라타너스 별빛 달빛 길</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_31.png" alt="저도 콰이강의 다리 스카이워크">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">저도 콰이강의 다리 스카이워크</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_32.png" alt="화랑대 철도공원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">화랑대 철도공원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_33.png" alt="동래읍성지">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">동래읍성지</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li class="list_more">
                    <a href="#">더보기</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">한국관광 100선 경북편</h3>
              <span class="date">2019-2020 한국관광 100선에 선정된 경북권 관광지를 소개합니다.</span>
              <div class="listBn_msPc m_none" id="msmain3">
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_34.png" alt="독도">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">독도</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_35.png" alt="울릉도">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">울릉도</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_36.png" alt="경주 불국사 [유네스코 세계문화유산]">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">경주 불국사 [유네스코 세계문화유산]</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_37.png" alt="경주 석굴암 [유네스코 세계문화유산]">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">경주 석굴암 [유네스코 세계문화유산]</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_38.png" alt="경주 대릉원 일원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">경주 대릉원 일원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_39.png" alt="주왕산국립공원">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">주왕산국립공원</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_40.png" alt="안동 하회마을 [유네스코 세계문화유산]">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">안동 하회마을 [유네스코 세계문화유산]</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_41.png" alt="포항운하">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">포항운하</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_42.png" alt="영덕대게마을">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">영덕대게마을</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_43.jpg" alt="부석사[유네스코 세계문화유산]">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">부석사[유네스코 세계문화유산]</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_44.png" alt="울진 금강소나무 숲길">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">울진 금강소나무 숲길</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li class="list_more">
                    <a href="#">더보기</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="wrap_contView section_line">
              <h3 class="tit_atc">가족과 함께하는 캠핑</h3>
              <span class="date">가족과 함께 할 수 있는 조용한 숲속 캠핑장을 소개합니다.</span>
              <div class="listBn_msPc m_none" id="msmain4">
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_45.png" alt="무릉계곡 힐링캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">무릉계곡 힐링캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_46.png" alt="덕산국민여가캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">덕산국민여가캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_47.png" alt="늘푸른체험학교 캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">늘푸른체험학교 캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_48.png" alt="트리독스 반려견 전용 캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">트리독스 반려견 전용 캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_49.png" alt="비토국민여가캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">비토국민여가캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_50.png" alt="주은캠핑장자연휴양림">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">주은캠핑장자연휴양림</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
                <ul class="clfix">
                  <li>
                    <img src="resources/home/assets/img/popular/popular_51.png" alt="별빛캠프 캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">별빛캠프 캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_52.png" alt="섬지골 캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">섬지골 캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_53.png" alt="충주반딧불오토캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">충주반딧불오토캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_54.png" alt="한스캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">한스캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <img src="resources/home/assets/img/popular/popular_55.png" alt="강동그린웨이 가족캠핑장">
                    <a href="#" class="area_dimTxt">
                      <div class="table_wrap">
                        <div class="table">
                          <div class="cell">
                            <strong class="tit_photo">강동그린웨이 가족캠핑장</strong>
                          </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li class="list_more">
                    <a href="#">더보기</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
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
