<%@page import="java.net.URLEncoder"%>
<%@page import="javax.print.URIException"%>
<%@page import="controller.MemberDTO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	<style>
		td {
		    padding: 8px;
		    
		  }

	</style>
</head>
	<body class="homepage is-preload">
			<%
			MemberDTO info = (MemberDTO)session.getAttribute("info");
		%>
			
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" >

					<!-- Inner 맞춤추천 -->
						<div class="inner">
							<header>
								<h1><a href="index.jsp" id="logo">나에게 어울리는 여행지는?</a></h1>
								<hr />
							</header>
							<footer>
								<a href="#" class="button circled scrolly">Start</a>
							</footer>
						</div>

					<!-- Nav 메뉴목록-->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="places_cat.jsp">여행지정보</a></li>
								<li><a href="reviews_cat.jsp">여행후기</a></li>
							
								<li>
								<% if(info==null){ %>
									<a href="form_login.jsp">로그인</a></li>
								<% } else { %>
									<li><a href="#">로그아웃</a></li>
									<li><a href="form_mypage.jsp">마이페이지</a></li>
									
								<% } %>	
								
								
							</ul>
						</nav>

				</div>

			<!-- Banner 지역별 명소-->
				
				<section id="banner">
					<header>
						<h2> <strong>여행지정보</strong></h2>
						<p>
							더 많은 여행지를 보고 싶다면?
						</p>
						<footer>
							<a href="places_cat.jsp" class="button">더보기</a>
						</footer>
						
					</header>
				</section>
				
	

			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">
					
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("삼탄유원지 다리밑", "UTF-8") %>" class="image featured"><img src="images/place_1.jpg" alt="" /></a>
							<header>
								<h3>삼탄유원지 다리밑</h3>
							</header>
							<p>기찻길이 아름다운 힐링 명소!</p>
						</article>

						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("기러기 공원", "UTF-8") %>" class="image featured"><img src="images/place_2.jpg" alt="" /></a>
							<header>
								<h3>기러기 공원</a></h3>
							</header>
							<p>인공폭포로 오는 감동까지!</p>
						</article>

						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("압록유원지", "UTF-8") %>" class="image featured"><img src="images/place_3.jpg" alt="" /></a>
							<header>
								<h3>압록유원지</a></h3>
							</header>
							<p>오리배와 함께 즐기세요!</p>
						</article>

						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("앵두공원", "UTF-8") %>" class="image featured"><img src="images/place_4.jpg" alt="" /></a>
							<header>
								<h3>앵두공원</a></h3>
							</header>
							<p>가물치 낚시의 즐거움!</p>
						</article>
						
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("솔밭유원지 주차장 인근", "UTF-8") %>" class="image featured"><img src="images/place_5.jpg" alt="" /></a>
							<header>
								<h3>솔밭유원지 주차장 인근</a></h3>
							</header>
							<p>드들강과 소나무의 조합을 즐기세요!</p>
						</article>
						
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("약산 가사동백숲 방파제", "UTF-8") %>" class="image featured"><img src="images/place_6.jpg" alt="" /></a>
							<header>
								<h3>약산 가사동백숲 방파제</a></h3>
							</header>
							<p>완도의 조용하고 힐링하기 좋은 곳</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("녹동 소록대교 밑", "UTF-8") %>" class="image featured"><img src="images/place_7.jpg" alt="" /></a>
							<header>
								<h3>녹동 소록대교 밑</a></h3>
							</header>
							<p>낚시와 함께하는 즐거움!</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("지수리 금강변", "UTF-8") %>" class="image featured"><img src="images/place_8.jpg" alt="" /></a>
							<header>
								<h3>지수리 금강변</a></h3>
							</header>
							<p>영화 <용순>에서 나온 멋진 강변 풍경</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("마곡유원지", "UTF-8") %>" class="image featured"><img src="images/place_9.jpg" alt="" /></a>
							<header>
								<h3>마곡유원지</a></h3>
							</header>
							<p>카누, 요트 등 레저를 즐기고싶나요?!</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("옥천 야영장 부근 금강변", "UTF-8") %>" class="image featured"><img src="images/place_10.jpg" alt="" /></a>
							<header>
								<h3>옥천 야영장 부근 금강변</a></h3>
							</header>
							<p>한적하고 조용한 자연 속 쉼터</p>
						</article>				
					
					</div>
				</section>
			
				

			<!-- Main -->
				
			<!-- Features -->
				<div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2><strong>여행후기</strong></h2>


						<footer>
							<a href="reviews_cat.jsp" class="button">더보기</a>
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
										<td colspan="3"><h3>이곳은 어디인가</h3></td>
									
									</tr>
									<tr align="center">
										<td colspan="3">제발 실행됐으면 좋겠다 제발 진짜루</td>
										
									</tr>	
								</table>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="review_info.jsp?num=2" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
								<header>
									<h3><a href="review_info.jsp?num=2">녕</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="review_info.jsp?num=3" class="image featured"><img src="images/pic09.jpg" alt="" /></a>
								<header>
									<h3><a href="review_info.jsp?num=3">하</a></h3>
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