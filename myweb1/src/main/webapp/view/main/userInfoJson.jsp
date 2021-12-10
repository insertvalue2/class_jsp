<%@page import="com.google.gson.JsonArray"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.my.web.beans.UserBean"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="userDao" class="com.my.web.dao.UserDao"/>

<%

	
	// http://mvnrepository.com/ 
	
    response.setContentType("application/json");
	
	// 시나리오 1 
	/* 	Gson gson = new Gson();
	//Json key, value 추가
	JsonObject jsonObject = new JsonObject();
	jsonObject.addProperty("name", "anna");
	jsonObject.addProperty("id", 1);

	//JsonObject를 Json 문자열로 변환
	String jsonStr = gson.toJson(jsonObject);

    response.getWriter().write(jsonStr); */
    
    // 시나리오 2 
    /* UserBean user = userDao.login("questzz1", "asd123");
    Gson gson = new Gson();
    
    String jsonStr = gson.toJson(user);    
    response.getWriter().write(jsonStr); */
	
    
 	// 시나리오 2 
    Vector<UserBean> list = userDao.getUserList();
    String json = new Gson().toJson(list);
    response.getWriter().write(json);    
    
%>


