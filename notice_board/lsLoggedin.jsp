<%@page import="common.jsfuntion"%>
<%@page import ="utils.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if (session.getAttribute("UserId")==null){
	JSFunction .alertLocation("로그인후 이용해 주십시오.","../06Session/LoginForm.jsp",out);
	return;
}
%>
</body>
</html>