<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Include Tag Example</h1>
	1. includePageTag1 요청이 되었습니다.<p/>
	2. 액션태그인 include를 확인하고 ---> 요청을 한 단계 더 갑니다.<p/>
	<hr>  
	<jsp:include page="includeTagTop.jsp"/>
	3. includeTagTop.jsp 에서 결과를 처리하고 돌아 왔습니다.<p/> 
	
	include ActionTag의 Body 입니다. 
</body>
</html>