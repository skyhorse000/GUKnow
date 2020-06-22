<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

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
  <link rel="stylesheet" href="../resources/home/assets/css/reset.css">
  <link rel="stylesheet" href="../resources/home/assets/css/style.css">
  <link rel="stylesheet" href="../resources/home/assets/css/swiper.css">
  <link rel="stylesheet" href="../resources/home/assets/css/login.css">

  <!-- 파비콘 -->
  <link rel="shortcut icon" href="../resources/home/assets/icons/favicon.ico">
  <link rel="apple-touch-icon-precomposed" href="../resources/home/assets/icons/favicon_72.png" />
  <link rel="apple-touch-icon-precomposed" sizes="96x96" href="../resources/home/assets/icons/favicon_96.png" />
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../resources/home/assets/icons/favicon_144.png" />
  <link rel="apple-touch-icon-precomposed" sizes="192x192" href="../resources/home/assets/icons/favicon_192.png" />
  <!-- 웹 폰트 -->
  <!-- HTLM5shiv ie6~8 -->
  <!--[if lt IE 9]>
      <script src="resources/home/assets/js/html5shiv.min.js"></script>
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
            <a href="/project/home"> <em><img src="../resources/home/assets/img/logo.png" alt="G.U.Know travel"></em> <strong><img src="../resources/home/assets/img/logo-sub.png" alt="TRAVEL"></strong>
            </a>
          </h1>
          <nav class="nav">
            <c:choose>
              <c:when test="${sessionScope.username == null }">
                <!-- <ul class="clearfix">
                  <li><a href="login">로그인</a></li>
                  <li onclick="showSignup()"><a href="#">회원가입</a></li>
                </ul> -->
              </c:when>
              <c:otherwise>
                <ul class="clearfix">
                  <li><b>${sessionScope.username }</b></li>
                  <li><a href="logout">로그아웃</a></li>
                </ul>
              </c:otherwise>
            </c:choose>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <section id="banner">
    <div class="banner_menu">
      <h2 class="ir_so">배너 영역</h2>
      <div class="container">
        <div class="row">
          <div class="bm_left">
            <!-- <ul>
              <li class="total"><a href="#">전체메뉴</a></li>
              <li class="line"><a href="#">필름 소사이어티</a></li>
              <li><a href="#">클래식 소사이어티</a></li>
            </ul> -->
          </div>
          <div class="bm_right">
            <ul>
              <li class="line"><a href="#">여행지 날씨</a></li>
              <li class="line"><a href="#">이용가이드 & 지도</a></li>
              <li><a href="#">공지사항</a></li>
            </ul>
            <ul>
              <li class="white"><a href="#">일정 보기</a></li>
              <li class="purple"><a href="#">일정 만들기</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="slider">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide ss1">
            <div class="container">
              <div class="row">
                <h3>순천만 갯벌 습지보호지역</h3>
                <p>세계 5대 연안습지 가운데 하나인 ‘순천만’은 우리나라 최대의 갈대 군락지입니다.</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss2">
            <div class="container">
              <div class="row">
                <h3>수원화성 억새밭</h3>
                <p>1997년 유네스코 세계문화유산으로 등록된 수원화성 억새밭은 가을색의 아름다움을
                  뿜어냅니다.</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss3">
            <div class="container">
              <div class="row">
                <h3>전주한옥마을</h3>
                <p>한국의 전통문화가 가득 담긴 한옥마을</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss4">
            <div class="container">
              <div class="row">
                <h3>대구 풍등축제</h3>
                <p>2020년 대구 풍등축제에 여러분을 초대합니다.</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss5">
            <div class="container">
              <div class="row">
                <h3>경주 동궁과 월지</h3>
                <p>야호(夜好) 경주! 젊은 여행자들의 천년 고도</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide ss6">
            <div class="container">
              <div class="row">
                <h3>제주 돌하르방</h3>
                <p>돌하르방은 제주도 방언으로, 표준어로 해석하면 "돌 할아버지"가 됩니다.</p>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
      </div>
    </div>
  </section>
  <!-- //banner -->

  <!-- login -->
  <section id="log">
    <div class="container">
      <div class="row">
        <h2 class="ir_so">Login</h2>
        <div class="log">
          <div class="log_box">
            <ul class="navLog">
              <li onclick="showLogin()">로그인</li>
              <li onclick="showSignup()">회원가입</li>
              <li onclick="showForgotPassword()">비밀번호 찾기</li>
              <li onclick="showSubscribe()">구독하기</li>
              <li onclick="showContactUs()">문의하기</li>
            </ul>
            <div class="wrapper">
              <div class="rec-prism">

                <div class="face face-front">
                  <div class="content">
                    <h2>로그인</h2>
                    <c:if test="${not empty username }">
                      ${username }님, 환영합니다! <br>
                      <button id="btn_logout" type="button">로그아웃</button>
                    </c:if>

                    <c:if test="${empty username }">
                      <form action="login-post" method="post" name="userInfo">
                        <div class="field-wrapper">
                          <input type="text" id="email" name="email" placeholder="이메일 주소" autocomplete="on" required autofocus> <label>이메일 주소</label>
                        </div>
                        <div class="field-wrapper">
                          <input type="password" id="password" name="password" placeholder="비밀번호" style="font-family: Georgia" required> <label>비밀번호</label>
                        </div>
                        <div class="field-wrapper">
                          <input type="hidden" name="targetUrl" value="${targetUrl }"> <input type="submit" id="btn_login" value="로그인">
                        </div>
                      </form>
                    </c:if>
                    <span class="psw" onclick="showForgotPassword()">비밀번호 찾기</span>
                    <span class="signup" onclick="showSignup()">비회원입니다. 가입하시겠습니까?</span>
                  </div>
                </div>

                <div class="face face-right">
                  <div class="content">
                    <h2>회원가입</h2>
                    <form action="register" method="post" name="userInfo">
                      <!-- <form onsubmit="event.preventDefault()"> -->
                      <div class="field-wrapper">
                        <input type="text" name="email" placeholder="이메일" autocomplete="on">
                        <label>이메일 주소</label>
                      </div>
                      <div class="field-wrapper">
                        <input type="text" name="username" placeholder="이름" autocomplete="on">
                        <label>이름</label>
                      </div>
                      <div class="field-wrapper">
                        <input type="password" name="password" placeholder="password" autocomplete="on" style="font-family: Georgia">
                        <label>비밀번호</label>
                      </div>
                      <div class="field-wrapper">
                        <!-- gender 선택 -->
                        <input type="radio" name="gender" value="남자" checked="checked">남자 <input type="radio" name="gender" value="여자">여자
                      </div>
                      <div class="field-wrapper">
                        <input type="submit" value="회원가입" class="memberBox-size" id="registerSubmit">
                        <!-- <input type="submit" onclick="showThankYou()"> -->
                      </div>
                      <!-- 회원 가입 약관 동의 -->
                      <!-- <div class="field-wrapper">
                      <div class="checkbox">
                        <label> <input type="checkbox"
                          name="agree" id="chk1" value=""> G.U.K
                          TRAVEL 가입하면서 <b>이용약관</b>과 <b>개인정보 취급방침</b>을
                          확인하고 이에 동의합니다.
                        </label>
                      </div>
                      </div> -->
                    </form>
                  </div>
                </div>

                <div class="face face-back">
                  <div class="content">
                    <h2>비밀번호 찾기</h2>
                    <small>암호 재설정 링크를 보낼 수 있도록... e-mail을
                      입력하십시오.</small>
                    <form onsubmit="event.preventDefault()">
                      <div class="field-wrapper">
                        <input type="text" name="email" placeholder="email" autocomplete="on">
                        <label>e-mail</label>
                      </div>
                      <div class="field-wrapper">
                        <input type="submit" onclick="showThankYou()">
                      </div>
                    </form>
                  </div>
                </div>

                <div class="face face-top">
                  <div class="content">
                    <h2>구독</h2>
                    <small>최신 업데이트 소식을 보내드립니다. e-mail을 입력하십시오!</small>
                    <form onsubmit="event.preventDefault()">
                      <div class="field-wrapper">
                        <input type="text" name="email" placeholder="email" autocomplete="on">
                        <label>e-mail</label>
                      </div>
                      <div class="field-wrapper">
                        <input type="submit" onclick="showThankYou()">
                      </div>
                    </form>
                  </div>
                </div>

                <div class="face face-left">
                  <div class="content">
                    <h2>문의하기</h2>
                    <form action="board_register" method="POST">
                    <!-- <form onsubmit="event.preventDefault()"> -->
                      <div class="field-wrapper">
                        <input type="text" name="username" placeholder="작성자 입력" autocomplete="on">
                        <label>작성자</label>
                      </div>
                      <div class="field-wrapper">
                        <input type="text" name="title" placeholder="제목 입력" autocomplete="on">
                        <label>제목</label>
                      </div>
                      <div class="field-wrapper">
                        <textarea rows="2" name="content" placeholder="내용 입력" autocomplete="on"></textarea>
                        <label>글작성</label>
                      </div>
                      <div class="field-wrapper">
                        <input type="submit" onclick="showThankYou()">
                      </div>
                    </form>
                  </div>
                </div>
                
                <div class="face face-bottom">
                  <div class="content">
                    <div class="thank-you-msg">감사합니다!.</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //login -->

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
              <img src="../resources/home/assets/img/logo_footer.png" alt="megabox">
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
                서울시 구로구 시흥대로 163길 33 주호타워 2층 구트 아카데미 학원(구로동 1129-1) <br>
                <span class="bar2">대표이사 : 이시형</span> 개인정보책임자: 송도권부원장<br>
                <span class="bar2">사업자번호 : 203-87-00672 </span>
                통신판매업신고번호 : 제 2016-서울구로-1560호
              </p>
              <p>Copyright © 주식회사구트. ALL RIGHTS RESERVED</p>
            </address>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <aside role="complementary" id="blackout" class="overlay">
    <div id="trailerModal" class="modal">
      <div id="trailer"></div>
      <!-- YouTube 플레이어로 대체되는 부분 -->
    </div>
    <button id="hideTrailer" class="modal_close">닫기</button>
  </aside>
  <!-- 자바스크립트 라이브러리 -->
  <script src="../resources/home/assets/js/jquery.min_1.12.4.js"></script>
  <script src="../resources/home/assets/js/modernizr-custom.js"></script>
  <script src="../resources/home/assets/js/ie-checker.js"></script>
  <script src="../resources/home/assets/js/swiper.min.js"></script>
  <script src="../resources/home/assets/js/login.js"></script>

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


    //공지사항 탭 메뉴
    var tabMenu = $(".notice");

    //컨텐츠 내용을 숨겨주세요!
    tabMenu.find("ul > li > ul").hide();
    tabMenu.find("li.active > ul").show();

    function tabList(e) {
      e.preventDefault(); //#의 기능을 차단
      var target = $(this);
      target.next().show().parent("li").addClass("active").siblings("li")
        .removeClass("active").find("ul").hide();
      //버튼을 클릭하면 ~ div를 보여주고
      //부모의 li 태그에 클래스 추가하고
      //형제의 li 태그에 클래스 제거하고
      //제거한 자식의 div 태그를 숨겨줌
    }

    tabMenu.find("ul > li > a").click(tabList).focus(tabList);

    $('#btn_login').click(function() {
      var userid = $("#email").val();
      console.log("userid : " + userid);
    });

    $('#registerSubmit').click(function() {
      if ($('#chk1').prop('checked') == false) {
        alert('필수 약관에 동의 하셔야 합니다.');
        document.location.href = 'member/register';
        /*           } else {
                  document.location.href = 'member/main';
                  /* $(location).attr('href','https://www.naver.com/'); */
      }
    });

    // 로그아웃 버튼 누르기
    $(document).ready(function() {
      $('#btn_logout').click(function() {
        location = 'logout';
      });
    });
  </script>
</body>

</html>
<!-- //help -->
