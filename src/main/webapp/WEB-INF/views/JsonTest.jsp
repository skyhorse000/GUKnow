<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="output"></div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
	  
	  $.ajax({
      type : 'POST',
      url : '${pageContext.request.contextPath}/getcategoryCode',
      headers : {
        'Content-Type' : 'application/json',
        'X-HTTP-Method-Override' : 'POST'
      },     
      success : function(data, status) {
      	$("#output").html(data);
      }
      
	  });
	  
	});
</script>
</html>