<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "DORO";
	public String getName() { return name; }
%>
<%
	String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿</title>
</head>
<body>
<h1>안녕~ DORO는~ <%=name %></h1>
<h1>나이는 <%=age %>살이야!</h1>
</body>
</html>