<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	
</script>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<!--Top  -->
		<table width = "800"> 
			<tr height="100">
			<!--로고 이미지  -->
				<td colspan = "2" align = "center" width= "206">
					<img alt = "" src = "../images/my_logo1.png" width="200" height="70">
				</td>
				
				<td colspan = "4" align = "center">
					<font size= "10">CAMPING GROUND </font>
				</td>
			</tr>
			<tr height="50">
				<td width = "110" align = "center">텐트</td>
				<td width = "110" align = "center">의자</td>
				<td width = "110" align = "center">식기류</td>
				<td width = "110" align = "center">침낭</td>
				<td width = "110" align = "center">테이블</td>
				<td width = "140" align = "center"><%=request.getParameter("id") %></td>		
			</tr>
		</table>
</body>
</html>