package com.cos.blog.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test3")
public class ApiSeverTest3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ApiSeverTest3() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		- 200 : 요청이 정상적으로 처리 됨
		- 307 : 임시로 페이지가 리다이렉트 됨
		- 400 : 클라이언트의 요청이 잘못된 구문으로 구성 됨
		- 401 : 접근이 허용되지 않음
		- 404 : 지정된 URL 을 처리하기 위한 자원이 존재하지 않음
		- 405 : 요청된 메서드는 허용되지 않음
		- 500 : 서버 내부 에러 (JSP에서 익셉션이 발생하는 경우)
		- 503 : 서버가 일시적으로 서비스를 제공할 수 없음 (급격하게 부하가 몰리거나 서버가 임시 보수 중인 경우)
		 */
		response.sendRedirect("error.jsp");

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 응답 받는 mimeType 확인해 보기 
		String getMimeType = request.getContentType();
		System.out.println("getMime :" + getMimeType );
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		System.out.println("name :" + name);
		System.out.println("age :" + age);
		
		
		response.setContentType("text/html; charset=utf-8");
		String setMimeType = response.getContentType();
		System.out.println("setMimeType :" + setMimeType );
		
		// 이름 : name 
		// 나이 : age 
		
		
		PrintWriter out = response.getWriter(); 
		out.print("<html>");
		out.print("<body>");
		out.print("<p>이름 : " +name+ "</p>");
		out.print("<p>나이 : " +age+ "</p>");
		out.print("<p>회원 가입 완료</p>");
		out.print("</body>");
		out.print("</html>");
		out.flush();
	}

}
