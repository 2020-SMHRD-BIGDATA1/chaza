<%@page import="controller.PlaceDTO"%>
<%@page import="controller.PlaceDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
		<title>No Sidebar - Helios by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

		<style>
			hr{
				top: 2em;
				margin-bottom: 1em;
			}
 			h1{
				margin: 0.5em;
			}
			span{
				margin: 0.5em;
			}
		 
		</style>
</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="#" id="logo">����������</a></h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="places_cat.jsp">����������</a></li>
								<li><a href="right-sidebar.html">�����ı�</a></li>
								<li><a href="#">����������</a></li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<div class="row gtr-200">
							<div class="col-4 col-12-mobile" id="sidebar">
								<hr class="first" />
								<section>
								
									<% request.getCharacterEncoding();
									String place_name=request.getParameter("name"); %>
									
									<% PlaceDAO dao= new PlaceDAO();
									PlaceDTO placedto = dao.getplace(place_name);
									System.out.print(place_name+1);
							         	%>
										<section>
										<header>
											<h3>������ ����: <%=placedto.getPlace_score()%></h3>
										
										<hr><br><br>
											<h3>��������</h3>
										</header>
										<img src="images/pic02.jpg" alt="" />
										
									</section>
								<%-- 	<header>
										<h3>������ ����: <%=placedto.getPlace_score()%></h3>
										<br>
										<h3>���� ������ ����</h3>
										<br>
										<h5>
										<%=placedto.getContents() %>
									</h5>

									</header> --%>
							
									
									
									
									
									
									<hr>
									<br><br>
									<h1>�ּ�</h1>
									
									<span><%=placedto.getPlace_addr() %></span>
									<br><br>
									<h1>�ֺ� ����ȭ���</h1>
									
									<span><%=placedto.getToilet() %></span>
									<br><br>
									<h1>�ֺ� ������</h1>
									
									<span><%=placedto.getSink() %></span>
									<br><br>
									<h1>�ֺ� ������</h1>
									
									<span><%=placedto.getWater() %></span>
									<br> 
									
								</section>
								
								<hr />
	<!-- 							<section>
										<header>
											<h3>���� ������ �ؽ��±�</h3>
										</header>
										<p>
										
										<div class="filebox"> 
											<label for="ex_file">#������</label>
											<label for="ex_file">#���°�����</label>
											<label for="ex_file">#�Ҽ����ڿ��޾縲</label>
											<label for="ex_file">#�ڿ�</label>
											<label for="ex_file">#�ڿ��޾縲</label>
											<label for="ex_file">#��û��</label>
										
										</div>
											
										</p>
										
									</section>
								 -->
									
							</div>
							<div class="col-8 col-12-mobile imp-mobile" id="content">
								<article id="main">
									<header>
										<h2><a href="#"><%=place_name %></a></h2>
										
										<hr>
									</header>
									<a href="#" class="image featured"><img src="<%=placedto.getPlace_image()%>" alt="" /></a>
									
										<section>
									
										<h3>���� ������ ����</h3>
										<br>
										<h5>
										<%=placedto.getContents() %>
									</h5>

									</section>
									
								<!-- 	<section>
										<header>
										
											<h3>��������</h3>
										</header>
										<img src="images/pic02.jpg" alt="" />
										
									</section> -->
								</article>
							</div>
						</div>
						<footer>
								<center>
								<a href="places_cat.jsp" class="button">�������</a>
								</center>
							</footer>
						<hr />
						<div class="row">
							<article class="col-4 col-12-mobile special">
								

							

							

								

							

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>