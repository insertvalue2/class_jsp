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
		request.setCharacterEncoding("utf-8");
	%>
	<table border="1" width = "800">
		<!-- Top -->
		<tr height="150">
 			<td align="center" colspan="2">
 				<jsp:include page="top.jsp" >			
					<jsp:param value="내정보" name= "id" />
				</jsp:include>
			</td>
		</tr>
		
		<!-- 단순이 차이점 페이지 포함 개념 -->
		<%-- <%@ include file="top.jsp" %> --%>
		
		<tr height="400">
			<!-- Left -->
			 <td align="center" width = "200"><jsp:include page="left.jsp"/></td>
			 <!-- Center -->	
			 <td align="center" width = "600"><jsp:include page="center.jsp" /></td>
		</tr>
		
		<!--Buttom-->
		<tr height="100">
 			<td align="center" colspan="2"><jsp:include page= "bottom.jsp" /></td>
		</tr>
	</table>
</body>
</html>