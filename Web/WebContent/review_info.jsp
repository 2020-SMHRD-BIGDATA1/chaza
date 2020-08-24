<%@page import="controller.ReviewDTO"%>
<%@page import="controller.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
		<title>No Sidebar - Helios by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<style>
			
		</style>
</head>
<body class="no-sidebar is-preload">
			<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="#" id="logo">�����ı�</a></h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="places_cat.jsp">����������</a></li>
								<li><a href="reviews_cat.jsp">�����ı�</a></li>
								<li><a href="#">����������</a></li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
							<% String num=request.getParameter("num"); %>
								<% ReviewDAO reviewdao = new ReviewDAO();
									ReviewDTO info = reviewdao.getinfo(num);%>
		
						<!-- Ÿ��Ʋ --> <h2><%=num %>.</h2><h2><%= info.getTitle() %></h2>
						<!-- �ּ� -->		<h3><%= info.getReview_place_name() %></h3>
							
							</header>
							<a href="#" class="image featured"><img src="images/test.PNG" alt="" /></a>

							<h3>��������</h3><br>
							<table border = 1>
								<tr>
									<td>�ۼ���ID</td>
									<td>�ۼ�����</td>
									<td>�ҿ�ð�</td>
								</tr>
								<tr>
									<td><%= info.getReview_id() %></td>
									<td><%= info.getReview_date() %></td>
									<td>3�ð�</td>
								</tr>
								<tr>
									<td><br></td>
									<td><br></td>
									<td><br></td>
								</tr>
								<tr>
									<td>�����</td>
									<td>������</td>
									<td>�޽Ľð�</td>
								</tr>
								<tr>
									<td><%= info.getStart_location() %></td>
									<td><%= info.getDest_location()%></td>
									<td>30��</td>
								</tr>
								
							</table>
							
							
							<section>
								<header>
									<h3>�̿��ı�</h3>
									<p>
										<%= info.getContents() %>
									</p>
									<h3>������ ����: <%= info.getReview_score() %></a></h3>
								</header>
							
							</section>
							<footer>
								<center>
								<a href="places_cat.jsp" class="button">�������</a>
								</center>
							</footer>
						</article>
						<hr />
						<div class="row">
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/img2.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Gravida aliquam penatibus</a></h3>
								</header>
								<p>
									����1
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/img3.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Sed quis rhoncus placerat</a></h3>
								</header>
								<p>
									����2
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/img4.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Magna laoreet et aliquam</a></h3>
								</header>
								<p>
									����3
								</p>
							</article>
						</div>
					</div>

				</div>

			

					

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