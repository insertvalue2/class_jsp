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
	    /* sevice 메서드 에서 만들어 주는 요소 
	    	메서드 안에 메서드를 사용하는 것과 마찬 가지 이다. 
	    public void intCrement(){
		
		} */
	%>

	<%!
	public void intCrement() {
		
	}
	
	public int intAdd(int a, int b) {
		return a + b;
	}
	%>

	<%! 
		int a =10; //멤버 변수
	%>
	
	<%! 
		//int a =10; //멤버 변수 --> 멤버 변수 중복 선언 
	%>

	<% 
		int a =100; //지역 변수
	%>

	<% 
		//int a =100; //지역 변수 --> 지역변수 중복 선언   
	%>
	
	<div style = "border: 1px solid #ddd;padding: 100px;
	width: 200px;color:red;background-color: #F5F5F5; text-align: center;">
		<div style="color=red;">
			<%= 
			intAdd(10, 50)
			%>	
	</div>
	</div>
</body>
</html>