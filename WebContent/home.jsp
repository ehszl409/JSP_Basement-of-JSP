<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바코드를 적을 수 있는 방법 
	 톰캣이 해석하는 부분 		-->
<%
	String name = "홍길동";
%>
<h1><%=name %></h1>
</body>
</html>