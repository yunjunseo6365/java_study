<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
%> 

<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>include2.jsp</title>
</head>
<body>
  안녕하세요. 프로젝트 JSP 시작입니다!!! 
<br>
<jsp:include page="project_image.jsp" flush="true">
	<jsp:param name="name" value="프로젝트" />
	<jsp:param name="imgName" value="project.png" />
</jsp:include>
<br>
  안녕하세요. 프로젝트 JSP 끝 부분입니다.!!! 
</body>
</html>