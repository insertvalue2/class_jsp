<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP스크립트 Example</title>
</head>
<body>
	<!--
		스크립트 요소란? 
		JSP 프로그래밍에서 사용되는 문법의 표현 형태
		
		스크립트 요소 
		
		1.선언문 
		2.스크립트릿 
		3.표현식
		4.주석  
	  -->

	<h1>Script Example1</h1>
	<%!
		String declaration = "선언문"; // 멤버 변수 선언
	%>

	<%!
	public String decMethod() {
		return declaration;
	}
	%>
	
	<!-- 스크립트 릿 -->
	<%
		/*
		스크립트릿은 선언문과 
		달리 메소드 선언은 할 수 없음.
		
		(변수 선언, for, while, if 등.. 사용 가능)
		*/
		String scriptlet = "Scriptlet";
		String comment = "Comment";
				
		out.println("내장객체를 이용한 출력 : " + declaration + "<p/>");
	%>	
	
	선언문의 출력1 : <%=declaration%> <p/>
	<!-- ; 세미 콜론은 표기 하지 않음 서블릿 코드로 변환될 때 자동적으로 세미콜론은 붙여짐  -->	
	선언문의 출력2 : <%=decMethod() %> <p/>
	스크립트릿 출력 : <%=scriptlet %> <p/>
	
	<%-- JSP 주석2 : <%=comment%>
		
	--%>
	
	<%
		/* 
			여러줄 주석 
		*/
	%>
	
	<% //주석(한줄 주석)  %>

</body>
</html>