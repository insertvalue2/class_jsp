<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>1 부터 10까지 화면에 출력 </h1>	
	<!-- 1, 2, 3, 4, 5, 6, 7, 8, 9, 10; --> 
		
	<!-- 스크립트 릿 -->
	<%
		// 1. 콘솔창에 출력 
		// 1 ~ 10 까지 
		for(int i = 1; i <= 10; i++) {
			/* System.out.print(i); */
			%>
			
			<!-- 표현식 -->
			
			<%=i%>
			<br> <!-- 옆으로 사용 후 추가  -->
							
			<%			
		}
	%>
	
</body>
</html>