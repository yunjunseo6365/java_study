<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	int iScore = Integer.parseInt(request.getParameter("score"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 결과</title>
</head>
<body>
<h1>시험 점수: <%=iScore %></h1>
<%	if(iScore >= 90){ %>
	<h1>A학점 입니다.</h1>
<% } else if(iScore >= 80){ %>
	<h1>B학점 입니다.</h1>
<% } else if(iScore >= 70){ %>
	<h1>C학점 입니다.</h1>
<% } else if(iScore >= 60){ %>
	<h1>D학점 입니다.</h1>
<% } else { %>
	<h1>F학점 입니다.</h1>
<% } %>
<br>
<a href="scoreTest.html">시험점수입력</a>
</body>
</html>