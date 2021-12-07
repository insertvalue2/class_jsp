<%@ page contentType="text/html;charset=utf-8"%>
<%
	//request.getCharacterEncoding()
   String name = request.getParameter("name");
   String bloodType = request.getParameter("bloodType");
%>
<h1 style="color: green">Forward Tag Example2</h1>
<b><%=name%></b>님의 혈액형은
<b><%=bloodType%></b>형이고
섬세한 성격에 소유자입니다.