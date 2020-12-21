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
<title>데이터삭제하기</title>
</head>
<body>
<%	
	String username = "SHIN";
	String password = "7787";
	String email = "SHIN@naver.com";
	int id = 4;
	Connection conn = DBConn.getConnection();
	String sql = "UPDATE users SET username = ?, password = ?, email = ? WHERE id = ?";
	
	PreparedStatement pstmt = 
			conn.prepareStatement(sql);
	pstmt.setString(1, username);
	pstmt.setString(2, password);
	pstmt.setString(3, email);
	pstmt.setInt(4, id);
	pstmt.executeUpdate();
%>
<h3>UPDATE SUCCESS</h3>
</body>
</html>