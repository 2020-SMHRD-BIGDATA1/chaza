<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
	tr {
    height: 50px;
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
</style>
<body>
<div class="container">
    <div class="row">
    <div class="col-sm-12 text-left" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6">
    <h2>마이페이지</h2>
    <form action="MemberJoinProc.jsp" method="post">
        <table class="table table-boardered">
            <tr>
                <th>아이디</th>
                <td><h4>tnwls</h4>        
            </tr>
            
             
            <tr>
                <th>주소</th>
                <td><h4>광주 남구</h4></td>       
            </tr>
             
            <tr>
                <th>연락처</th>
                <td><h4>010-0000-0000</h4></td>       
            </tr>
            <tr>
                <th>성별</th>
                
                <td><h4>여성</h4>
              
                     
            </tr>
            <tr>
                <th>캠핑목적</th>
                <td>
               <h4>가족간의 화합도모</h4>
                </td>     
            </tr>
            
            <tr>
                <th>캠핑동행자</th>
                <td><h4>친인척</h4></td>
            </tr>
            
            <tr>
                <th>연간 캠핑횟수</th>
                <td><h4>10회</h4></td>
            </tr>
             
            <tr>
                <th>차량유무</th>
                <td><h4>있음</h4></td>
            </tr>
            
            <tr>
                <th>차종</th>
                <td><h4>쏘렌토</h4></td>       
            </tr>
             
                         
            
             
            
             
             <tr>
            	<td colspan='2' align='center'><input type="submit" value="확인"></td>
            	<td colspan='2' align='center'><input type="submit" value="수정"></td>
        	</tr>
        	
        	
            
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>
</body>
</html>