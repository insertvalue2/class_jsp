<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/login.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<h1>Login here</h1>
	<form class="login" action="loginProc.jsp" method="post">
		<div>
			<label for="username">아이디</label> <input type="text"
				name="username" id="id">
		</div>
		<div>
			<label for="password">비밀번호</label> <input type="password"
				name="password" id="password">
		</div>
		<div class="actions">
			<input type="submit" name="login" value="Login"> <a
				href="/forgot">I forgot my password</a>
		</div>
	</form>
	<div class="account">
		<p>
			회원가입 <a href="">여기를 눌러 주세요</a>.
		</p>
	</div>
	<div class="contact">
		<p>고객센터 : 070-1234-1234</p>
	</div>
</body>
</html>