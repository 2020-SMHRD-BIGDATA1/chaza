<%@page import="controller.PlaceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.PlaceDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
		<title>Left Sidebar - Helios by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<style>
			hr{
				top: 2em;
				margin-bottom: 5em;
			}
			
		</style>

</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="places_cat.jsp" id="logo">����������</a></h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="places_cat.jsp">����������</a></li>
								<li><a href="reviews_cat.jsp">�����ı�</a></li>
								<li><a href="form_mypage.jsp">����������</a></li>
							</ul>
						</nav>

				</div>


			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">

						<div class="row gtr-200">
							<div>						
								<section>
									<header id="head">
										<h3>�������ϴ� ��ư</h3>
									</header>
									<footer>
									
									<input id="all" type="button" value="��ü"></input>
									<br>
									
									<br>
									<input id="gwangyeogsi" type="button" value="������"></input>
									<input id="gyeonggido" type="button" value="��⵵"></input>
									<input id="jeonlado" type="button" value="����"></input>
									<input id="gyeongsangdo" type="button" value="���"></input>
									<input id="chungcheongdo" type="button" value="��û��"></input>
									<input id="gangwondo" type="button" value="������"></input>
									<input id="jejudo" type="button" value="���ֵ�"></input>

									</footer>
								</section>
							</div>
						</div>  <!-- ��ü�ܶ� div -->
						
						<hr />
						
			<% PlaceDAO placedao= new PlaceDAO(); 
			 ArrayList<PlaceDTO> list=placedao.getall();%>
			 
	         <div id="rownum">
					
				</div>		
						<div class="row" id="row">

					</div>							
						<br>
						<br>
						<br>
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
			

			
			<script>
			
			 btnInput('��ü');
			
			      $('#all').click(function(){
			    	  btnInput('��ü');
			      });
			      $('#gwangyeogsi').click(function(){
			    	  btnInput("������");
			      });
			      $('#gyeonggido').click(function(){
			    	  btnInput('��⵵');
			      });
			      $('#jeonlado').click(function(){
			    	  btnInput('����');
			      });
			      $('#gyeongsangdo').click(function(){
			    	  btnInput('���');
			      });
			      $('#chungcheongdo').click(function(){
			    	  btnInput('��û��');
			      });
			      $('#gangwondo').click(function(){
			    	  btnInput('������');
			      });
			      $('#jejudo').click(function(){
			    	  btnInput('���ֵ�');
			      });
			      
			     
			      function btnInput(name){
			    	  var enc = encodeURI(name);
			
			    	  $.ajax({
			    			url : 'SelectCity?city='+enc,
			    			type : 'GET',
			    			dataType : 'JSON',
			    			success : function(data){
			    				console.log(data);	
			    				$('#row').prepend();
			    			     $('#row').empty();		
			    			     $('#rownum').empty();
			    			     $('#head').empty();
			    			     $('#rownum').prepend('<p>��  '+data.length+'���� �ڽ��� �ֽ��ϴ�.</p>');  
			    			     $('#head').prepend('<center><h2>'+name+'</h2></center>');
			    			     
			    				for(var i = 0; i < data.length; i++){
			    					$('#row').prepend('<article><a href="'+encodeURI("travel_info.jsp?name="+data[i].place_name) +'"  class="image featured"><img src="'+data[i].place_image+'" alt="" /></a><header><h3>'+data[i].place_name+'</h3></header><p>'+data[i].place_cat+ data[i].place_addr+'</p></article>');
			    				}
			    			}
			    		});
			    	  
			      }
			      
			      /* $('#row').prepend('<article><a href="'+encodeURI('"travel_info.jsp?name='+data[i].place_name+'"')+'"  class="image featured"><img src="images/pic08.jpg" alt="" /></a><header><h3>'+data[i].place_name+'</h3></header><p>'+data[i].place_cat+ data[i].place_addr+'</p></article>'); */
			      /* $('#row').prepend('<article><a href="'+encodeURI("travel_info.jsp?name=���� ����������")+'"  class="image featured"><img src="images/pic08.jpg" alt="" /></a><header><h3>'+data[i].place_name+'</h3></header><p>'+data[i].place_cat+ data[i].place_addr+'</p></article>'); */
			</script>


	</body>
</html>