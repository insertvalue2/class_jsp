<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>회원가입</h1>
	<form class="login" action="signupProc.jsp" method="post" accept-charset="UTF-8">
		<div>
			<label for="username">사용자 아이디</label>
			<input type="text" name="username" id="username" value="abc1">
		</div>
		<div>
			<label for="password">패스워드</label> <input type="password"
				name="password" id="password" value="asd1234">
		</div>
		<div>
			<label for="passwordCheck">패스워드 확인</label> <input type="password"
				name="passwordCheck" id="passwordCheck">
		</div>
		<div>
			<label for="email">email</label> <input type="text"
				name="email" id="email" value="abc@naver.com">
		</div>
		<div>
			<label for="address">address</label> <input type="text"
				name="address" id="address" value="해운대구우동가나다라마">
		</div>

		<div class="actions">
			<input type="submit" name="login" value="회원가입">
		</div>
	</form>
</body>
</html>