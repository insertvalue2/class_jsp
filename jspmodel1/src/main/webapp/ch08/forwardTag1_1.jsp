<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Forward Tag Example1</h1>
	Forward Tag의 포워딩 되기 전의 페이지입니다.
	
	<%
		
	request.setCharacterEncoding("utf-8");
	// post  방식에 한글 처리 
	
	String id = request.getParameter("id"); 
	// request 객체에 담겨진 사용자 정보 중 id 만 추출
	
	String pwd = request.getParameter("pwd");
	// request 객체에 담겨진 사용자 정보 중 pwd 만 추출
	
	// sendRedirect  개념과 비교 (forward 방식)
	//response.sendRedirect("forwardTag1_2.jsp");
	// 메모리에서 객체가 사라지고 넘겨 준다. 
	
	// forward 방식인 메모리에 request 객체가 사라 있다. 
	%>
	<P/>
	<%=id %> 입니다. 
	<%=pwd %> 입니다.
	<jsp:forward page="forwardTag1_2.jsp" />
</body>
</html>



