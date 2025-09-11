<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	String id= (String)request.getAttribute("id");
	String pwd= (String)request.getAttribute("pwd");
	String name= (String)session.getAttribute("name");
	String email= (String)application.getAttribute("email");
%>
