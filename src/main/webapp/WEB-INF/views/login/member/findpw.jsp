<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findpw</title>

<style type="text/css">
.memberBox-size{
 width: 400px; 
 height: 30px;
}
</style>

</head>
<body>

  <h3>비밀번호 찾기</h3>
  <span class="close-button">&times;</span>
  <hr>
  <form action="findpw" method="post">
    <a>이메일 주소</a><br> <input type="text" name="email" placeholder="이메일 주소" class="memberBox-size" required><br>
    <!-- 경고 문구  -->
    <a>등록한 이메일 주소를 입력해 주세요.</a><br>
    <a>비밀번호 설정 방법을 이메일로 보내드립니다.</a><br>
    <a>장시간 메일이 오지 않을 경우 스팸 메일함을 확인해 주세요.</a><br>
    <!-- 비밀번호  버튼  -->
    <hr>
    <input type="submit" value="비밀번호 재설정" class="memberBox-size"><br>
  </form>

</body>
</html>