<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width = "600" border = "1">
		<!-- Top -->
			<tr height="150" align="center">
				<td>
					<%@include file="top.jsp" %>
				</td>
			</tr>
	
		<!-- Center -->
			<tr height="400">
				<td width = "600" align="center">
					<img alt ="" src = "../images/my_logo1.png" width="400" height="300">
				</td>
			</tr>
			
		<!-- Buttom -->
			<tr height="100">
				<td width = "600" align="center">
					<%@include file="bottom.jsp" %>
				</td>
			</tr>
		</table>
</body>
</html>