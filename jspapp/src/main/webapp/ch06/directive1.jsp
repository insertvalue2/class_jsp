<%@page contentType="text/html;charset=utf-8" 
	import="java.util.*"
	session="true" 
	buffer="16kb"
	autoFlush="true"
	isThreadSafe="true"
 %>
 <!-- 
 	여기서 contentType 속성은 Jsp 페이지의 내용이 어떤 형태로 출력을 할 것이인지 
 	MIME 형식으로 브라우저에게 알려주는 역활을 하는 속성 
 	 
 	session 속성 : Jsp 페이지가 HttpSession을 사용할지 여부를 지정하는 속성 
 	session : 두 컴퓨터 네트워크 장치의 논리적인 연결 상태이며 특히 웹상에서 브라우저와 
 	서버가 계속 연결된 상태를 나타낸다(논리적) 
 	
 	
 	buffer : jsp 페이지의 출력 크기를 킬로바이트 단위로 지정 기본값 8kb 
 	
 	buffer : 동작 속도가 크게 다른 두 장치간에 인터페이스가 속도차를 지정하기 위해 
 	이용되는 일시적인 기억 영역을 말합니다.   
 
 	autoFlush - 버퍼가 다 찼을 경우 자동적으로 비워지게 되어 요청한 내용을 브라우저에게 
 	전송 / true , none 
 	
 	isThreadSafe : 하나의 JSP 페이지가 동시에 여러 브라우저의 요청을 처리할 수 있는지 여부 
 	기본값 true 
 	false -> 요청한 순서대로 처리 
 	
 
 	
 	-->
 <h1>Directive Example2</h1>
 
 <%
 	Date date =  new Date();
 %>
 
 현재의 날짜와 시간은? <p/>
 
 <%=date.toLocaleString()%>
 
 
 
  