<%@page import="controller.MemberDTO"%>
<%@page import="controller.PlaceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.PlaceDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
		<title>���� ������ ��� ��, CHAZA!</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<style>
			hr{
				top: 2em;
				margin-bottom: 5em;
			}
			.image img{
				width: 490px;
				height: 360px;
				
			}
		</style>

</head>
	<body class="left-sidebar is-preload">
				<%
				MemberDTO info = (MemberDTO)session.getAttribute("info");
			
		%>
			
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
							
								<li>
								<% if(info==null){ %>
									<a href="form_login.jsp">�α���</a>
								<% } else { %>
									<li><a href="LogoutService">�α׾ƿ�</a></li>
									<li><a href="form_mypage.jsp">����������</a></li>
									
								<% } %>		
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
				<div id="banner" style="background-color: #313030;margin-top: -2em;padding-top: 0em;padding-bottom: 6em;margin-bottom: -12em;">
					<div class="container" style="padding-top:20px;padding-bottom:20px;">
						<img src="img/rent.png" class="rent_text" style="width: 7%;height: 7%;margin-top: 0em;position: relative;float:left;left: -1%;top: 40px;">
						<span style="font-size: 50px;font-weight: bold;color: #fff;left: -3%;top: 75px;position: relative;width: 120%;">
						���ϴ� ������ <span style="color:tomato;">����ī ��ü����</span>�� Ȯ���ϼ���!</span>
						<span style="position:relative;font-size:18pt;;font-weight:bold;padding:10px;position:relative;right:0px;top:70px;background-color:#313030;border:5px solid tomato;" class="button">
							<a href=# style="padding:10px;" onclick="javascript_:window.open('rentMap.jsp','pop', 'menubar=no,status=no,scrollbars=no,resizable=no ,width=1200px,height=800px,top=100,left=450');return false;">�˻�!</a>
						</span>
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
			    					$('#row').prepend('<article><a id="imgg" href="'+encodeURI("travel_info.jsp?name="+data[i].place_name) +'"  class="image featured"><img src="'+data[i].place_image+'" alt="" /></a><header><h3>'+data[i].place_name+'</h3></header><p>'+data[i].place_cat+ data[i].place_addr+'</p></article>');
			    				}
			    			}
			    		});
			    	  
			      }
			      
			      /* $('#row').prepend('<article><a href="'+encodeURI('"travel_info.jsp?name='+data[i].place_name+'"')+'"  class="image featured"><img src="images/pic08.jpg" alt="" /></a><header><h3>'+data[i].place_name+'</h3></header><p>'+data[i].place_cat+ data[i].place_addr+'</p></article>'); */
			      /* $('#row').prepend('<article><a href="'+encodeURI("travel_info.jsp?name=���� ����������")+'"  class="image featured"><img src="images/pic08.jpg" alt="" /></a><header><h3>'+data[i].place_name+'</h3></header><p>'+data[i].place_cat+ data[i].place_addr+'</p></article>'); */
			</script>


	</body>
</html>