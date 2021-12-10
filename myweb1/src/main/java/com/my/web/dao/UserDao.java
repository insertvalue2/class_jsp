package com.my.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.my.web.beans.UserBean;



public class UserDao {
	
	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
//	private final String JDBC_URL = "jdbc:mysql://localhost:3306/myweb?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
//	private final String JDBC_URL = "jdbc:mysql://localhost:3306/blog?serverTimezone=Asia/Seoul&characterEncoding=EUC-KR";
	private final String USER = "root";
	private final String PASS = "asd1234";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/blog?useUnicode=true&characterEncoding=UTF-8&allowPublicKeyRetrieval=true&serverTimezone=Asia/Seoul&useSSL=false";
	
	public UserDao() {
	 	 try{
	 	   Class.forName(JDBC_DRIVER);
	 	   }catch(Exception e){
	 	      System.out.println("Error : JDBC 드라이버 로딩 실패");
	 	   }
	     }

	public UserBean login(String username, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
			String sql = "SELECT id, username, email, createDate FROM user WHERE username = ? AND password = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			rs =  pstmt.executeQuery();
			if(rs.next()) {
				 UserBean user = new UserBean();
				 user.setId(rs.getString("id"));
				 user.setUsername(rs.getString("username"));
				 user.setEmail(rs.getString("email"));
				 user.setCreateDate(rs.getString("createDate"));
				 
				 return user; 
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
		return null;
	}
	
	public Vector<UserBean> getUserList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<UserBean> vlist = new Vector<UserBean>();
		try {
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
			String strQuery = "select * from user";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			while (rs.next()) {
				UserBean bean = new UserBean();
				
				bean.setId(rs.getString("id"));
				bean.setUsername(rs.getString("username"));
				bean.setEmail(rs.getString("email"));
				bean.setEmail(rs.getString("address"));
				bean.setEmail(rs.getString("createDate"));
				
				vlist.addElement(bean);
			}
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
				}
		}
		return vlist;
	}
	
	public int save(UserBean bean) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
			String sql = "INSERT INTO user(username, password, email, address, userRole, createDate) VALUES(?,?,?,?, 'USER', now())";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getUsername());
			pstmt.setString(2, bean.getPassword());
			pstmt.setString(3, bean.getEmail());
			pstmt.setString(4, bean.getAddress());
			
			int result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			return result;
			
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
		return -1;
	}
	
	
	
	
	
}
