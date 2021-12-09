<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<h1>세션 로그인 처리 1</h1>
	
<%
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//내장객체
		session.setAttribute("id", id);
		session.setAttribute("pwd", pwd);
		
		// 세션에 유지 시간 설정 
		session.setMaxInactiveInterval(60 * 10); // 60초
		
%>


		<p/>
		
		<h1>당신의 아이디는<%=id %> 입니다.</h1>
		
		
		<!-- 포워드 -->
		<%-- <a href="sessionLoginProc2.jsp?=<%=id%>&pwd=<%=pwd%>">다음페이지로 이동</a> --%>
		
		<a href="sessionLoginProc2.jsp">다음페이지로 이동</a>
		
</body>
</html>