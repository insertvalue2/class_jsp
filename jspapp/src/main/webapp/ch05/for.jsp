<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>For Example</h1>
	1에서 10까지 합은 ?
	<p>
		<%
		int i, sum = 0;
		
		for (i = 1; i <= 10; i++) {
			if (i < 10) {
		%> <!-- 스크립트 릿  -->
		
			<%=(i + " +")%> <!-- 표현식 -->
			
		<%
			} else {
				out.println(i + " = ");
			}//if-else
				sum += i;
		} //for
		%> <!-- 스크립트 릿   -->
		
		<%=sum%> <!-- 표현식 -->
</body>
</html>