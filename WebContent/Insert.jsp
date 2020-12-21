<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cos.test02.config.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터추가하기</title>
</head>
<body>
<%
	String username = "park";
	String password = "2020";
	String email = "park@naver.com";
	String sql = "INSERT INTO users(username, password, email) VALUES(?, ?, ?)";
	
	Connection conn = DBConn.getConnection();
	PreparedStatement pstmt = 
			conn.prepareStatement(sql);
	pstmt.setString(1, username);
	pstmt.setString(2, password);
	pstmt.setString(3, email);
	pstmt.executeUpdate();
	
%>
<h3>INSERT SUCCESS</h3>
</body>
</html>