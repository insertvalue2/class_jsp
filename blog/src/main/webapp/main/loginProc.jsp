<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");
String password = request.getParameter("password");

if(id == null || password == null) {
	
	response.sendRedirect("login.jsp");
	
} else {
	
	// DB 조회 
	
} 

%>
