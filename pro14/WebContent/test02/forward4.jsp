<%@ page language="java" contentType="text/html; charset=UTF-8"
import="sec01.ex01.*, java.util.*"
pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	request.setAttribute("pwd", "1234");
	request.setAttribute("id","hong");
	session.setAttribute("name", "홍길동");
	application.setAttribute("email", "hong@test.com");
	request.setAttribute("address", "서울시 강남구");
%>
<html>
<head>
<meta charset="UTF-8">
<title>forward4</title>
</head>
<body>
	<jsp:forward page="member4.jsp" />
</body>
</html>