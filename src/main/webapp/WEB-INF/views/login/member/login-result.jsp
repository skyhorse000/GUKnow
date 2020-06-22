<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login-result</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <script type="text/javascript"> 
    var message = '${msg}'; 
    var returnUrl = '${url}'; 
    alert(mag); 
    document.location.href = 'member/main'; 
    </script>

</body>
</html>