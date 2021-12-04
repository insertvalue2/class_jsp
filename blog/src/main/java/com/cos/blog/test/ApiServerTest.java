package com.cos.blog.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Dynamic Web Page를 만들 때 사용되는 자바 기반의 웹 애플리케이션 프로그래밍 기술입니다.
//  다양한 요청(Request)과 응답(Response)이 있기 마련이고 이 요청과 응답에는 규칙이 존재합니다.
// 서블릿은 이러한 웹 요청과 응답의 흐름을 간단한 메서드 호출만으로 체계적으로 다룰 수 있게 해주는 기술

// 주요 특징 
// 클라이언트의 Request에 대해 동적으로 작동하는 웹 애플리케이션 컴포넌트


// localhost:8080/blog/test(GET, POST)
@WebServlet("/test") // web.xml 서블릿 맵핑 안해도 된다. 

public class ApiServerTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ApiServerTest() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		// get 방식은 찾기 !!!  
//		String food = request.getParameter("food");
//		String recipe = request.getParameter("recipe");
//		// DB에 접근해서 정보를 검색하고 결과를 받아서 
//		// 요청이 왔으면 응답을 한다. 
//		response.setContentType("text/plain; charset=utf-8");
//		String content = response.getContentType();
//		System.out.println("content : " + content);
//		PrintWriter out = response.getWriter(); 
//		
//		out.print("<html>");
//		out.print("<body>");
//		out.print("<p>Hello</p>");
//		out.print("</body>");
//		out.print("</html>");
//		out.flush();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 응답방식 
		// 1. text/plain
		// 2. text/html  
		// 3. application/json
		
		// 요청을 받고 분석 
		request.setCharacterEncoding("utf-8");
		String food = request.getParameter("food");
		String recipe = request.getParameter("recipe");
		
//		System.out.println("food value: " + food );
//		System.out.println("recipe value : " + recipe);
		
		// DB 에 insert 하고 끝 
		
		int result = 1; // 정상(디비에서 실행된 결과 1, -1) 
		if(result == 1) {
			// 성공 
		} else {
			// 실패 
		}
		// 1.
		
		// 결과를 출력할때 사용
//		response.setContentType("text/plain; charset=utf-8;"); 
		response.setContentType("text/html; charset=utf-8;");
//		response.setContentType("application/json; charset=utf-8;");

		
		PrintWriter out = response.getWriter();

		
//      1번
//		out.println("성공");
//		out.print("food : " + food + "\n" + "recipe : " + recipe);
//		out.flush();
		
//		2번
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>");
		out.print("등록성공 : " + food + " : " + recipe);
		out.print("</h1>");
		out.print("</body>");
		out.print("<html>");
		out.flush();
		
//		3번
//		if(result == 1) {
//			// 성공
//			out.print("{\"food\" : "+food+", \"recipe\" : "+recipe+" }");
//		} else {
//			// 실패
//			out.print("{\"error\":\"fail\"}");
//		}
		
//		out.print("{\"error\":\"fail\"}");
//		out.flush();
		
	}

}
