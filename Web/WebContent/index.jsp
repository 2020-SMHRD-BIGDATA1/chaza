<%@page import="java.net.URLEncoder"%>
<%@page import="javax.print.URIException"%>
<%@page import="controller.MemberDTO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<title>���� ������ ��� ��, CHAZA!</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	<style>
		td {
		    padding: 8px;
		    
		  }

	</style>
	<script src="assets/js/jquery.min.js"></script>
</head>
	<body class="homepage is-preload">
			<%
			MemberDTO info = (MemberDTO)session.getAttribute("info");
		%>
			
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" >

					<!-- Inner ������õ -->
						<div class="inner">
							<header>
								<h1><a href="index.jsp" id="logo">������ ��︮�� ��������?</a></h1>
								<hr />
							</header>
							<footer>
								<a href="#" class="button circled scrolly">Start</a>
							</footer>
						</div>

					<!-- Nav �޴����-->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="places_cat.jsp">����������</a></li>
								<li><a href="reviews_cat.jsp">�����ı�</a></li>
							
								<li>
								<% if(info==null){ %>
									<a href="form_login.jsp">�α���</a></li>
								<% } else { %>
									<li><a href="#">�α׾ƿ�</a></li>
									<li><a href="form_mypage.jsp">����������</a></li>
									
								<% } %>	
								
								
							</ul>
						</nav>

				</div>

			<!-- Banner ������ ���-->
				
				<section id="banner">
					<header>
						<h2> <strong>����������</strong></h2>
						<p>
							�� ���� �������� ���� �ʹٸ�?
						</p>
						<footer>
							<a href="places_cat.jsp" class="button">������</a>
						</footer>
						
					</header>
				</section>
				
	

			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">
					
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("��ź������ �ٸ���", "UTF-8") %>" class="image featured"><img src="images/place_1.jpg" alt="" /></a>
							<header>
								<h3>��ź������ �ٸ���</h3>
							</header>
							<p>�������� �Ƹ��ٿ� ���� ���!</p>
						</article>

						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("�ⷯ�� ����", "UTF-8") %>" class="image featured"><img src="images/place_2.jpg" alt="" /></a>
							<header>
								<h3>�ⷯ�� ����</a></h3>
							</header>
							<p>�ΰ������� ���� ��������!</p>
						</article>

						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("�з�������", "UTF-8") %>" class="image featured"><img src="images/place_3.jpg" alt="" /></a>
							<header>
								<h3>�з�������</a></h3>
							</header>
							<p>������� �Բ� ��⼼��!</p>
						</article>

						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("�޵ΰ���", "UTF-8") %>" class="image featured"><img src="images/place_4.jpg" alt="" /></a>
							<header>
								<h3>�޵ΰ���</a></h3>
							</header>
							<p>����ġ ������ ��ſ�!</p>
						</article>
						
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("�ֹ������� ������ �α�", "UTF-8") %>" class="image featured"><img src="images/place_5.jpg" alt="" /></a>
							<header>
								<h3>�ֹ������� ������ �α�</a></h3>
							</header>
							<p>��鰭�� �ҳ����� ������ ��⼼��!</p>
						</article>
						
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("��� ���絿�齣 ������", "UTF-8") %>" class="image featured"><img src="images/place_6.jpg" alt="" /></a>
							<header>
								<h3>��� ���絿�齣 ������</a></h3>
							</header>
							<p>�ϵ��� �����ϰ� �����ϱ� ���� ��</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("�쵿 �ҷϴ뱳 ��", "UTF-8") %>" class="image featured"><img src="images/place_7.jpg" alt="" /></a>
							<header>
								<h3>�쵿 �ҷϴ뱳 ��</a></h3>
							</header>
							<p>���ÿ� �Բ��ϴ� ��ſ�!</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("������ �ݰ���", "UTF-8") %>" class="image featured"><img src="images/place_8.jpg" alt="" /></a>
							<header>
								<h3>������ �ݰ���</a></h3>
							</header>
							<p>��ȭ <���>���� ���� ���� ���� ǳ��</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("����������", "UTF-8") %>" class="image featured"><img src="images/place_9.jpg" alt="" /></a>
							<header>
								<h3>����������</a></h3>
							</header>
							<p>ī��, ��Ʈ �� ������ ����ͳ���?!</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("��õ �߿��� �α� �ݰ���", "UTF-8") %>" class="image featured"><img src="images/place_10.jpg" alt="" /></a>
							<header>
								<h3>��õ �߿��� �α� �ݰ���</a></h3>
							</header>
							<p>�����ϰ� ������ �ڿ� �� ����</p>
						</article>				
					
					</div>
				</section>
			
				

			<!-- Main -->
				
			<!-- Features -->
				<div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2><strong>�����ı�</strong></h2>


						<footer>
							<a href="reviews_cat.jsp" class="button">������</a>
						</footer>
						<br><br>
						</header>
						<div class="row">
							<article class="col-4 col-12-mobile special">
								<a href="review_info.jsp?num=1" class="image featured"><img src="images/gil.PNG" alt="" /></a>
							
									<table>
									<tr>
										<th align="left">BORADORI</th>
										<th></th>
										<th align="right">2020-08-25 12:29:52</th>
									</tr>
									<tr align="center" >
										<td colspan="3"><h3>�̰��� ����ΰ�</h3></td>
									
									</tr>
									<tr align="center">
										<td colspan="3">���� ��������� ���ڴ� ���� ��¥��</td>
										
									</tr>	
								</table>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="review_info.jsp?num=2" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
								<header>
									<h3><a href="review_info.jsp?num=2">��</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="review_info.jsp?num=3" class="image featured"><img src="images/pic09.jpg" alt="" /></a>
								<header>
									<h3><a href="review_info.jsp?num=3">��</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
						</div>
					</section>

				</div>

			<!-- Footer -->
				<div id="banner" style="background-color: #313030;margin-top: -2em;padding-top: 0em;padding-bottom: 8em;margin-bottom: -6em;">
					<div class="container" style="padding-top:20px;padding-bottom:20px;">
						<img src="img/rent.png" class="rent_text" style="width: 7%;height: 7%;margin-top: 0em;position: relative;float:left;left: -1%;top: 40px;">
						<span style="font-size: 50px;font-weight: bold;color: #fff;left: -3%;top: 75px;position: relative;width: 120%;">
						���ϴ� ������ <span style="color:tomato;">����ī ��ü����</span>�� Ȯ���ϼ���!</span>
						<span style="position:relative;font-size:18pt;;font-weight:bold;padding:10px;position:relative;right:0px;top:70px;background-color:#313030;border:5px solid tomato;" class="button">
							<a href=# style="padding:10px;" onclick="javascript_:window.open('rentMap.jsp','pop', 'menubar=no,status=no,scrollbars=no,resizable=no ,width=1200px,height=800px,top=100,left=450');return false;">�˻�!</a>
						</span>
					</div>
				</div>
				<hr>


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