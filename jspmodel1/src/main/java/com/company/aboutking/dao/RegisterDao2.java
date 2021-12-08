package com.company.aboutking.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.company.aboutking.bean.RegisterBean;

public class RegisterDao2 {

	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
	private final String USER = "root";
	private final String PASS = "asd1234";

	public RegisterDao2() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			System.out.println("Error : JDBC 드라이버 로딩 실패");
		}
	}

	public boolean loginRegister(String id, String pwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		
		try {
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
			String query = "select count(*) from tblRegister where id = ? and pwd = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			 if(rs.next()&&rs.getInt(1)>0) { 
	            	loginCon =true;
			 }
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
				}
		}
		return loginCon;
	}
}
