<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			h1 {
				display: grid;
			}
		</style>
		<script>

		</script>
	</head>

	<body>
		<!--login_proc.jsp 에서 넘어온 아이디와 패스워드를 읽어 드림   -->

		<h1>내장객체(내부객체) Request 스코프 확인</h1>

		<% //사용자의 정보가 저장되어 있는 객체 request의 geparameter() 사용자의 정보를 추출
			//읽어드려서 변수 id에 저장
			String id=request.getParameter("id");//사용자의 id 값을
			String pass=request.getParameter("pass"); %>


			<h2>
				당신의 아이디는<%= id %>이고 패스워드는 <%=pass %>입니다.
			</h2>

	</body>

	</html>
