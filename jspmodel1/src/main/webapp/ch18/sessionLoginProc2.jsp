<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<h1>세션 로그인 처리 2</h1>
	
<%
		/* request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd"); */
		
		String id = (String)session.getAttribute("id");
		String pwd = (String)session.getAttribute("pwd");
		
%>


		<p/>
		
		<h1>당신의 아이디는<%=id %> 입니다.</h1>
		<h1>당신의 패스워드는<%=pwd %> 입니다.</h1>

</body>
</html>