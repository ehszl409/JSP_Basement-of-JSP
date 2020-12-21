package com.cos.test02.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConn {

	public static Connection getConnection() {
		Connection conn = null;
		// SYS = DB이름 ? serverTimezone=Asia/Seoul = 접속 하는 장소와 시간.
		String url = "jdbc:mysql://localhost:3306/ssar?serverTimezone=Asia/Seoul";
		String username = "ssar";
		String password = "bitc5600";
		try {
			// 대문자 유의.
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("DB 연결성공");
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
