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
  <link rel="stylesheet" href="resources/home/assets/css/covid.css">

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
        <h2 class="ir_so">Covid</h2>
        <div id="contents">

          <div class="tit_cont">
            <div class="area_tag">
              <span class="name6" onclick="#"><span class="ico">News 뉴스</span>소식</span><!-- 1224 텍스트 수정 -->
            </div>
            <h2>코로나바이러스감염증-19 여행정보 변동사항</h2>
            <div class="area_titDate">
              <span>2020-01-21</span>
            </div>
          </div>

          <div class="wrap_contView clfix">

            <!-- 내용 -->
            <div class="view_board1">
              <div class="btn_fileDown" style="display: none;">
              </div>
              <div class="view_data">
                <style>
                  .theme_contents {
                    width: 100%;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                  }

                  .btn_area {
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                    padding-bottom: 50px;
                  }

                  .con_btn {
                    width: 50%;
                    border-top: 1px solid #333;
                    border-left: 1px solid #333;
                    border-right: 1px solid #333;
                    border-top-left-radius: 10px;
                    border-top-right-radius: 10px;
                    float: left;
                    text-align: center;
                    height: 50px;
                    padding-top: 20px;
                    box-sizing: border-box;
                    cursor: pointer;
                  }

                  .area_info_01,
                  .info_table,
                  .area_info_02 {
                    width: 100%;
                    text-align: center;
                  }

                  .info_table {
                    margin-top: 20px;
                    text-align: center;
                  }

                  .gubun1 {
                    width: 20%;
                  }

                  .gubun2 {
                    width: 30%;
                  }

                  .gubun3 {
                    width: 50%;
                  }

                  .info_table th {
                    background-color: #000;
                    color: #fff;
                    height: 20px;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                    height: 30px;
                  }

                  .info_table td {
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                    border: 1px solid #333;
                    height: 30px;
                  }

                  .con_active {
                    background-color: #115462;
                    color: #fff;
                  }

                  .area_info_02 {
                    display: none;
                  }

                  .area_code {
                    padding-top: 10px;
                    text-align: left;
                  }

                  .display_off {
                    display: none;
                  }

                  #area_selectbox {
                    width: 200px;
                  }

                  @media screen and (max-width: 1023px) {
                    #area_selectbox {
                      width: 70%;
                      text-align: center;
                      margin-left: auto;
                      margin-right: auto;
                    }
                  }
                </style>
                <div style="text-align: justify;">
                  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
                </div>
                <div style="text-align: center;"> <span style="font-size: 18px; text-align: center;">&lt;코로나바이러스감염증-19 발생에 따른 여행정보 변동사항&gt; (최종 수정일 : 6월 16일)</span> </div>
                <div class="theme_contents">
                  <div class="btn_area">
                    <div class="con_btn btn1">관광지</div>
                  </div>

                  <div class="area_info_01" style="display: block;">
                    <table class="info_table">
                      <tbody>
                        <tr value="all">
                          <th class="gubun1"> 지역 </th>
                          <th class="gubun2"> 관광지명 </th>
                          <th class="gubun3"> 비고 </th>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>6.25 전쟁체험전시관</td>
                          <td>휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>DMZ 생태평화공원</td>
                          <td>임시휴관 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>강원경찰박물관</td>
                          <td>휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>강원대학교중앙박물관</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>고성 DMZ박물관</td>
                          <td>휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>고성 DMZ박물관 뮤지엄샵</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>고성교육도서관</td>
                          <td>휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>고성 통일전망타워</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>국립산악박물관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>국립춘천박물관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>남산도서관(춘천)</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>동강사진박물관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>동내도서관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>동해문화원</td>
                          <td>휴관 (2020.02.중 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>두타연</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>무릉고서화미술박물관</td>
                          <td>임시휴관 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>발해역사관</td>
                          <td>잠정휴관 (2020.02.중 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>삼척 민물고기전시관</td>
                          <td>실내 전시관 임시휴관 (~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>생명건강과학관 </td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>소양도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>속초문화원</td>
                          <td>휴관 (2020.02.중 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>속초시립박물관·속초실향민문화촌</td>
                          <td>제한적 운영 (2020.04.25 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>송이밸리자연휴양림</td>
                          <td>임시휴관 (2020.02.24 ~ 미정) / 실외시설 이용가능)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>양구문화원</td>
                          <td>임시휴관 (2020.03.16 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>양구인문학박물관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>양구통일관</td>
                          <td>잠정휴관 (2020.02.중 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>양양문화원</td>
                          <td>문화학교 강좌 연기 (2020.02.24. ~ 상황개선 시 까지)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>영월문화원</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>용연동굴 (강원고생대 국가지질공원)</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>원주문화원</td>
                          <td>휴관 (2020.02.중 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>원주시립중앙도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>원주시청소년수련관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 종료시까지)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>원주역사박물관</td>
                          <td>잠정휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>을지전망대</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>인제문화원</td>
                          <td>문화학교 개강 연기 (~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>인제 하늘내린센터</td>
                          <td>휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>정선아리랑 전수관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>정선아리랑센터(아리랑박물관)</td>
                          <td>휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>정선아리랑열차(A-train) </td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>제4땅굴</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>진부령미술관</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>철암탄광역사촌</td>
                          <td>임시휴관 (2020.03.03 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>축제극장 몸짓</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>춘천문화예술회관</td>
                          <td>잠정휴관 (2020.02.중 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>춘천문화원</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>춘천시립도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>태백 고생대박물관</td>
                          <td>임시휴관 (2020.02.26 ~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>태백고생대자연사 박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>태백문화원</td>
                          <td>임시휴관 (2020.03.02 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>태백석탄박물관</td>
                          <td>잠정휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>태백시 문화예술회관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>태백체험공원</td>
                          <td>임시휴관 (2020.02.26 ~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>태양의 후예 촬영지</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>평창문화원</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>하이원 팰리스호텔(구 하이원호텔)</td>
                          <td>제한적 운영 (2020.04.27 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>하이원리조트</td>
                          <td>제한적 운영 (2020.04.27 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>홍천교육도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area01">
                          <td>강원도</td>
                          <td>화천교육도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>가평문화예술회관</td>
                          <td>휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>평창문화원</td>
                          <td>임시휴관 (코로나19 상황종료시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기과천교육도서관</td>
                          <td>부분개관 (2020.05.12 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기도국악당</td>
                          <td>공연취소 (2020.02.24 ~ 2020.06.14)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기도미술관</td>
                          <td>임시휴관 (2020.02.23 ~ 2020.06.14)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기도박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기도어린이박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기북부어린이박물관</td>
                          <td>임시휴관 (2020.02.07 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기성남교육도서관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>경기중앙교육도서관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>고양 서삼릉(장경왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>고양 서오릉 [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>고양시립 주엽어린이도서관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>고양 어린이박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>고양 어울림누리</td>
                          <td>전체휴장 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>곤지암도자공원</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>과천문화원</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>광명업사이클아트센터</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>광주문화원</td>
                          <td>문화학교 개강 4월 잠정 연기 (2020.03.01 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>구리 동구릉 [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>국립과천과학관</td>
                          <td>제한적 개관(2020.05.06 ~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>국립현대미술관(과천관)</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>군포문화원</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>기형도문학관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>김포 장릉(인헌왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>남양주 광릉(세조,정희왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>남양주 사릉(정순왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>남양주시립박물관</td>
                          <td>임시휴관 (2020.02.05 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>남양주 홍릉(고종과 명성황후)과 유릉(순종과 순명,순정 황후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>노작홍사용문학관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>다이노스타</td>
                          <td>임시휴관 (~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>단국대학교 석주선기념박물관</td>
                          <td>개관연기 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>단원 미술관</td>
                          <td>제한적 개관 (2020.05.19 ~ 별도 안내시까지) / 3관(콘텐츠관) 재개관, 회차별 10명 제한(선착순마감)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>동두천꿈나무정보도서관</td>
                          <td>제한적 개관 (2020.05.11 ~ 별도공지시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>마가미술관</td>
                          <td>임시휴관 (2020.02.중 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>만해기념관</td>
                          <td>임시휴관 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>말박물관</td>
                          <td>임시휴관 (2020.02.23 ~ 2020.06.14)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>명지대학교 박물관 </td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>몽골문화촌</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>문화예술원 마루홀</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>바른샘어린이도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>배다골테마파크</td>
                          <td>휴점 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>배다골테마파크 고양민속박물관</td>
                          <td>임시휴관 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>백남준아트센터</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천교육박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천 물 박물관</td>
                          <td>임시휴관 (2020.02.10 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천수석박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천시립꿈빛도서관</td>
                          <td>임시휴관(2020.05.30 ~ 2020.06.21 예정), 상황 변동시 별도 공지</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천시립북부도서관</td>
                          <td>임시휴관(2020.05.30 ~ 2020.06.21 예정), 상황 변동시 별도 공지</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천시립심곡도서관</td>
                          <td>임시휴관(2020.05.30 ~ 2020.06.21 예정), 상황 변동시 별도 공지</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천시립원미도서관</td>
                          <td>임시휴관(2020.05.30 ~ 2020.06.21 예정), 상황 변동시 별도 공지</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천시립중앙도서관</td>
                          <td>제한적 개관(2020.05.06 ~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>부천아트벙커B39</td>
                          <td>프로그램 취소, 연기 (2020.02.05 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>산장관광지</td>
                          <td>숙박시설 휴장 (2020.03.02 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>서수원도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>성남문화원</td>
                          <td>임시휴관 (2020.06.15 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>성남시 분당도서관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>성남시 수정도서관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>성남시 중앙도서관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>성남시 중원도서관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>성남아트센터</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원 선경도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원 영통도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원 중앙도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원 청소년 문화센터</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원문화원</td>
                          <td>임시휴관 (2020.02.03 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원시민회관</td>
                          <td>임시휴관 (2020.02.03 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>수원화성박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>슬기샘어린이도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>시흥오이도박물관</td>
                          <td>제한적 개관(2020.05.06 ~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>아주대학교박물관</td>
                          <td>잠정휴관 (2020.02.10 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>아쿠아필드 고양</td>
                          <td>찜질스파 단축운영 (10:00 - 22:00) 2020.05.15 ~ 별도 공지시 까지</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>아쿠아필드 하남</td>
                          <td>찜질스파 단축운영(10:00 - 22:00)별도 공지시 까지<br>워터파크 실내(10:00 - 19:00), 실외(11:00 - 18:00)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>안산 어촌민속박물관</td>
                          <td>임시휴관 (2020.02.02 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>안산문화예술의전당</td>
                          <td>임시휴관 (2020.02.11 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>안산문화원</td>
                          <td>임시휴관 (2020.03.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>안성맞춤박물관</td>
                          <td>임시휴관 (2020.02.11 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>안성시립도서관</td>
                          <td>임시휴관 (2020.02.11 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>양주 온릉(단경왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>양평군립미술관</td>
                          <td>임시휴관 (2020.02.11 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>양평 황순원문학촌 소나기마을</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>엠스테이호텔 기흥</td>
                          <td>임시휴업 (2020.03.05 ~ 2020.05.31)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>여주도자세상</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>여주박물관</td>
                          <td>제한적 개관(2020.05.08 ~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>연천 고랑포구역사공원</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>용인 농경문화전시관</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>용인문화원</td>
                          <td>강좌휴강 (2020.02.01 ~ 2020.06.30)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>용인시문예회관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>용인 포은아트홀</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>유럽자기박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>이천 세라피아 (이천세계도자센터)</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>인터렉티브아트뮤지엄</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>의왕철도박물관</td>
                          <td>임시휴관 ( ~ 2020.06.15)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>자라섬오토캠핑장</td>
                          <td>숙박시설 휴장 (2020.03.02 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>죽전야외음악당</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>지도박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>지혜샘어린이도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>창조자연사박물관</td>
                          <td>임시휴관 (상황종료 시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>최용신기념관</td>
                          <td>임시휴관 (2020.06.15 ~ 코로나19 상황 안정시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>충현박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>칼봉산자연휴양림</td>
                          <td>숙박시설 휴장 (2020.03.02 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>파주 삼릉 [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>파주시립중앙도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>파주 장릉(인조,인열왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>판교박물관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>포천문화원</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>포천아트밸리 천문과학관</td>
                          <td>실내시설 임시 개방 (2020.05.06 ~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>하남문화원</td>
                          <td>임시휴관 (2020.02.01 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>하남역사박물관</td>
                          <td>제한적 개관(2020.05.08 ~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>한국기독교역사박물관</td>
                          <td>임시휴관 (2020.02.04 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>한국항공대학교 항공우주박물관</td>
                          <td>휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>호암미술관</td>
                          <td>임시휴관 (2020.01.30 ~ 미정)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>화성 공룡알 화석지</td>
                          <td>제한적 개관 (별도 안내시까지)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>화성시어린이문화센터</td>
                          <td>임시휴관 (2020.02.27 ~ 심각 경보 해제 시)</td>
                        </tr>
                        <tr value="area02">
                          <td>경기도</td>
                          <td>화성 융릉(장조,헌경왕후)과 건릉(정조,효의왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>거제도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>거제문화예술회관</td>
                          <td>임시휴관 (2020.02.24 ~ 코로나-19 소강시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>거제 알로에테마파크</td>
                          <td>임시휴관 (2020.03.01 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>거제정글돔</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>거창문화센터</td>
                          <td>임시휴관 (2020.02.20 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>거창박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>거창스포츠파크</td>
                          <td>국민체육센터 휴관 (2020.02.21 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>경남도립미술관</td>
                          <td>부분개관 (2020.05.12 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>경상남도환경교육원</td>
                          <td>교육운영 잠정 중단 (2020.02.24 ~ 상황 종료시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>고성박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 코로나 19 안정시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>고성오광대전수회관</td>
                          <td>전승활동/공연 및 체험활동 중단 (~ 별도 공지시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>고성탈박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 코로나 19 안정시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>국립김해박물관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>국립진주박물관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>굿데이뮤지엄</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>당항포관광지</td>
                          <td>휴장 (2019.11.01 ~ 2020.09.17)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>대성동고분박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>람사르문화관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>밀양의열기념관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>박경리 기념관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>산청 동의보감촌</td>
                          <td>실내시설 이용불가 (2020.02.25 ~ 상황 개선시까지 )</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>양산문화예술회관</td>
                          <td>임시휴관 (2020.02.22 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>주남저수지 생태학습관</td>
                          <td>임시휴관 (2020.02.22 ~ 상황 종료시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>진해문화원</td>
                          <td>임시휴관 (2020.03.01 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>창녕박물관</td>
                          <td>임시휴관 (2020.02.20 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>창원경륜장</td>
                          <td>경륜/경정 미시행 (2020.02.23 ~ 별도 공지시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>창원과학체험관</td>
                          <td>제한적 재개관(2020.05.06 ~)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>창원문화원</td>
                          <td>문화강좌 임시 휴강 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>창원역사민속관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>창원 편백 치유의 숲</td>
                          <td>제한적 재개관</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>창원해양공원</td>
                          <td>임시휴관 (2020.02.22 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>통영 수산과학관</td>
                          <td>임시휴관 (2020.02.24 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>통영시립도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>통영시립박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>통영시청소년수련관</td>
                          <td>임시휴관 (2020.03.03 ~ 상황종료 시까지)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>함안도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>합천도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area03">
                          <td>경상남도</td>
                          <td>해군사관학교 박물관</td>
                          <td>임시휴관 (2020.01.30 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>경산시립박물관관</td>
                          <td>제한적 개관 (2020.05.08 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>경주문화원</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>경주시청소년수련관</td>
                          <td>봄학기 특기적성 교육과정 잠정 중단 (2020.03.06 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>경주예술의전당</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>구미문화원</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>구미시립중앙도서관</td>
                          <td>부분개관 (2020.05.11 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>구미 평생교육원</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>구상문학관</td>
                          <td>임시휴관 (2020.02.20 ~ 사태 진정시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>국립경주박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>국립등대박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 종료시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>국립칠곡숲체원</td>
                          <td>임시휴관 (2020.02.24 ~&nbsp;상황종료 시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>꿀벌나라테마공원</td>
                          <td>임시휴관 (2020.02.21 ~&nbsp;상황종료 시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>다부동전적기념관</td>
                          <td>제한적 개관 (2020.05.11 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>대구가톨릭대학교 역사박물관</td>
                          <td>임시휴관 (2020.02.19 ~ 추후 공지시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>대구대학교 중앙박물관</td>
                          <td>임시휴관 (2020.02.20 ~ 추후 공지시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>도산서원 [유네스코 세계문화유산]</td>
                          <td>옥진각 전시관 휴관 (2020.02.24 ~ 사태 진정시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>마애선사유적전시관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>백두대간협곡열차(V-트레인) </td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>소수박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 종료시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>신라역사과학관</td>
                          <td>제한적 개관 (2020.05.08 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>안동문화예술의전당</td>
                          <td>제한적 개관(2020.06.14 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>안동문화원</td>
                          <td>임시휴관 (2020.02.22 ~ 추후 공지시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>안동민속박물관</td>
                          <td>제한적 개관 (2020.05.08 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>여우생태관찰원</td>
                          <td>탐방프로그램중단 (2020.02.20 ~ 코로나 발생 종료시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>연오랑세오녀테마공원 귀비고</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>영남대학교박물관</td>
                          <td>임시휴관 (2020.03.09 ~ 추후 공지시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>영일민속박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>영천문화원</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>영천보현산천문과학관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>영천시민회관</td>
                          <td>시민문화교실, 공연, 영화, 행사 중단 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>영천전투메모리얼파크</td>
                          <td>체험권 운영중지 (2020.02.19 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>예천천문우주센터</td>
                          <td>주말개관 (2020.05.09 ~ 별도 안내시 까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>우양미술관</td>
                          <td>제한적 개관 (2020.04.22 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>운주산승마자연휴양림</td>
                          <td>임시휴관 (2020.02.19 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>의성 조문국박물관</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>인삼박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>최무선과학관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>포항문화예술회관</td>
                          <td>임시휴관 (2020.2.20 ~ 2020.07.31)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>포항시립미술관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area04">
                          <td>경상북도</td>
                          <td>포항함 체험관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>광주 남구문화원</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>광주시립미술관</td>
                          <td>제한적 재개관(2020.05.06 ~) / 사전예약제</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>국립광주박물관</td>
                          <td>제한적 재개관(2020.05.06 ~) / 사전예약제</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>국립아시아문화전당</td>
                          <td>제한적 재개관(2020.05.06 ~) / 사전예약제</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>남도향토음식박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>무등도서관</td>
                          <td>임시휴관 (2020.03.07 ~ 미정)</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>사직도서관</td>
                          <td>임시휴관 (2020.03.07 ~ 미정)</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>산수도서관</td>
                          <td>임시휴관 (2020.03.07 ~ 미정)</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>양림역사문화마을</td>
                          <td>신규신청을 포함한 모든 해설 중단 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area16">
                          <td>광주</td>
                          <td>중앙도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>가창창작스튜디오&amp;스페이스 가창</td>
                          <td>출입제한 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>국립대구과학관</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>국립대구기상과학관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>근대문화체험관 계산예가</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>낙동강승전기념관</td>
                          <td>잠정휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>달성문화원</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>달성습지생태학습관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>달성 한일우호관</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구 코오롱 야외음악당</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구광역시립남부도서관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구광역시립중앙도서관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구광역시어린이회관</td>
                          <td>관람잠정중단 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구교육박물관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구근대역사관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구문화예술회관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구북구청소년회관 아트홀</td>
                          <td>임시휴관 (2020.02.19 ~ 별도 공지시까지)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구서구문화회관</td>
                          <td>연기 및 휴강 (2020.02.18 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구섬유박물관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구시민안전테마파크</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>대구예술발전소</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>디아크문화관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>봉산문화회관</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>서구어린이도서관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>수성구립 고산도서관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>수성구립 범어도서관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>수성구립 용학도서관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>수성아트피아</td>
                          <td>임시휴관 (2020.02.18 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>수창청춘맨숀</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>아양아트센터(구,동구문화체육회관)</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>에코한방웰빙체험관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>웃는얼굴아트센터</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>이월드</td>
                          <td>휴장 (2020.02.21 ~ 4월 중 오픈 예정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>이월드 83타워</td>
                          <td>휴장 (2020.02.21 ~ 4월 중 오픈 예정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>장태산자연휴양림</td>
                          <td>제한적개방 (2020.05.11 ~ 심각단계 해제 시까지)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>팔공문화원</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>패션주얼리전문타운</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>행복북구문화재단 어울아트센터</td>
                          <td>운영중지 (2020.02.19 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>향촌문화관</td>
                          <td>임시휴관 (2020.02.19 ~ 미정)</td>
                        </tr>
                        <tr value="area05">
                          <td>대구</td>
                          <td>향토역사관</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대덕문예회관(구, 대덕구 평생학습센터)</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>이응노 미술관</td>
                          <td>제한적 재개관 (2020.05.06 ~) / 사전 예약자에 한하여 관람가능</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>전통나래관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>평송청소년문화센터</td>
                          <td>휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>한남대학교 중앙박물관</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>국립중앙과학관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전 가수원도서관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전 갈마도서관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전시립미술관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전어린이회관</td>
                          <td>휴관 (2020.02.02 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전예술의전당</td>
                          <td>잠정휴관 (2020.02.중 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전유성도서관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전통일관</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전학생교육문화원</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>대전한밭도서관</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>신탄진도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>지질박물관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>티놀자 애니멀 테마파크</td>
                          <td>평일 휴관, 주말 및 공휴일 정상 운영 (2020.02.18 ~ 코로나 진정 시 까지)</td>
                        </tr>
                        <tr value="area06">
                          <td>대전</td>
                          <td>한밭교육박물관</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>국립부산과학관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>국립해양박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>금정문화원</td>
                          <td>프로그램 운영 중단 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>기장문화원</td>
                          <td>임시휴관 (2020.02.10 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>동래문화원</td>
                          <td>문화강좌 휴강 (2020.02.10 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>동래문화회관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>동삼동패총전시관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>동아대학교 석당박물관(부산)</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>복천박물관(부산)</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산 강서문화원</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산 금정문화회관</td>
                          <td>휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산 기장도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산 동구도서관</td>
                          <td>단계별개관 (2020.05.06 ~ 전면 재개관 시)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산 해운대도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산광역시립 명장도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산광역시립 부전도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산광역시립 사하도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산광역시립 서동도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산광역시립 시민도서관</td>
                          <td>부분개관 (2020.05.12 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산광역시립 연산도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산광역시립 중앙도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산금정도서관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산문화회관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산시립미술관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산시민회관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산어촌민속관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산영화체험박물관</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산점자도서관</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산해양자연사박물관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>부산현대미술관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>북구문화빙상센터</td>
                          <td>잠정휴관 (공연장 2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>수산과학관(부산)</td>
                          <td>잠정휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>연제문화원</td>
                          <td>문화강좌 휴강 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>요산문학관</td>
                          <td>잠정휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>우장춘기념관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>정관박물관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>조선통신사역사관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>트릭아이뮤지엄 부산</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>한광미술관</td>
                          <td>제한적 개관(관람시간 13:30 ~ 17:30)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>해양관광열차 S-트레인(S-train) </td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area07">
                          <td>부산</td>
                          <td>해운대문화회관</td>
                          <td>잠정휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>가톨릭대학교 성신교정도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>강동아트센터</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>갤러리 구루지</td>
                          <td>갤러리 확장 공사로 임시휴관 (2020.02.28 ~ 2020.07.31)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>경복궁</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>광화문아트홀</td>
                          <td>임시휴관 (2020.02.20 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>구로문화원</td>
                          <td>임시휴관 (2020.02.03 ~ 2020.06.30)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립고궁박물관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립공원 산악박물관</td>
                          <td>이용제한 (2020.02.24 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립공원 산악박물관</td>
                          <td>이용제한 (2020.02.24 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립민속박물관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립중앙도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립중앙박물관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립한글박물관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립현대미술관(덕수궁관)</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국립현대미술관(서울관)</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>국회 방문자센터 헌정기념관</td>
                          <td>임시휴관 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>근현대사기념관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>금천구립가산도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>금천구립금나래도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>금천구립독산도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>금호아트홀</td>
                          <td>6월 기획공연 잠정연기 및 무관중 온라인 생중계 대체 (2020.06.04 ~ 2020.06.25, 2020.06.27, 2020.09.10, 2020.09.17)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>김대중도서관</td>
                          <td>임시휴관 (2020.02.27 ~ 무기한 휴관)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>놀이똥산</td>
                          <td>임시휴관 (~ 2020.06.30)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>대한민국역사박물관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>덕수궁</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>도산안창호기념관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>도봉문화원</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>동작문화원</td>
                          <td>임시휴관 (별도 안내까지 잠정적 휴강)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>돈의문박물관마을</td>
                          <td>부분개관 (2020.05.12 ~ 별도 공지시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>둘리뮤지엄</td>
                          <td>임시휴관 (2020.02.05 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>명동예술극장</td>
                          <td>기획공연중단(별도 공지시 까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>밀알미술관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>배재학당역사박물관</td>
                          <td>임시휴관 (2020.02.18 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>백인제가옥</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>별마당도서관</td>
                          <td>강연 및 공연 프로그램 잠정 연기</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>북촌문화센터</td>
                          <td>프로그램중단 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>비스타 워커힐 서울</td>
                          <td>부분운영(2020.03.23 ~)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울 경교장</td>
                          <td>임시휴관 (2020.02.24 ~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울교육박물관</td>
                          <td>임시휴관 (2020.02.03 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울 그레뱅 뮤지엄</td>
                          <td>임시휴관 (2020.03.05 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울대학교병원 의학박물관</td>
                          <td>휴관 (2020.02.03 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울메트로미술관</td>
                          <td>임시휴관 (2020.03.06 ~ 별도 공지시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울상상나라</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울생활사박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울 선릉(성종과 정현왕후)과 정릉(중종) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울 의릉(경종,선의왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울 정릉(신덕왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울책보고</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울 태릉(문정왕후)과 강릉(인순왕후) [유네스코 세계문화유산]]</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울 헌릉(태종,원경왕후)과 인릉(순조,순원왕후) [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청</td>
                          <td>임시휴관 (어린이도서관 2020.02. 21 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 강남도서관</td>
                          <td>제한적 개관 (2020.04.27 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 강동도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 개포도서관</td>
                          <td>제한적 개관 (2020.04.27 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 고덕평생학습관</td>
                          <td>부분개관 (2020.05.12 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 과학전시관</td>
                          <td>임시휴관 (2020.02.28 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 과학전시관 (남산분관)</td>
                          <td>임시휴관 (2020.02.28 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 도봉도서관</td>
                          <td>제한적 개관 (2020.04.27 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 동작도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 서대문도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 송파도서관</td>
                          <td>제한적 개관(2020.05.11 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 양천도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 어린이도서관</td>
                          <td>자료실 제한적 개실(2020.04.27 ~ 별도 안내시 까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 영등포평생학습관</td>
                          <td>제한적 개관 (2020.04.27 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 정독도서관</td>
                          <td>제한적 개관 (2020.04.27 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서울특별시교육청 종로도서관</td>
                          <td>자료실 제한적 개실(2020.04.28 ~ 별도 안내시 까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서초구립반포도서관</td>
                          <td>제한적 개관(2020.05.14 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>서해금빛열차 </td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>세종이야기</td>
                          <td>임시휴관 (2020.02.12 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>소마미술관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>송파문화원</td>
                          <td>임시휴관 (2020.03.23 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>식민지역사박물관</td>
                          <td>임시휴관 (2020.02.08 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>신월음악도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>심산기념문화센터</td>
                          <td>임시휴관 (~ 별도안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>씨랄라 워터파크</td>
                          <td>임시휴관 (2020.02.29 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>아리수 정수센터 (암사,뚝섬,영등포)</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>아르코미술관</td>
                          <td>휴실 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>안중근의사기념관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>암사동 선사주거지 원시생활전시관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 안정시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>양천구 갈산도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>양천구 영어특성화도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>영등포문화원</td>
                          <td>임시휴관 (2020.01.31 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>외교사료관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>용산공예관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>유금와당박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>은평문화원</td>
                          <td>임시휴관 (2020.03.01 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>응암정보도서관</td>
                          <td>임시휴관 (2020.02.10 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>장난감나라 오류점</td>
                          <td>임시휴관 (2020.02.22 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>장안평 자동차산업 종합정보센터</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>전기박물관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>전쟁과여성인권박물관</td>
                          <td>제한적 개관(2020.05.12 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>전쟁기념관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>정동전망대</td>
                          <td>운영중단 (2020.02.07 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>종묘 [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>중랑구립면목정보도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>중랑구립정보도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>짚풀생활사박물관</td>
                          <td>정상운영 (2020.05.19 ~)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>창경궁</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>창덕궁과 후원 [유네스코 세계문화유산]</td>
                          <td>임시휴관 (2020.05.29 ~ 수도권 방역강화조치 해제 시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>창동문화체육센터</td>
                          <td>임시휴관 (2020.02.05 ~ 별도 안내시)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>춘원당한방박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>충무공 이야기</td>
                          <td>임시휴관 (2020.02.12 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>케이스타일허브(K-Style Hub)</td>
                          <td>임시휴관 (재개관 일시 별도 공지)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>탄허기념박물관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>허준박물관</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>헬로우뮤지움</td>
                          <td>임시휴관 (2020.02. ~ 미정)</td>
                        </tr>
                        <tr value="area08">
                          <td>서울</td>
                          <td>홍대난타전용관</td>
                          <td>임시휴관 (~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>국립세종도서관</td>
                          <td>임시휴관 (2020.02.22 ~ 별도 공지시 까지)</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>국립조세박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황종료시)</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>금강자연휴양림(금강수목원,산림박물관)</td>
                          <td>제한적 개방 (2020.05.06 ~) 실내시설 이용제한</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>세종문화예술회관</td>
                          <td>임시휴관 (2020.01.20 ~ '심각' 단계 해제 시)</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>세종문화원</td>
                          <td>임시휴관 (2020.02.24 ~ 심각단계 해제 시까지)</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>세종시립민속박물관</td>
                          <td>임시휴관 (2020.02.22~상황종료시)</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>우주측지관측센터</td>
                          <td>임시휴관 (2020.02.24 ~ 추후 공지시)</td>
                        </tr>
                        <tr value="area17">
                          <td>세종</td>
                          <td>충청남도 산림박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 6월까지) / 금강자연휴양림 및 수목원 산책로 등 야외시설 이용가능</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산 동구문화원</td>
                          <td>임시휴관 (2020.02.25 ~ 상황종료까지)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산 옹기박물관</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산남부도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산동부도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산북구문화예술회관</td>
                          <td>잠정중단 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산암각화박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>울산울주도서관</td>
                          <td>제한적 재개관 (2020.05.06 ~)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>장생포 고래박물관</td>
                          <td>부분개관 (2020.05.12 ~ 미정)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>태화강생태관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>한마음회관</td>
                          <td>임시휴관 (2020.02.24 ~ 상황종료시)</td>
                        </tr>
                        <tr value="area09">
                          <td>울산</td>
                          <td>현대자동차 문화회관 </td>
                          <td>운영임시중단 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>가천박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>갑곶돈대</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>강화관광플랫폼</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>강화도제적봉 평화전망대</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>강화문예회관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>강화역사박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>강화자연사박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>강화평화빌리지</td>
                          <td>임시휴업 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>강화화문석문화관</td>
                          <td>임시폐쇄 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>계양문화회관</td>
                          <td>임시휴관 (2020.02.07 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>남동소래아트홀</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>녹청자박물관</td>
                          <td>임시휴관 (2020.02.05 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>덕산국민여가캠핑장</td>
                          <td>임시휴업 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>부평 기적의도서관</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>부평역사박물관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>삼산도서관</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>석모도 미네랄 온천</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>소래역사관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>소창체험관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>송도해돋이도서관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>수도국산달동네박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>애보박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>연수문화원</td>
                          <td>임시휴강 및 휴관 (2020.02.06 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천 계양도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천 부평도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천 부평문화원</td>
                          <td>휴강 (2020.02.01 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천 서구도서관</td>
                          <td>부분개관 (2020.05.06 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천 화도진도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천광역시 미추홀도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천광역시 북구도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천광역시 여성문화회관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천광역시 중앙도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천광역시립박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천동구청소년수련관</td>
                          <td>임시휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천문화예술회관 </td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천서구문화회관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천수봉문화회관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천시립박물관 컴팩스마트시티</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천아트플랫폼</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천주안도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천학생과학관</td>
                          <td>임시휴관 (2020.02.05 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인천학생교육문화회관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인하대학교 박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>인하대학교 정석학술정보관</td>
                          <td>부분개관 (2020.04.27 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>짜장면박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>청라호수도서관</td>
                          <td>임시휴관 (2020.05.29 ~ 별도공지 시)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>추억극장미림</td>
                          <td>축소운영 (2020.04.20 ~ 미정)</td>
                        </tr>
                        <tr value="area10">
                          <td>인천</td>
                          <td>한국이민사박물관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>강진군도서관</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>강진아트홀</td>
                          <td>임시휴관 (2020.02.14 ~ 상황 종료시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>곡성레저문화센터</td>
                          <td>제한적 개관 (2020.05.11 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>곡성섬진강천문대</td>
                          <td>임시휴관 (2020.3.3 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>광양시문화예술회관</td>
                          <td>임시휴관 (2020.02.28 ~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>국립나주박물관</td>
                          <td>제한적 개관 / 사전예약제)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>국립남도국악원</td>
                          <td>부분개관(2020.05.29 ~ 별도안내시까지)</td>
                        </tr>
                        <tr>
                          <td>전라남도</td>
                          <td>국립해양문화재연구소</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>김대중 노벨평화상기념관</td>
                          <td>임시휴관 (2020.02.26 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>김대중 대통령 생가</td>
                          <td>임시휴관 (~ 상황종료 시)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>낙죽장도 전시관</td>
                          <td>임시휴관 (~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>남포미술관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>다산기념관</td>
                          <td>임시휴관 (2020.02.26 ~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>동편제 판소리전수관</td>
                          <td>임시휴관 (2020.02.26 ~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>마복산 목재문화체험장</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>목포문화예술회관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>목포시립도서관</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>보성문화원</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>섬진강어류생태관</td>
                          <td>임시휴관 2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>순천만 국가정원</td>
                          <td>임시휴관 (2020.02.26 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>순천만습지</td>
                          <td>임시휴관 (2020.02.28 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>순천만 자연생태관</td>
                          <td>임시휴관 (2020.02.28 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>순천문화예술회관</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>순천시립 뿌리깊은나무 박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>승달문화예술회관</td>
                          <td>임시휴관 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>신안 천도천색호</td>
                          <td>임시휴관 (별도 공지시 까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>여수시민회관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 개선시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>여수시청소년수련관</td>
                          <td>임시휴관 (2020.02.26 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>여수 진남관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 개선시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>영광군립도서관</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>영암도기박물관</td>
                          <td>임시휴관 (2020.02.27 ~ 상황 종료시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>완도어촌민속전시관</td>
                          <td>임시휴관 (2020.02.26 ~ 상황 개선시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>운림산방</td>
                          <td>임시휴관 (2020.02.27 ~ 미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>전라남도 농업박물관</td>
                          <td>임시휴관 (2020.02.26 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>정남진물과학관</td>
                          <td>임시휴관 (2020.02.14 ~ 별도 안내시까지 )</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>정남진천문과학관</td>
                          <td>임시휴관 (2020.02.14 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>정남진 편백숲 우드랜드</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>조태일시문학기념관</td>
                          <td>임시휴관 (2020.03.26 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>팔영산자연휴양림</td>
                          <td>임시격리시설로 지정(2020.04.05 ~ 상황종료시까지 임시휴관)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>한국대나무박물관</td>
                          <td>임시휴관 (2020.02.26 ~미정)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>한국압화박물관</td>
                          <td>임시휴관 (2020.02.26 ~ 상황 안정시까지)</td>
                        </tr>
                        <tr value="area11">
                          <td>전라남도</td>
                          <td>한국천연염색박물관</td>
                          <td>잠정휴관 (2020.02.22 ~ 미정)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>호남기후변화체험관</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>고산자연휴양림</td>
                          <td>야외공간(숲길, 등산로) 제한적 개방</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>국립익산박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>국립전주박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>군산근대역사박물관</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>남원항공우주천문대</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>남원 향토박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>마동도서관</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>부안청자박물관</td>
                          <td>제한적 개관 / 사전예약제</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>산속등대 복합문화공간 (미술관&amp;어뮤즈월드)</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>와룡자연휴양림</td>
                          <td>제한적 개관</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>완주 고산 놀토피아</td>
                          <td>임시휴관 (2020.02.21 ~ 미정)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>웅포관광지 캠핑장</td>
                          <td>제한적 개관 / 샤워장 폐쇄</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>장미갤러리</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>전북도립미술관</td>
                          <td>제한적 개관 / 사전예약제</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>전북도청도서관</td>
                          <td>제한적 개관 (2020.05.08 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>전주한지박물관</td>
                          <td>임시휴관 (2020.02.05 ~ 미정)</td>
                        </tr>
                        <tr value="area12">
                          <td>전라북도</td>
                          <td>진안역사박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>국제평화센터</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>기당미술관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>삼매봉도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>서귀포시청소년수련관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>서귀포천문과학문화관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>서복전시관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>이중섭미술관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주교육박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주난타전용관</td>
                          <td>임시휴관 (~ 별도안내시까지)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주도립미술관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주도민속자연사박물관</td>
                          <td>임시휴관 (2020.03.02 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주맥주</td>
                          <td>임시휴관 (2020.02.21 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주별빛누리공원</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주 세계자연유산센터</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주절물자연휴양림</td>
                          <td>시설이용 제한(목공예체험장, 방문자센터, 실내산림욕장, 세미나실) (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주추사관(실외관람가능)</td>
                          <td>임시휴관 (2020.02.26 ~ 2020.06.17)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>제주항일기념관</td>
                          <td>임시휴관 (2020.03.03 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>조천읍도서관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area13">
                          <td>제주도</td>
                          <td>현대미술관</td>
                          <td>임시휴관 (2020.03.03 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>고남패총박물관</td>
                          <td>제한적 개관 (2020.05.12 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>공주 산림휴양마을</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>국립부여박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>만수산자연휴양림</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>백제군사박물관</td>
                          <td>내부시설은 임시휴관(전시관 및 4D 상영관 등), 외부시설은 정상운영(충장사 및 충혼공원 등) (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>보령문화예술회관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>보령석탄박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>부여청소년수련원</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>사비도성 가상체험관</td>
                          <td>임시휴관 (2020.02.23 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>성주산휴양림</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>장항도시탐험역</td>
                          <td>잠정휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>천안박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>천안시 시민문화여성회관</td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area14">
                          <td>충청남도</td>
                          <td>충청남도학생교육문화원</td>
                          <td>도서관 휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>감우재전승기념관</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>공군박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>괴산문화원</td>
                          <td>개강연기 (2020.02.01~ 코로나 19 안정시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>국립청주박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>국립청주박물관 어린이박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>난계국악박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 상황 종료시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>술박물관 리쿼리움</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>영동 국악체험촌</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>영동군 난계국악당</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>영동문화원</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>영동 와인터널</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>오장환문학관</td>
                          <td>임시휴관 (2020.02.25 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>옥천문화원</td>
                          <td>임시휴관 (2020.02.26 ~ 상황 종료시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>제천기적의도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>제천문화원</td>
                          <td>임시휴관 (2020.02.24 ~ 코로나 19 안정시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>제천시립도서관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>좌구산자연휴양림</td>
                          <td>임시휴관 (2020.02.24 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>주철장 전수교육관</td>
                          <td>제한적 개관 (2020.05.19 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>중부내륙순환열차(O-트레인) </td>
                          <td>임시휴관 (2020.02.26 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>중앙탑공원</td>
                          <td>안내해설 잠정중지 (2020.02.25 ~ 상황 안정시)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>증평민속체험박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 코로나 19 안정시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>진천 종박물관</td>
                          <td>제한적 개관 (2020.05.07 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>철박물관</td>
                          <td>임시휴관 (2020.03.06 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>청룡사지</td>
                          <td>안내해설 잠정중지 (2020.02.25 ~ 상황 안정시)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>청주문화원</td>
                          <td>임시휴관 (2020.03.06 ~ 코로나 19 안정시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주고구려비전시관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주고구려천문과학관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주 미륵대원지</td>
                          <td>안내해설 잠정중지 (2020.02.25 ~ 상황 안정시)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주 민물고기전시관</td>
                          <td>임시휴관 (2020.03.03 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주세계무술박물관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주시립도서관</td>
                          <td>임시휴관 (2020.02.25 ~ 미정)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주 임충민공 충렬사</td>
                          <td>안내해설 잠정중지 (2020.02.25 ~ 상황 안정시)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주커피박물관</td>
                          <td>단축운영 (2020.03.03 ~ 미정, 11시~17시)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충주 탄금대와 탄금대공원</td>
                          <td>안내해설 잠정중지 (2020.02.25 ~ 상황 안정시)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>충청북도자연과학교육원 과학전시관</td>
                          <td>임시휴관 (2020.02.21 ~ 별도 안내시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>한국교원대학교 교육박물관</td>
                          <td>임시휴관 (2020.03.01 ~ 코로나 19 안정시까지)</td>
                        </tr>
                        <tr value="area15">
                          <td>충청북도</td>
                          <td>한독의약박물관</td>
                          <td>제한적 개관 (2020.05.06 ~ 별도 안내시까지)</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div style="text-align: justify;">
                  <a href="http://ncov.mohw.go.kr" target="_blnak">
                    <img src="resources/home/assets/img/covid.png" style="width:100%" alt="신종코로나바이러스감염증 마이크로 페이지로 이동합니다">
                  </a>
                  <div style="text-align: right;"> *클릭시 코로나바이러스감염증-19 마이크로 페이지로 이동합니다. </div>
                </div>
              </div>
              <div class="btn_wrap" sytle="display:none;" style="display: none;">
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
  <script src="resources/home/assets/js/iframe_api.js"></script>
  <script src="resources/home/assets/js/f_sub08/swiper.min.js"></script>

</body>

</html>
