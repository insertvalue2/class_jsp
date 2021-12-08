package com.company.aboutking.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverTest {

	public static void main(String[] args) {

		Connection connection;
		String connUrl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
		String userId = "root";
		String pwd = "asd1234";

		try {
			// MySQL JDBC Driver 이름입니다.
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(connUrl, userId, pwd);
			System.out.println("Success");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
