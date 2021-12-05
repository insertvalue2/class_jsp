package com.company.aboutking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//1. 주소: localhost:80/jspmodel1/test
@WebServlet("/test1") // web.xml 맴핑을 하지 않아도 된다. (편함) 
public class MyServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//2.	생명주기 life cycle
	@Override
	public void init() throws ServletException {
		System.out.println("init");
		super.init();
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("service : 스크립트릿 요소를 만들어준다.");
		super.service(req, res);
	}
	
	@Override
	public void destroy() {
		super.destroy();
//		리로드 시 확인 가능 
		System.out.println("destroy");
	}
	

    public MyServlet1() {
        super();
    	System.out.println("생성자");
    }

    // invoke (콜백 : get 방식)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
	}

    // invoke (콜백 : post 방식)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
