<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">
.memberBox-size {
  width: 400px;
  height: 30px;
}
</style>

</head>
<body>
  <h3>회원가입 페이지</h3>
  <span class="close-button">&times;</span>
  <hr>

  <form action="register" method="post" name="userInfo">
    <!-- 외부 경로 회원 가입 -->
    <button type="button" id="facebookLogin_btn" class="memberBox-size">Facebook으로
      회원가입</button>
    <br>
    <button type="button" id="googleLogin_btn" class="memberBox-size">Google로
      회원가입</button>
    <br>
    <hr>
    <input type="text" name="username" placeholder="이름"
      class="memberBox-size" required><br> <input
      type="text" name="email" placeholder="이메일 주소"
      class="memberBox-size" required><br> <input
      type="password" name="password" placeholder="비밀번호 (6자~20자)"
      class="memberBox-size" required><br>
    <!-- gender 선택 -->
    <input type="radio" name="gender" value="남자" checked="checked">
    남자 <input type="radio" name="gender" value="여자"> 여자<br>
    <!-- 회원 가입 버튼  -->
    <input type="submit" value="회원가입" class="memberBox-size"
      id="registerSubmit"><br>
    <!-- 로그인창 이동  -->
    <a>이미 회원이신가요?&nbsp</a><a href="login">로그인</a>
    <!-- 회원 가입 약관 동의 -->
    <div class="checkbox">
      <label> <input type="checkbox" name="agree" id="chk1"
        value=""> G.U.K TRAVEL 가입하면서 <b>이용약관</b>과 <b>개인정보
          취급방침</b>을 확인하고 이에 동의합니다.
      </label>
    </div>
  </form>

  <script type="text/javascript">
      $(document).ready(function() {
        $('#registerSubmit').click(function() {
          if ($('#chk1').prop('checked') == false) {
            alert('필수 약관에 동의 하셔야 합니다.');
            document.location.href = 'member/register';
/*           } else {
            document.location.href = 'member/main';
            /* $(location).attr('href','https://www.naver.com/'); */
          }
        });
      });
    </script>

</body>
</html>
