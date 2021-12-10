<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>로그인</h1>
	<form class="login" action="loginProc.jsp" method="post">
		<div>
			<label for="username">아이디</label>
			 <input type="text" name="username" id="username" value="questzz1">
		</div>
		<div>
			<label for="password">패스워드</label> <input type="password"
				name="password" id="password" value="asd123">
		</div>

		<div class="actions">
			<input type="submit" name="login" value="Login">
		</div>
	</form>

	<div class="account">
		<p>
			회원가입은<a href="signup.jsp"> 여기를... </a>
		</p>
	</div>

	<div class="contact">
		<p>If you need any other help, please contact the helpdesk.</p>
	</div>
</body>
</html>