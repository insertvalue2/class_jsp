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
	// 핵심! 액션태그 forward 를 사용하면 실행에 제어권 까지 받아서 처리할 수 있다.  
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	// 실무에서는 아이디값을 보통 세션과 쿠기에 담아서 사용하게 합니다. 
	// 하지만 .. 응용을 할 수 있습니다. 
	
	%>
	<h1>Forward Tag Example1</h1>
	당신의 아이디는
	<b><%=id%></b>이고
	<p />
	패스워드는
	<b><%=pwd%></b> 입니다.
</body>
</html>