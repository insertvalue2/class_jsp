<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Session 로그인</h2>
	<form method="post" action="sessionLoginProc.jsp">
		<table width="300" border="1" align="center" bgcolor="#FFFF99">
			<tr bordercolor="#FFFF66">
				<td colspan="2" align="center"><b>Log in</b></td>
			</tr>
			<tr>
				<td width="47%" align="center">ID</td>
				<td width="53%" align="center"><input name="id"></td>
			</tr>
			<tr>
				<td align="center">PWD</td>
				<td align="center"><input name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				   <input type="submit" value="login">
			       <input type="reset" value="reset">
			     </td>
			</tr>
		</table>
	</form>
</body>
</html>