<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<title>JSP 스크립트 Example</title>

</head>

<body>

 <h1>Script Example</h1>

 <%!

  String declaration = "Declaration";

 %>

 

 <%!

  public String decMethod() {

  return declaration;

 } 

 %>

 

 <%

  String scriptlet = "Scriptlet";

  String comment = "Comment";

  out.println("내장객체를 이용한 출력 : " + declaration + "<p>");

 %>

 

 선언문 츨력 1 : <%=declaration %><p>

 선언문 츨력 2 : <%=decMethod()%><p>

 스크립트릿의 출력  : <%=scriptlet %><p>

 <!-- JSP 주석부분 -->

 <!--   JSP 주석 1  :   <%=comment%>-->

 <%-- JSP 주석 2  :   <%=comment%>--%>

 <!-- JSP 주석

   /*

   (여러줄 주석)

   */

 부분 -->

 

 <%// 주석(한줄 주석) %>


</body>
</html>