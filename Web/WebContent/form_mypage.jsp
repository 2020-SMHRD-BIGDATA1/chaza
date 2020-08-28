<%@page import="controller.MemberDTO"%>
<%@page import="controller.ReviewDTO"%>
<%@page import="controller.ReviewDAO"%>
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
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


   
    

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<style>
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
input[type=submit],input[type=button] {
    margin-top: 10px;
    width:100px;
    height:40px;
    line-height: 22px;
    padding: 5px, 10px; /* ���� ���� */
    background: #E6E6E6;
    color: #000000;
    font-size: 15px;
    font-weight: normal;
    letter-spacing: 1px;
    border: none;
    cursor: pointer;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
}
</style>
</head>
<body class="no-sidebar is-preload">
			<div id="page-wrapper">
			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header style="font-size:20px;font-weight:bold;">
								<h1>- MY PAGE -</h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="places_cat.jsp">����������</a></li>
								<li><a href="reviews_cat.jsp">�����ı�</a></li>
								<li><a href="#">����������</a></li>
							</ul>
						</nav>

				</div>


<div class="wrapper style1">
<div class="container">

</div>

<div class="container" align='center'>
    <div class="row">
    <div class="col-sm-12 text-left" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6">
    <br><br>
    <form action="MemberJoinProc.jsp" method="post">
    
    <%
			MemberDTO info = (MemberDTO)session.getAttribute("info");
    
    	
    
		%>
    
              <% if (info == null) { %>
					<h1>�α����� ���ּ���.</h1>
					<% } else { %>
					

        <table class="table table-boardered">
            <tr>
                <th>���̵�</th>
                <td>
				<h4> <%=info.getMember_id() %></h4>
			
                 </td>         
            </tr>
            
             
          <tr>
                <th>�ּ�</th>
                <td><h4><%= info.getMember_addr() %></h4></td>       
            </tr>
             
            <tr>
                <th>����ó</th>
                <td><h4><%= info.getMember_tel() %></h4></td>       
            </tr>
            <tr>
                <th>����</th>
                
                <td><h4><%= info.getMember_gender() %></h4>
              
                     
            </tr>
            <tr>
                <th>ķ�θ���</th>
                <td>
               <h4><%= info.getCamping_case() %></h4>
                </td>     
            </tr>
            
            <tr>
                <th>ķ�ε�����</th>
                <td><h4><%= info.getCamping_member()%></h4></td>
            </tr>
            
            <tr>
                <th>���� ķ��Ƚ��</th>
                <td><h4><%= info.getCamping_count() %></h4></td>
            </tr>
             
            <tr>
                <th>��������</th>
                <td><h4><%= info.getMember_car_own() %></h4></td>
            </tr>
            
            <tr>
                <th>����</th>
                <td><h4><%= info.getMember_car_model()%></h4></td>       
            </tr> 
     
             
        </table>
        
            <% }        %>	 
    </form>
    </div>
     
    </div>
    </div>
</div>


	
	<center>
	<a href="index.jsp" class="button">Ȯ��</a>
	</center>

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