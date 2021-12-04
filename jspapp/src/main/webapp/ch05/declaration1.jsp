<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 예제1</title>
</head>
<body>
	<h1>선언문 예제1 </h1>
	
	<%
		String name = team + " 화이팅 ";
	%>
	
	<%!
		String team = "축구 대표팀 ";
	%>
	
	출력되는 결과는 ? <%=name%>
	
</body>
</html>