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
							<header>
								<h1><a href="#" id="logo">ȸ������</a></h1>
							</header>
						</div>
				</div>




<div class="wrapper style1">
<div class="container">

</div>

<div class="container">
    <div class="row">
    <div class="col-sm-12 text-left" >
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
    <br>
    <form action="JoinService" method="post">
        <table class="table table-boardered">
            <tr>
                <th>���̵�</th>
                <td><input type="text" class="form-control" name="member_id" placeholder="id�� �Է��ϼ���"></td>        
            </tr>
            <tr>
                <th>�н�����</th>
                <td><input type="password" class="form-control" name="member_pw" placeholder="��й�ȣ�� �Է��ϼ���"></td>      
            </tr>

            <tr>
                <th>�ּ�</th>
                <td><input type="text" class="form-control" name="member_addr"></td>       
            </tr>
             
            <tr>
                <th>����ó</th>
                <td><input type="tel" class="form-control" name="member_tel"></td>       
            </tr>
            <tr>
                <th>����</th>
                <td>
                <input type="radio"  name="member_gender" value="male">���� &nbsp;&nbsp;
                <input type="radio"  name="member_gender" value="female">���� &nbsp;&nbsp;
              
                </td>     
            </tr>
            <tr>
                <th>ķ�θ���</th>
                <td>
                <input type="radio"  name="camping_case" value="case_family">�������� ȭ�յ��� &nbsp;&nbsp;
                <input type="radio"  name="camping_case" value="case_healing">��Ʈ�����ؼҿ� ���� &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_case" value="case_friend">���ε���� ģ�� &nbsp;&nbsp;
                <input type="radio"  name="camping_case" value="case_nature">�ڿ� ü��Ȱ�� &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_case" value="case_hobby">�ܼ� ���Ȱ�� &nbsp;&nbsp;
               
                </td>     
            </tr>
            
            <tr>
                <th>ķ�ε�����</th>
                <td>
                <input type="radio"  name="camping_member" value="member_family">���� &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_friend">ģ�� �� ���Ĺ� &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_ain">���� &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_member" value="member_alone">ȥ�� &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_chin">ģ��ô &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_dong">��ȣȸ/Ŀ�´�Ƽ &nbsp;&nbsp;
                </td>     
            </tr>
            
            <tr>
                <th>���� ķ��Ƚ��</th>
                <td>
                <input type="radio"  name="camping_count" value="1">10ȸ�̻� &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="2">10ȸ &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="3">5-10ȸ &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="4">2-4ȸ &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="5">1ȸ &nbsp;&nbsp;
                
                </td>     
            </tr>
             
            <tr>
                <th>��������</th>
                <td>
                <input type="radio"  name="member_car_own" value="y">���� &nbsp;&nbsp;
                <input type="radio"  name="member_car_own" value="n">���� &nbsp;&nbsp;
                 <!-- select name="member_car_own" class="form-control">
                    <option value="y">����</option>
                    <option value="n">����</option>
                    
                 </select> -->
                </td>     
            </tr>
            
            <tr>
                <th>����</th>
                <td><input type="text" class="form-control" name="car_name"></td>       
            </tr>
             
             <tr>
             	<td colspan="2" align="center">
            	<input type="submit" value="ȸ������">
            	</td>
        	</tr>
        	
        	
            
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>

	<hr />

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