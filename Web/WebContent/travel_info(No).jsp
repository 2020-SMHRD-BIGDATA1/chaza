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
				margin-bottom: 5em;
			}
		  table {
		    width: 600px;
		    border: 1px solid #444444;
		    border-color: gray;
		  }
		  th, td {
		    border: 1px solid #444444;
		    padding: 10px;
		  }
		  th{
		  	width: 300px;
		  }
		</style>
</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="left-sidebar.html" id="logo">����������</a></h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="left-sidebar.html">����������</a></li>
								<li><a href="right-sidebar.html">�����ı�</a></li>
								<li><a href="no-sidebar.html">����������</a></li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
							<% String place_name=request.getParameter("name"); %>
								<h2><%=place_name %></a></h2>
								<hr>
							</header>
							<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
							<div class= "row">
							<div class="col_1">
								<table>
									<tr>

									<% PlaceDAO dao= new PlaceDAO();
									PlaceDTO placedto = dao.getplace(place_name);
									
							         	%>
								    	<!-- %System.out.print(place_name); %-->
								  
								
									
										<th>������ �ּ�</th>
										<td><%=placedto.getPlace_address() %></td>
									</tr>
									<tr>
										<th>ȭ��� ���� </th>
										<td><%=placedto.getToilet()%></td>
									</tr>
									<tr>
										<th>�ֺ� ������</th>
										<td><%= placedto.getSink() %></td>
									</tr>
									<tr>
										<th>���� ����</th>
										<td><%= placedto.getScore() %></td>
									</tr>
								</table>
							</div>
							<div class="col_2">
									<h3>��������Ʈ</h3>
									<p>
										- �غ����� ��� �� �ִ� �ҹ�, �Ҿƺ������ ���� ���̷� ������ �� ���� �⸷�� ����� ����Ǿ� ���� 3�� ���� ������� ���� �غ�
										- �ٴ幰�� ���� ����� �峪��� ������ ��� �ô� ������ ħ���� �װ��� �ﺰ�ʰ� �ֵ��ϸ� �Ʒ��ߴ� õ���� ����������� ������
										- ������ �̷���� ���� �غ����� �ڰ� ���̷� �ε����� �ĵ��Ҹ��� ���� �� ����
									</p>

							</div>
							
						</div> 
						</article>
						<hr>
						<footer>
							<center>
							<a href="places_cat.jsp" class="button">�������</a>
							</center>
						</footer>
					</div>

				</div>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">

							<!-- Tweets -->
								<section class="col-4 col-12-mobile">
									<header>
										<h2 class="icon brands fa-twitter circled"><span class="label">Tweets</span></h2>
									</header>
									<ul class="divided">
										<li>
											<article class="tweet">
												Amet nullam fringilla nibh nulla convallis tique ante sociis accumsan.
												<span class="timestamp">5 minutes ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Hendrerit rutrum quisque.
												<span class="timestamp">30 minutes ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Curabitur donec nulla massa laoreet nibh. Lorem praesent montes.
												<span class="timestamp">3 hours ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Lacus natoque cras rhoncus curae dignissim ultricies. Convallis orci aliquet.
												<span class="timestamp">5 hours ago</span>
											</article>
										</li>
									</ul>
								</section>

							<!-- Posts -->
								<section class="col-4 col-12-mobile">
									<header>
										<h2 class="icon solid fa-file circled"><span class="label">Posts</span></h2>
									</header>
									<ul class="divided">
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Nisl fermentum integer</a></h3>
												</header>
												<span class="timestamp">3 hours ago</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Phasellus portitor lorem</a></h3>
												</header>
												<span class="timestamp">6 hours ago</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Magna tempus consequat</a></h3>
												</header>
												<span class="timestamp">Yesterday</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Feugiat lorem ipsum</a></h3>
												</header>
												<span class="timestamp">2 days ago</span>
											</article>
										</li>
									</ul>
								</section>

							<!-- Photos -->
								<section class="col-4 col-12-mobile">
									<header>
										<h2 class="icon solid fa-camera circled"><span class="label">Photos</span></h2>
									</header>
									<div class="row gtr-25">
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic10.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic11.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic12.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic13.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic14.jpg" alt="" /></a>
										</div>
										<div class="col-6">
											<a href="#" class="image fit"><img src="images/pic15.jpg" alt="" /></a>
										</div>
									</div>
								</section>

						</div>
						<hr />
						<div class="row">
							<div class="col-12">

								<!-- Contact -->
									<section class="contact">
										<header>
											<h3>Nisl turpis nascetur interdum?</h3>
										</header>
										<p>Urna nisl non quis interdum mus ornare ridiculus egestas ridiculus lobortis vivamus tempor aliquet.</p>
										<ul class="icons">
											<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon brands fa-pinterest"><span class="label">Pinterest</span></a></li>
											<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
											<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">Linkedin</span></a></li>
										</ul>
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
									</div>

							</div>

						</div>
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