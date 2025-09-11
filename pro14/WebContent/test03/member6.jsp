<%@ page language="java" contentType="text/html; charset=UTF-8"
import="java.util.*"
pageEncoding="UTF-8"
isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List dataList=new ArrayList();
	dataList.add("hello");
	dataList.add("world");
	dataList.add("안녕하세요!!");
%>
<c:set var="list" value="<%=dataList %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 실습</title>
</head>
<body>
	<c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
		i=  ${i}   &nbsp;&nbsp;&nbsp;  인덱스: ${loop.index }
        &nbsp;&nbsp;&nbsp;&nbsp;  반복횟수: ${loop.count } 
        &nbsp;&nbsp;&nbsp;&nbsp;  첫번째: ${loop.first } 
        &nbsp;&nbsp;&nbsp;&nbsp;  마지막: ${loop.last } <br> 
	</c:forEach>
	<br>
	<c:forEach var="i" begin="1" end="10" step="2" varStatus="loop">
		i=  ${i}   &nbsp;&nbsp;&nbsp;  인덱스: ${loop.index }
        &nbsp;&nbsp;&nbsp;&nbsp;  반복횟수: ${loop.count } 
        &nbsp;&nbsp;&nbsp;&nbsp;  첫번째: ${loop.first } 
        &nbsp;&nbsp;&nbsp;&nbsp;  마지막: ${loop.last } <br> 
	</c:forEach>
	<br>
	<c:forEach var="i" begin="1" end="10" step="2">
		5 * ${i} = ${5*i}<br>
	</c:forEach>
	<br>
	<c:forEach var="data" items="${list}">
		${data} <br>
	</c:forEach>
	<br>
	<c:set var = "fruties" value="사과, 파인애플, 바나나, 망고, 귤" />
	<c:forTokens var="token" items="${fruties}" delims=",">
	${token} <br>
	</c:forTokens>
	<br>
	<c:set var = "fruties" value="사과, 파인애플, 바나나. 망고, 귤" />
	<c:forTokens var="token" items="${fruties}" delims=".">
	${token} <br>
	</c:forTokens>
</body>
</html>