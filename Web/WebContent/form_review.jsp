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
    font-family: �����ٸ����, NanumBarunGothic, �������, "Malgun Gothic", ����, Dotum, "Apple SD Gothic Neo", sans-serif;
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
    padding: 5px 10px; /* ���� ���� */
    margin: 3px 0; /* ���� ���� */
    font-family: inherit; /* ��Ʈ ��� */
    border: 1px solid #ccc; /* 999�� �ణ �� ���� �� */
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
    padding: 5px, 10px; /* ���� ���� */
    background: #E6E6E6;
    color: #000000;
    font-size: 15px;
    font-weight: normal;
    text-align: center;
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
.form textarea{
    margin-top: 10px;
    height: 220px;
    width: 500px; 
    line-height: 100px;
    padding: 5px, 10px; /* ���� ���� */
    background: #E6E6E6;
    color: white;
    font-size: 15px;
    font-weight: normal;
    text-align: center;
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
							<header>
								<h1><a href="#" id="logo"></a></h1>
							</header>
						</div>
				</div>

<div class="wrapper style1">
<div class="container">

</div>

<div class="container" align='center'>
<h2 align="center">���� �������ı� �ۼ��ϱ�</h2>
<br><br><br>
<form method="post" action="a.register.php">
    <table>
    	<tr>
            <td>������ ����</td>
            <td><input type="text" size=37 name="rePassword"></td>
        </tr>
        <tr>
            <td style='width:100px'>���̵�</td>
            <td><input type="text" size=37 name="userNM" value=""></td>
        </tr>
        <tr>
            <td>������</td>
            <td>
                <input type="text" size=37 name="email" value="">
                
            </td>
        </tr>
        <tr>
            <td>�������ּ�</td>
            <td><input type="text" size=37 name="mobileNO" value=""></td>
        </tr>
        <tr>
            <td>�����</td>
            <td><input type="text" size=37 name="Password"></td>
        </tr>
        <tr>
            <td>�����ۼ���</td>
            <td><input type="text" size=37 name="rePassword"></td>
        </tr>
        
        <tr>
            <td>�ҿ�ð�</td>
            <td><input type="text" size=37 name="rePassword"></td>
        </tr>
        
        <tr>
            <td>�޽Ľð�</td>
            <td><input type="text" size=37 name="rePassword"></td>
        </tr>
        <tr>
            <td>�������ε�</td>
            <td><div class="filebox"> <input class="upload-name" value="���ϼ���" disabled="disabled"> 
				<label for="ex_filename"></label> <input type="file" id="ex_filename" class="upload-hidden"> </td>
				
        </tr>
        
         <tr>
            <td>�����ۼ��ϱ�</td>
             
			<td>
			<div class="form">
			<textarea name="message" rows="10" cols="30" >Describe your project in detail.</textarea><td>
        </tr>      
            
        
        
        
        <tr>
             	<td colspan="2" align="center">
            	<input type="submit" value="�ۼ��ϱ�">
            	<input type="submit" value="���">
            	</td>
        	</tr>
    </table>
</fom>
</div>


	<hr />
	<center><a href="#" class="button">���ư���</a></center>

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