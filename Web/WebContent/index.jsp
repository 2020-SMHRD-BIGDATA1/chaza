<%@page import="java.net.URLEncoder"%>
<%@page import="javax.print.URIException"%>
<%@page import="controller.MemberDTO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<title>차박 여행의 모든 것, CHAZA!</title>
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

					<!-- Inner 맞춤추천 -->
						<div class="inner">
							<header>
								<h1><a href="index.jsp" id="logo">나에게 어울리는 여행지는?</a></h1>
								<hr />
							</header>
							<footer>
								<a href="ana2.jsp" class="button circled scrolly">Start</a>
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
									<a href="form_login.jsp">로그인</a>
								<% } else { %>
									<li><a href="LogoutService">로그아웃</a></li>
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
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("곡성 압록유원지", "UTF-8") %>" class="image featured"><img src="images/place_3.jpg" alt="" /></a>
							<header>
								<h3>압록유원지</a></h3>
							</header>
							<p>오리배와 함께 즐기세요!</p>
						</article>

						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("함평 앵두공원", "UTF-8") %>" class="image featured"><img src="images/place_4.jpg" alt="" /></a>
							<header>
								<h3>앵두공원</a></h3>
							</header>
							<p>가물치 낚시의 즐거움!</p>
						</article>
						
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("나주 드들강 솔밭유원지 주차장 부근", "UTF-8") %>" class="image featured"><img src="images/place_5.jpg" alt="" /></a>
							<header>
								<h3>솔밭유원지 주차장 인근</a></h3>
							</header>
							<p>드들강과 소나무의 조합을 즐기세요!</p>
						</article>
						
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("완도 약산 가사동백숲 방파제", "UTF-8") %>" class="image featured"><img src="images/place_6.jpg" alt="" /></a>
							<header>
								<h3>약산 가사동백숲 방파제</a></h3>
							</header>
							<p>완도의 조용하고 힐링하기 좋은 곳</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("노루벌 야영장", "UTF-8") %>" class="image featured"><img src="images/place_7.jpg" alt="" /></a>
							<header>
								<h3>노루벌 야영장</a></h3>
							</header>
							<p>아이들과 함께하는 캠핑에 최적!</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("옥천 지수리 금강변", "UTF-8") %>" class="image featured"><img src="images/place_9.jpg" alt="" /></a>
							<header>
								<h3>지수리 금강변</a></h3>
							</header>
							<p>영화 <용순>에서 나온 멋진 강변 풍경</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("홍천강 마곡유원지", "UTF-8") %>" class="image featured"><img src="images/place_11.jpg" alt="" /></a>
							<header>
								<h3>마곡유원지</a></h3>
							</header>
							<p>카누, 요트 등 레저를 즐기고싶나요?!</p>
						</article>
						
												
						<article>
							<a href="travel_info.jsp?name=<%=URLEncoder.encode("옥천 야영장 부근 금강변", "UTF-8") %>" class="image featured"><img src="images/place_10.jpg" alt="" /></a>
							<header>
								<h3>옥천야영장 부근 금강변</a></h3>
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
								<a href="review_info.jsp?num=1" class="image featured"><img src="images/place_40.jpg" alt="" /></a>
							
									<table>
									<tr>
										<th align="left">BORADORI</th>
										<th></th>
										<th align="right">2020-08-25 12:29:52</th>
									</tr>
									<tr align="center" >
										<td colspan="3"><h3>무더위에 힐링여행다녀오기!</h3></td>
									
									</tr>
									<tr align="center">
										<td colspan="3">개야리유원지는 미루나무길이 있어서 산책하기 좋아요~</td>
										
									</tr>	
								</table>
							</article>
							
							<article class="col-4 col-12-mobile special">
								<a href="review_info.jsp?num=2" class="image featured"><img src="images/place_14.jpg" alt="" /></a>
								<header>
									<h3><a href="review_info.jsp?num=3">바쁜일상 아이들과 추억쌓기</a></h3>
								</header>
								<p>
									조용하고 한적해 아이들과 함께 오기 좋은 곳이에요
								</p>
							</article>
							
							<article class="col-4 col-12-mobile special">
								<a href="review_info.jsp?num=3" class="image featured"><img src="images/place_108.jpg" alt="" /></a>
							
									<table>
									<tr>
										<th align="left">SILVER</th>
										<th></th>
										<th align="right">2020-08-28 12:29:52</th>
									</tr>
									<tr align="center" >
										<td colspan="3"><h3>푸른바다가 인상깊은 곳</h3></td>
									
									</tr>
									<tr align="center">
										<td colspan="3">날씨도 좋아 아이들과 함께 즐거운 여행하고 왔네요 ㅎㅎ</td>
										
									</tr>	
								</table>
							</article>
							
						
						</div>
					</section>

				</div>

			<!-- Footer -->
				<div id="banner" style="background-color: #313030;margin-top: -2em;padding-top: 0em;padding-bottom: 8em;margin-bottom: -6em;">
					<div class="container" style="padding-top:20px;padding-bottom:20px;">
						<img src="img/rent.png" class="rent_text" style="width: 7%;height: 7%;margin-top: 0em;position: relative;float:left;left: -1%;top: 40px;">
						<span style="font-size: 50px;font-weight: bold;color: #fff;left: -3%;top: 75px;position: relative;width: 120%;">
						원하는 지역의 <span style="color:tomato;">렌터카 업체정보</span>를 확인하세요!</span>
						<span style="position:relative;font-size:18pt;;font-weight:bold;padding:10px;position:relative;right:0px;top:70px;background-color:#313030;border:5px solid tomato;" class="button">
							<a href=# style="padding:10px;" onclick="javascript_:window.open('rentMap.jsp','pop', 'menubar=no,status=no,scrollbars=no,resizable=no ,width=1200px,height=800px,top=100,left=450');return false;">검색!</a>
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