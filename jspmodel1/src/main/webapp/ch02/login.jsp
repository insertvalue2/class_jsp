<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	
</style>
<script type="text/javascript">
	
	$(document).ready(function() {
		
		$("h2").css("color", "red");
		
		
	});
</script>
</head>
<body>
	<section>
		<h2>로그인 페이지</h2>
		<form action="loginProc.jsp" method="post">
			<table width="400" border="1">
				<tr height="60">
					<td align="center" width="150">아이디</td>
					<td align="left" width="250"><input type="text" name="id">
					</td>
				</tr>
				<tr height="60">
					<td align="center" width="150">패스워드</td>
					<td align="left" width="250"><input type="password"
						name="pass"></td>
				</tr>

				<tr height="60">
					<td colspan="2" align="center"><input type="submit" value="전송">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>