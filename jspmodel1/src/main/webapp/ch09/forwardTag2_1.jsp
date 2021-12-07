<%@page contentType="text/html;charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
 	String name = "홍길동";
 	String bloodType = request.getParameter("bloodType");
 	System.out.println("name " + name);
 %>
 <h1>Forward Tag Example2</h1>
<jsp:forward page='<%=bloodType + ".jsp"%>'>
 	<jsp:param name="name" value="<%=name%>"/>
</jsp:forward>
 <!-- a.jsp -->
 <!-- b.jsp -->
