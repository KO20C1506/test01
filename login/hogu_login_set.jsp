<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>
	<jsp:useBean id="login" class="mysql.DB" scope="request"></jsp:useBean>
	<jsp:setProperty property="id" name="login"/><br>
	<jsp:setProperty property="pw" name="login"/><br>
	<jsp:setProperty property="name" name="login"/><br>
	<jsp:setProperty property="tel" name="login"/><br>
	<jsp:setProperty property="email" name="login"/><br>
	<jsp:setProperty property="magic" name="login"/><br>
	
	<jsp:forward page="hogu_login_get.jsp"></jsp:forward>
</body>
</html>