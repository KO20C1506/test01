<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="mysql.DB" scope="request" />
	<jsp:setProperty property="*" name="member"/>
	<jsp:useBean id="data" class="mysql.HOGUDAO" scope="request" />
	<%
		String id =member.getId();
		
		if(!data.isMembers(member.getId())){
			
			if(data.insertMember(member) != 1){
				out.print("<script>alert('사용 가능합니다.'); </script>");
				
			}	
			
		}else{
			out.print("<script>alert('중복된 아이디 입니다!.'); </script>");
			out.print("<a href='hogu_logincheck.jsp'><input id='check' type='button' value='돌아가기>>'></a><br><br>");
			
	
		}
	%>
	사용하기<form action='hogu_login.jsp' method='post'><input type='submit' class='check' name='id' id='btn' value='<%=id %>'></form>
	
</body>
</html>