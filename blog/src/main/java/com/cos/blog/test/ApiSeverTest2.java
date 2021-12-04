package com.cos.blog.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

@WebServlet("/test2")
public class ApiSeverTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ApiSeverTest2() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 쿼리스트링 없이 사용 
		// 돌려줄 MIME 타입을 지정해준다. 기본값은 null 
		response.setContentType("application/json; charset=utf-8;");
		PrintWriter out = response.getWriter();
		out.print("{\"id\": 1, \"name\" : \"홍길동\", \"username\" : \"Bret\", \"email\" : \"abc@naver.com\"}");
		out.flush();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			doGet(request, response);
	}

}
