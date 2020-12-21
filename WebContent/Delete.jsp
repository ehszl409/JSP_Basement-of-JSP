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
	Connection conn = DBConn.getConnection();
	String sql = "DELETE FROM users WHERE id = 3";
	
	PreparedStatement pstmt = 
			conn.prepareStatement(sql);
	pstmt.executeUpdate();
%>
<h3>DELETE SUCCESS</h3>
</body>
</html>