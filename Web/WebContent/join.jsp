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
<body>
<div class="container">
    <div class="row">
    <div class="col-sm-12 text-left" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6">
    <h2 align="center">ȸ������</h2>
    <form action="MemberJoinProc.jsp" method="post">
        <table class="table table-boardered">
            <tr>
                <th>���̵�</th>
                <td><input type="text" class="form-control" name="id" placeholder="id�� ��������"></td>        
            </tr>
            <tr>
                <th>�н�����</th>
                <td><input type="password" class="form-control" name="pass1" placeholder="��й�ȣ�� ������ �־��ּ���"></td>      
            </tr>
             
            <tr>
                <th>�н�����Ȯ��</th>
                <td><input type="password" class="form-control" name="pass2"></td>        
            </tr>
             
            <tr>
                <th>�ּ�</th>
                <td><input type="email" class="form-control" name="email"></td>       
            </tr>
             
            <tr>
                <th>����ó</th>
                <td><input type="tel" class="form-control" name="tel"></td>       
            </tr>
            <tr>
                <th>����</th>
                <td>
                <input type="radio"  name="age" value="10">���� &nbsp;&nbsp;
                <input type="radio"  name="age" value="20">���� &nbsp;&nbsp;
              
                </td>     
            </tr>
            <tr>
                <th>ķ�θ���</th>
                <td>
                <input type="checkbox"  name="hobby" value="ķ��">�������� ȭ�յ��� &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="���">��Ʈ�����ؼҿ� ���� &nbsp;&nbsp;
                <br>
                <input type="checkbox"  name="hobby" value="��ȭ">���ε���� ģ�� &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="����">�ڿ� ü��Ȱ�� &nbsp;&nbsp;
                <br>
                <input type="checkbox"  name="hobby" value="����">�ܼ� ���Ȱ�� &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="����">�ܼ� ���Ȱ�� &nbsp;&nbsp;
                </td>     
            </tr>
            
            <tr>
                <th>ķ�ε�����</th>
                <td>
                <input type="checkbox"  name="hobby" value="ķ��">���� &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="���">ģ�� �� ���Ĺ� &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="��ȭ">���� &nbsp;&nbsp;
                <br>
                <input type="checkbox"  name="hobby" value="����">ȥ�� &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="����">ģ��ô &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="����">��ȣȸ/Ŀ�´�Ƽ &nbsp;&nbsp;
                </td>     
            </tr>
            
            <tr>
                <th>���� ķ��Ƚ��</th>
                <td>
                <input type="checkbox"  name="hobby" value="ķ��">10ȸ�̻� &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="���">10ȸ &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="��ȭ">5-10ȸ &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="����">2-4ȸ &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="����">1ȸ &nbsp;&nbsp;
                
                </td>     
            </tr>
             
            <tr>
                <th>��������</th>
                <td>
                 <select name="job" class="form-control">
                    <option value="����">����</option>
                    <option value="��ȣ��">����</option>
                    
                 </select>
                </td>     
            </tr>
            
            <tr>
                <th>����</th>
                <td><input type="tel" class="form-control" name="tel"></td>       
            </tr>
             
                         
            
             
            
             
             <tr>
            	<td colspan='2' align='center'><input type="submit" value="ȸ������"></td>
            	<td colspan='2' align='center'><input type="submit" value="���"></td>
        	</tr>
        	
        	
            
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>
</body>
</html>