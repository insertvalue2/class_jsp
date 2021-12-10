<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>회원 정보 확인</h1>
		<div>
			<label for="">회원 고유 번호 : ${sessionScope.idKey}</label>
		</div>
		<div>
			<label for="">user name : ${sessionScope.username }</label>
		</div>
		<div>
			<label for="">email : ${sessionScope.email }</label>
		</div>
		<div>
			<label for="">가입일자 : ${sessionScope.createDate }</label>
		</div>
	<div class="account">
		<p>
			<a href="../user/logoutProc.jsp">로그아웃</a>
		</p>
	</div>
</body>
</html>