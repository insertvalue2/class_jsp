<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
	pageEncoding : 톰캣 (서블릿 컨테이너) (웹 컨테이서) -> WAS
	웹 컨테이너가 현재 파일을 읽어 올 때 언어 설정  
	기본값 : ISO-8859-1
	ISO 8859-1 은 유니코드 문자를 표현할 수 있는 첫 번째 256 싱글바이트 인코딩입니다. Ascii 인코딩합니다
  -->    
<%@ page session="true"  %>
<!-- 세션이란 : 두 대의 컴퓨터가 연결되어 있다는 논리적인 설정 -->
<!-- 세션기법을 활용해서 로그인 처리 
	   페이지와 페이지간에 공통 데이터를 유지 시키기 위해서 사용한다.  
		(A, B, C) 
  -->
<%@ page buffer="8kb"  %>
<%@ page autoFlush="true"  %>
<!-- 바구니  -->

<!-- 먼저 오류 코드 작성   -->
<%@ page errorPage="error.jsp" %>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>화면에 보이나요???</div>
	<!-- jsp 스크립트 요소 중 스트립드 릿  -->
	<%
		/* int sum = 10 / 0 ; */
	%>
</body>
</html>



