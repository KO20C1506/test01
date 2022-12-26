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
	
	<h2>회원가입정보</h2>
		아이디 : <jsp:getProperty property="id" name="login"/><br>
		비밀번호 : <jsp:getProperty property="pw" name="login"/><br>
		이름 : <jsp:getProperty property="name" name="login"/><br>
		전화번호 : <jsp:getProperty property="tel" name="login"/><br>
		이메일 : <jsp:getProperty property="email" name="login"/><br>
		직위 : <jsp:getProperty property="magic" name="login"/><br>
</body>
</html>