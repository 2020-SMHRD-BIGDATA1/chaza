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
 body {    
    font-family: 나눔바른고딕, NanumBarunGothic, 맑은고딕, "Malgun Gothic", 돋움, Dotum, "Apple SD Gothic Neo", sans-serif;
    font-size: 12px;
    color: rgb(33, 33, 33);
    letter-spacing: 0.03em;
}

table {
    width: 600px;
}

tr {
    height: 50px;
}

input[type=text], input[type=password] {
    padding: 5px 10px; /* 상하 우좌 */
    margin: 3px 0; /* 상하 우좌 */
    font-family: inherit; /* 폰트 상속 */
    border: 1px solid #ccc; /* 999가 약간 더 진한 색 */
    font-size:14pt;
    box-sizing: border-box;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus, input[type=password]:focus {
    border: 2px solid #555;
}

input[type=submit],input[type=button] {
    margin-top: 10px;
    width:100px;
    height:40px;
    line-height: 22px;
    padding: 5px, 10px; /* 상하 우좌 */
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

input[type=submit]:hover {
    background-color: #FFBF00;
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
								<h1><a href="#" id="logo"></a></h1>
							</header>
						</div>
				</div>

<div class="wrapper style1">
<div class="container">

</div>

<div class="container" align='center'>
<h2 align="center">로그인</h2>
<br><br><br>
<form method="post" action="a.register.php">
    <table>
        <tr>
            <td style='width:100px'>아이디</td>
            <td><input type="text" size=37 name="userNM" value=""></td>
        </tr>
       
        <tr>
            <td>패스워드</td>
            <td><input type="password" size=37 name="mobileNO" value=""></td>
        </tr>
        
        
        
        
    </table>
    
    <br><br><br>
</fom>

</div>

	
	<center><a href="#" class="button">로그인</a>
			<a href="#" class="button">취소</a>
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