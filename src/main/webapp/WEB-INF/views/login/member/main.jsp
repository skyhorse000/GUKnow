<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
</head>
<body>
  <h1>Main page</h1>
  <c:choose>
  <c:when test="${sessionScope.username == null }">
  <a href="login" class="btn-pupup">LOGIN</a>
  <a href="register" class="btn-pupup">REGISTER</a>
  </c:when>
  <c:otherwise>
  <b>${sessionScope.username } &nbsp;&nbsp;</b>
  <a href="logout">LOGOUT</a>
  </c:otherwise>
  </c:choose>
  <br>
  <a href="../board/list" class="btn-pupup">게시판</a>
  
  
  <!-- 로그인 환영 메세지  -->
  <c:if test="${not empty login_id }">
  ${login_id }님 방문을 환영합니다!&nbsp
  <button id="btn_logout" type="button">LOGOUT</button>
  </c:if>
  
<%--   <c:if test="${empty login_id }">
  <form action="member/login-post" method="post">
    <input type="text" name="userid" placeholder="USER ID" required autofocus>
    <input type="password" name="password" placeholder="PASSWORD" required>
    <input type="submit" value="로그인" /> 
  </form>
</c:if> --%>

  <script type="text/javascript">
  $(document).ready(function(){
    $('#btn_logout').click(function(){
      // 콘트롤러 메소드에 매핑된 URL 호출
      location = 'logout';
    });
       
  });
</script>

</body>
</html>