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
<title>Insert title here</title>
</head>
<body>
	<h1>안녕~ DORO는~ <%=name %></h1>
	<h1>나이는 <%=age %>살이야!</h1>
	<h1>키는 <%=167 %>cm 야!</h1>
	<%-- JSP 주석 쓰는법 --%>
	<!-- HTML기반 스크립트 주석 <h1>111</h1> 주석 -->
	<h1>나이 + 10은 <%=Integer.parseInt(age)+10%> 이야!</h1>
</body>
</html>