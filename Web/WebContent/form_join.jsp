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
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<style>
tr {
    height: 50px;
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
								<h1>- J O I N -</h1>
							</header>
						</div>
				</div>




<div class="wrapper style1">
<div class="container">

</div>

<div class="container">
    <div class="row" style="margin:-40px;">
    <div class="col-sm-12 text-left" style="padding-top:0px;padding-bottom:30px">
    <div class="col-sm-3"></div>
    <div class="col-sm-6" style="font-size:16px">
    <br>
    <form action="JoinService" method="post">
        <table class="table table-boardered">
            <tr>
                <th style="font-weight:bold;color:#333">���̵�</th>

                <td><input type="text" class="form-control" name="member_id" placeholder="id�� �Է��ϼ���"></td>        
            </tr>
            <tr>
                <th style="font-weight:bold;color:#333">�н�����</th>
                <td><input type="password" class="form-control" name="member_pw" placeholder="��й�ȣ�� �Է��ϼ���"></td>      
            </tr>
            <tr>
                <th style="font-weight:bold;color:#333">�ּ�</th>
                <td><input type="text" class="form-control" name="member_addr"></td>       
            </tr>
             
            <tr>
                <th style="font-weight:bold;color:#333">����ó</th>
                <td><input type="tel" class="form-control" name="member_tel"></td>       
            </tr>
            <tr>
                <th style="font-weight:bold;color:#333">����</th>
                <td>
                <input type="radio"  name="member_gender" value="male">���� &nbsp;&nbsp;
                <input type="radio"  name="member_gender" value="female">���� &nbsp;&nbsp;
              
                </td>     
            </tr>
            <tr>
                <th style="font-weight:bold;color:#333">ķ�θ���</th>
                <td>
                <input type="radio"  name="camping_case" value="case_family"> �������� ȭ�յ��� &nbsp;&nbsp;
                <input type="radio"  name="camping_case" value="case_healing"> ��Ʈ�����ؼҿ� ���� &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_case" value="case_friend"> ���ε���� ģ�� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio"  name="camping_case" value="case_nature"> �ڿ� ü��Ȱ�� &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_case" value="case_hobby"> �ܼ� ���Ȱ�� &nbsp;&nbsp;
               
                </td>     
            </tr>
            
            <tr>
                <th style="font-weight:bold;color:#333">ķ�ε�����</th>
                <td>
                <input type="radio"  name="camping_member" value="member_family"> ���� &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_friend"> ģ�� �� ���Ĺ� &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_ain"> ���� &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_member" value="member_alone"> ȥ�� &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_chin"> ģ��ô &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_dong"> ��ȣȸ/Ŀ�´�Ƽ &nbsp;&nbsp;
                </td>     
            </tr>
            
            <tr>
                <th style="font-weight:bold;color:#333">���� ķ��Ƚ��</th>
                <td>
                <input type="radio"  name="camping_count" value="1"> 10ȸ�̻� &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="2"> 10ȸ &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="3"> 5-10ȸ &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="4"> 2-4ȸ &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="5"> 1ȸ &nbsp;&nbsp;
                
                </td>     
            </tr>
             
            <tr>
                <th style="font-weight:bold;color:#333">��������</th>
                <td>
                <input type="radio"  name="member_car_own" value="y"> ���� &nbsp;&nbsp;
                <input type="radio"  name="member_car_own" value="n"> ���� &nbsp;&nbsp;
                 <!-- select name="member_car_own" class="form-control">
                    <option value="y">����</option>
                    <option value="n">����</option>
                    
                 </select> -->
                </td>     
            </tr>
            
            <tr>
                <th style="font-weight:bold;color:#333">����</th>
                <td><input type="text" class="form-control" name="car_name"></td>       
            </tr>
             
             <tr>
             	<td colspan="2" align="center">
            	<input type="submit" style="padding:0px;" value="ȸ������">
            	</td>
        	</tr>
        	
        	
            
             
             
        </table>
    </form>
    </div>
     
    </div>
    
    </div>
</div>
	<!-- Footer -->
				<div id="banner" style="background-color: #313030;margin-top: 2em;padding-top: 0em;padding-bottom: 4em;margin-bottom: -11em;">
					<div class="container" style="padding-top:20px;padding-bottom:20px;">
						<img src="img/rent.png" class="rent_text" style="width: 7%;height: 7%;margin-top: 0em;position: relative;float:left;left: -4%;top: 40px;">
						<span style="font-size: 50px;font-weight: bold;color: #fff;left: -2%;top: 50px;position: relative;width: 120%;">
						���ڿ��� �÷���, <span style="color:tomato;">CHAZA</span>������ ȯ���մϴ�!</span>
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

</body>	
</html>