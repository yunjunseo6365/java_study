<%@ page language="java" contentType="text/html; charset=UTF-8"
import="sec01.ex01.*, java.util.*"
pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
	List membersList = new ArrayList();
	MemberBean m1 = new MemberBean("dooly", "1234", "둘리", "dooly@test.com");
	MemberBean m2 = new MemberBean("heedong", "1234", "희동", "heedong@test.com");
	membersList.add(m1);
	membersList.add(m2);
	request.setAttribute("membersList", membersList);
%>
<html>
<head>
<meta charset="UTF-8">
<title>forward3</title>
</head>
<body>
	<jsp:forward page="member3.jsp" />
</body>
</html>