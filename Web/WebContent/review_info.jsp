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
			.image.featured{
				width: 800px;
				margin-left: 320px;
			}

	 .table {
      border-collapse: collapse;
      border-top: 3px solid #168;
    }  
    .table th {
      color: #168;
      background: #f0f6f9;
      text-align: center;
    }
    .table th, .table td {
      padding: 20px;
      border: 1px solid #ddd;
    }
    .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    .table caption{caption-side: bottom; display: none;}

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
								<li><a href="form_mypage.jsp">����������</a></li>
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
		
						<!-- Ÿ��Ʋ --> <h2><%= info.getReview_title() %></h2>
						<!-- �ּ� -->		<h3><%= info.getPlace_name() %></h3>
							
							</header>
							<a href="#" class="image featured" ><img src="images/test.PNG" alt="" /></a>
							
								<h3>������ ����: <%= info.getReview_score() %></h3>
							<br>
							<h3>��������</h3><br>
							<table class="table">
							
								<tr>
									<th>�ۼ���ID</th>
									<th>�ۼ�����</th>
									<th>�ҿ�ð�</th>
								</tr>
							
								<tr>
									<td><%= info.getReview_id() %></td>
									<td><%= info.getReview_date() %></td>
									<td><%= info.getTravel_time()%></td>
								</tr>
								
							
								<tr>
									<th>�����</th>
									<th>������</th>
									<th>�޽Ľð�</th>
								</tr>
								
								<tr>
									<td><%= info.getStart_location() %></td>
									<td><%= info.getDest_location()%></td>
									<td><%= info.getBreak_time()%></td>
								</tr>
								
							</table>
							
							
							<section>
								<header>
									<h3>�̿��ı�</h3>
									<p>
										<%= info.getReview_contents() %>
									</p>
								
								</header>
							
							</section>
							<footer>
								<center>
								<a href="reviews_cat.jsp" class="button">�������</a>
								</center>
							</footer>
						</article>
						<hr />

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