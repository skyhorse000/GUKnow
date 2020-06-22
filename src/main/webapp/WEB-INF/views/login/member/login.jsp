<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.memberBox-size {
  width: 400px;
  height: 30px;
}
</style>

</head>
<body>

  <h3>TRAVEL 로그인</h3>
  <span class="close-button">&times;</span>
  <hr>
  <form action="login-post" method="post" name="userInfo">
    <!-- 외부 경로 회원 가입 -->
    <button type="button" id="facebookLogin_btn" class="memberBox-size">Facebook으로&nbsp로그인</button>
    <br>
    <button type="button" id="googleLogin_btn" class="memberBox-size">Google로&nbsp로그인</button>
    <br>
    <hr>
    <input type="text" id="email" name="email" placeholder="이메일 주소"
      class="memberBox-size" required> <br>
      <input
      type="password" id="password" name="password" placeholder="비밀번호"
      class="memberBox-size" required> <br> <input
      type="hidden" name="targetUrl" value="${targetUrl }">

    <!-- 비밀번호 저장하기 -->
    <div class="checkbox">
      <label> <input type="checkbox" value="remember-me">
        Remember Password
      </label>
    </div>
    <!-- 로그인 버튼  -->
    <input type="submit" class="memberBox-size" value="로그인">

    <c:if test="${login_fail eq 'fail'}">
      <!-- <p>아이디 비밀번호가 일치하지 않습니다.</p> -->
      <script type="text/javascript">
              alert('아이디 비밀번호가 일치하지 않습니다.');
      </script>
    </c:if>
  </form>

  <!-- 회원 가입, 비밀번호 찾기 창 이동 -->
  <div class="text-center">
    <a href="register">회원가입</a> <a>&nbsp|&nbsp</a> <a href="findpw">비밀번호
      찾기</a>
  </div>



</body>
</html>