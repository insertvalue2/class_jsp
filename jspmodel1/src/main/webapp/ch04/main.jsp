<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
	%>
	<!-- request.객체를 이용해야 함  -->
	<h2><%= request.getParameter("id")%> 환영합니다. </h2>
</body>
</html>