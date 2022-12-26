<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<style type="text/css">

.nav-link {
   color: white; /*  font-weight: bolder; */
   
}
.card-body p a{
color:black;
}
.nav-link:hover{
color:gray;
}
.nav-item dropdown:hover{
color:#951e13;
}

.carding{
overflow: hidden;
}
.cardimg:hover{
    box-shadow: 2px 2px 2px gray; 
}

#a{font-size: 12px}
#check{background-color: #951e13; color: white; border: none; border-radius: 15px}
html, body {
    margin: 0;
    padding: 0;
    height: 100%;
}

#bf {
    min-height: 100%;
    position: relative;
}

#b {
    margin-top: 100px;
    padding-bottom: 241px; 
}

footer {
    width: 100%;
    height: 241px; 
    position: absolute;  
    bottom: 0;
    left: 0;
}

</style>

</head>
<body>

<div class="fixed-top">
  <div class="collapse" id="navbarToggleExternalContent">
    <div style="background-color: #951e13; "> <!-- 숨기기색상1 -->
    
    
       <!-- 위에 네비 -->
<ul class="nav justify-content-end"  style="background-color:#951e13;">
  
 <li class="nav-item">
    <a class="nav-link" href="#" id="a">자주묻는질문(FAQ)</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="hogu_log.html" id="a">로그인/회원가입</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" id="a">LMS</a>
  </li>
  <li class="nav-item dropdown pr-5">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false" id="a">언어</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#" id="a">한국어</a>
      <a class="dropdown-item" href="#" id="a">English</a>
      <a class="dropdown-item" href="#" id="a">日本語</a>
    </div></li>
   <form class="d-flex pr-5 pt-1 pb-1">
      <input class="form-control mr-1" type="search" placeholder="Search" aria-label="Search" id="a">
      <button class="btn btn btn-outline-light-success" type="submit"><span style="color:white">Search</span></button>
    </form>
</ul>
    
    <!-- 아래네비 -->
<nav class="navbar navbar-expand-lg  navbar-light bg-light" style="font-size: 30px;">
      <a class="navbar-brand pl-5" href="hogu_log.html"><img src="../img/logo3.png"
         width=auto height="80"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
         <ul class="navbar-nav">
            <li class="nav-item dropdown"><a
               class="nav-link dropdown-toggle" href="#" role="button"
               data-toggle="dropdown" aria-expanded="false"> 소개 </a>
               <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">총장말씀</a> <a
                     class="dropdown-item" href="#">연혁</a> <a class="dropdown-item"
                     href="#">비전</a> <a class="dropdown-item" href="#">오시는 길</a>
               </div></li>
            <li class="nav-item dropdown"><a
               class="nav-link dropdown-toggle" href="#" role="button"
               data-toggle="dropdown" aria-expanded="false"> 연구 </a>
               <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">마법연구</a> <a
                     class="dropdown-item" href="#">협회</a>
               </div></li>
            <li class="nav-item dropdown"><a
               class="nav-link dropdown-toggle" href="#" role="button"
               data-toggle="dropdown" aria-expanded="false"> 입학 </a>
               <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">입학안내</a> <a
                     class="dropdown-item" href="#">과정안내</a>
               </div></li>
            <li class="nav-item dropdown"><a
               class="nav-link dropdown-toggle" href="#" role="button"
               data-toggle="dropdown" aria-expanded="false"> 생활 </a>
               <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">기숙사</a> <a class="dropdown-item"
                     href="#">구내식당</a> <a class="dropdown-item" href="#">학생커뮤니티</a> <a
                     class="dropdown-item" href="#">기타시설</a>
               </div></li>
            <li class="nav-item dropdown"><a
               class="nav-link dropdown-toggle" href="#" role="button"
               data-toggle="dropdown" aria-expanded="false"> 갤러리 </a>
               <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">동아리활동</a> <a
                     class="dropdown-item" href="#">학과활동</a>
               </div></li>
         </ul>
      </div>
   </nav>
   
   
   
   
    </div>
  </div>
  <nav class="navbar navbar-dark" style="background-color: #951e13;">  <!-- 숨기기색상2 -->
    <button class="navbar-toggler" type="button" data-toggle="#" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>

<div id="bf">
	
	<div id="b">
	<jsp:useBean id="data" class= "mysql.HOGUDAO" scope="request"/>
<%
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(data.isMember(id, pw)){
			
				
				session.setAttribute("ID", id);
				response.sendRedirect("gotomain.jsp");
			
			}
		

	
	%>
		<div align='center'>
		<br><br><br><br><br><br><br><br><br><font size='12' align='center' color='#951e13'>머글이시군요!!!</font><br><br>
		<a href='hogu_log.html'><input id='check' type='button' value='로그인화면으로>>'></a><br><br>
		<a href='hogu_login.html'><input id='check' type='button' value='회원가입하러 가기'><br><br></a>

		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<!-- 푸터 -->
    <footer
      class="container-fluid navbar-fixed-bottom bg-dark mt-auto text-left text-white">
      <!-- Grid container -->
      <div class="container p-4 pb-0">
         <!-- Section: Social media -->
         <section class="mb-4">
         <p style="color:white"> 사업자명 : 구본우 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail : hwmagic@hwschool.com
         <p style="color:white"> ☎TEL : 02-1111-2222 &nbsp;&nbsp;&nbsp;&nbsp; 주소 : UK where-ddd-aaaa-ccc
         <p style="color:white"> 설립일 : 1998/08/22
         </section>
         <!-- Section: Social media -->
      </div>
      <!-- Grid container -->

      <!-- Copyright -->
      <div class="text-center p-3"
         style="background-color: rgba(0, 0, 0, 0.2);">
         © 2021 Copyright: <a class="text-white"
            href="#">호그와트.com</a>
      </div>
      <!-- Copyright -->
   </footer>
   </div>
</body>
</html>
