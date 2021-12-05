<%@page contentType="text/html;charset=utf-8"%>
<h1>Directive Example4</h1>
<%@include file="directiveTop.jsp"%>
include지시자의 Body 부분입니다.
<%@include file="directiveBottom.jsp"%>


<%
	/* 
		include 지시자 (주의 include 액션 태그와 기능적으로 약간에 차이가 있다.) 
		지정한 파일을 해당 JSP 파일에 삽입하는 include 지시자 이다.
		(소스의 내용이 텍스트로 포함)
		
		액션태그는 : 처리 결과를 포함시킨다 
		
		: 마치 3개의 파일을 하니의 페이지처럼 만들어 주고 하나의 페이지 처럼 
		프로그래밍 해야 한다. 
		
		ex) 같은 멤버 변수를 중복 사용하면 안됨
		-- 상단 헤더 부분 
		
		-- 하단 footer 부분 
		
	*/
%>

