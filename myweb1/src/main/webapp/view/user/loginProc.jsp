<%@page import="com.my.web.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="userDao" class="com.my.web.dao.UserDao"/>

<%
	
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String url = "login.jsp";
	String msg = "로그인에 실패";
	
	UserBean bean = userDao.login(username, password);
	
	if(bean != null) {
		session.setAttribute("idKey", bean.getId());
		session.setAttribute("username", bean.getUsername());
		session.setAttribute("email", bean.getEmail());
		session.setAttribute("createDate", bean.getCreateDate());
		msg = "로그인에성공";
		url = "../main/userInfo2.jsp";
	}  

%>

<script>
	alert("<%=msg%>");
	location.href="<%=url %>";
</script>