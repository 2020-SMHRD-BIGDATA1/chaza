<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
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
<body>
<div class="container">
<h2 align="center">�α���</h2>
<form method="post" action="a.register.php">
    <table>
        <tr>
            <td style='width:100px'>���̵�</td>
            <td><input type="text" size=37 name="userNM" value=""></td>
        </tr>
       
        <tr>
            <td>�н�����</td>
            <td><input type="password" size=37 name="mobileNO" value=""></td>
        </tr>
        
        <tr>
            <td colspan='2' align='center'><input type="submit" value="�α���"></td>
            <td colspan='2' align='center'><input type="submit" value="���"></td>
        </tr>
        
    </table>
</fom>
</div>
</body>
</html>