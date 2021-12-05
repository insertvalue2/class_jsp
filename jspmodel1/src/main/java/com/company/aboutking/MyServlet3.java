package com.company.aboutking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/teste3")
public class MyServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MyServlet3() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 로 실행에 제어권을 넘김 - doPost 메서드 호출  
//		doPost(request, response);
	}

	// post 방식 이해하기 (암호화 되서 사용자에 요청값들이 날라온다)  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String food = request.getParameter("food");
		String recipe = request.getParameter("recipe");
		
		System.out.println("food : " + food);
		System.out.println("recipe : " + recipe);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter(); 
		
		// DB에 저장 
		// 저장 결과에 따라서 응답 결과를 다르게 보내줘야 한다. 
//		boolean result = false;
		boolean result = true;
		
		if(result) {
			// 성공
			out.println("<html>");
			out.println("<h1 style='color:green'>저장성공</h1>");
			out.println("</html>");
		} else {
			// 실패
			out.println("<html>");
			out.println("<h1 style='color:red'>저장실패</h1>");
			out.println("</html>");
		}
		
	}

}
