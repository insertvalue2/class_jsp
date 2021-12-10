<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="userDao" class="com.my.web.dao.UserDao" />
<jsp:useBean id="userBean" class="com.my.web.beans.UserBean" >
	<jsp:setProperty property="*" name="userBean"/>
</jsp:useBean>

<%
	
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	int result = userDao.save(userBean);
	
	String msg = "회원가입 실패";
	String location = "signup.jsp";
	
	if(result == 1) {
		msg = "회원가입 완료";
		location = "login.jsp";
	}

%>


<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>