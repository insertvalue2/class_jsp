<%@ page contentType="text/html;charset=EUC-KR"%>
<%
   String name = request.getParameter("name");
   String bloodType = request.getParameter("bloodType");
%>
<h1 style="color: red">Forward Tag Example2</h1>
<b><%=name%></b>���� ��������
<b><%=bloodType%></b>���̰�
���� ������ �������Դϴ�.