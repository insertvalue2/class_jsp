package com.company.aboutking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// localhost:80/jspmodel1/test2
@WebServlet("/test2")
public class MyServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MyServlet2() {
        super();
    }
    
    // 1. http 통신에 request 요청 방식을 처리한다.  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------------------------------");
		System.out.println("get 방식으로 사용자가 연결을 요청 했습니다. ");
		// 2. 쿼리 스트링 방식을 처리한다. 
		// http://localhost:8080/jspmodel1/test2?name=%22%ED%99%8D%EA%B8%B8%EB%8F%99%22&age=30
		String name = request.getParameter("name");
		String age = request.getParameter("age");
			
		System.out.println("name : " + name);
		System.out.println("age : " + age);
		
		
		// 3. MIME 타입을 이해하기 (동시에 언더설정도 처리)
		// 3.1 언어 셋팅
//		response.setContentType("text/html; charset=EUC-KR;");
		// 3.2 MIME 타입 설정 (브라우저한테 어떻게 해석하라고 알려 줘야 한다)  
//		response.setContentType("text/plain; charset=utf-8;");
		// 3.3 html head 에 정보가 저장 되어 브라우저는 먼저 헤더 부터 확인하고 body 부분을 처리 한다. 
		
		// 3.4 json 방식으로 응답주기 
		response.setContentType("application/json; charset=utf-8;");
		
		// 요청이 왔으면 응답이 있어야 한다. 
		PrintWriter out = response.getWriter();
		
		// html 
//		out.println("<html>");
//		out.println("<head>");
//		out.println("</head>");
//		out.println("<body>");
//		out.println("<div style='background-color:red;'>");
//		out.println("<h1>");
//		out.println("응답을 돌려 줍니다.");
//		out.println("</h1>");
//		out.println("</div>");
//		out.println("</body>");
//		out.println("<html>");
//		name = "응답결과 " + name;
//		age = "응답결과 " + age; 
		
		// json 방식으로 응답 처리 
		out.print("{\"name\" : "+name+", \"age\": "+age+"}");
		out.flush();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
