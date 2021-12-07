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
	
		// 15 
		request.getParameter("id");
	%>
	
	<!-- request로 넘어온 데이터를  자바 빈즈랑 맵핑 시켜주는 userBean  -->
	<!-- 객체 생성 MemberBean mbean = new MemberBean() 같은 것  -->
	<jsp:useBean id="mbean" class="com.company.aboutking.bean.MemberBean"> 
		<!-- Jsp 내용을 자바빈 클래스(MemberBean)에 데이터를 넣어 준다.  -->
		<!-- 필요하다면 하나씩 설정할 수 있다.  -->
		<jsp:setProperty name ="mbean" property="id"/>	
		
		<jsp:setProperty name ="mbean" property="*"/>
		<!-- * 자동으로 맵핑 (많이 하는 실수 멤버 변수 이름이 다르면 맵핑안됨!!) -->  
	</jsp:useBean>
		
	<!-- useBean 을 사용하는 이유 : 한번에 맵핑 시키기 위해서 ...   -->
	
	<h2>당신의 아이디는 : <jsp:getProperty property="id" name="mbean"/></h2>
	<h2>당신의 아이디는 : <jsp:getProperty property="pass1" name="mbean"/></h2>
	<h2>당신의 아이디는 : <jsp:getProperty property="email" name="mbean"/></h2>
	
	<!-- 다른 방식으로 사용도 가능   -->
	당신에 주소는 <%=mbean.getAddress()%> 입니다.
	
</body>
</html>