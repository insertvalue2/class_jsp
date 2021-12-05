<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
		지시자와 액션태그 
		page 
		-- include
		--  taglib
	  -->
	<%-- <%@page info="study.co.kr" %>
	  <%@page language="java" %>
	  <%@page contentType="text/html" %>
	  <%@page contentType="text/html; charset=utf-8" %> --%>

	<h1>Directive Example1</h1>
	<%=this.getServletInfo()%>
</body>
</html>