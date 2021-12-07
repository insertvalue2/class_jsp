<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		/* 세션 방식과 파라미터 방식 비교  */
		String name1 = (String)session.getAttribute("name1");
		String name2 = request.getParameter("name2");
	%>
	
	<%=name1%> 님 반갑습니다
	<%=name2%> 님 반갑습니다
	
</body>
</html>