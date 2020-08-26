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
    <h2 align="center">회원가입</h2>
    <form action="MemberJoinProc.jsp" method="post">
        <table class="table table-boardered">
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" name="id" placeholder="id를 넣으세요"></td>        
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" class="form-control" name="pass1" placeholder="비밀번호는 영문만 넣어주세요"></td>      
            </tr>
             
            <tr>
                <th>패스워드확인</th>
                <td><input type="password" class="form-control" name="pass2"></td>        
            </tr>
             
            <tr>
                <th>주소</th>
                <td><input type="email" class="form-control" name="email"></td>       
            </tr>
             
            <tr>
                <th>연락처</th>
                <td><input type="tel" class="form-control" name="tel"></td>       
            </tr>
            <tr>
                <th>성별</th>
                <td>
                <input type="radio"  name="age" value="10">남성 &nbsp;&nbsp;
                <input type="radio"  name="age" value="20">여성 &nbsp;&nbsp;
              
                </td>     
            </tr>
            <tr>
                <th>캠핑목적</th>
                <td>
                <input type="checkbox"  name="hobby" value="캠핑">가족간의 화합도모 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="등산">스트레스해소와 힐링 &nbsp;&nbsp;
                <br>
                <input type="checkbox"  name="hobby" value="영화">지인들과의 친목 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="독서">자연 체험활동 &nbsp;&nbsp;
                <br>
                <input type="checkbox"  name="hobby" value="독서">단순 취미활동 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="독서">단순 취미활동 &nbsp;&nbsp;
                </td>     
            </tr>
            
            <tr>
                <th>캠핑동행자</th>
                <td>
                <input type="checkbox"  name="hobby" value="캠핑">가족 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="등산">친구 및 선후배 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="영화">애인 &nbsp;&nbsp;
                <br>
                <input type="checkbox"  name="hobby" value="독서">혼자 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="독서">친인척 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="독서">동호회/커뮤니티 &nbsp;&nbsp;
                </td>     
            </tr>
            
            <tr>
                <th>연간 캠핑횟수</th>
                <td>
                <input type="checkbox"  name="hobby" value="캠핑">10회이상 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="등산">10회 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="영화">5-10회 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="독서">2-4회 &nbsp;&nbsp;
                <input type="checkbox"  name="hobby" value="독서">1회 &nbsp;&nbsp;
                
                </td>     
            </tr>
             
            <tr>
                <th>차량유무</th>
                <td>
                 <select name="job" class="form-control">
                    <option value="교사">있음</option>
                    <option value="변호사">없음</option>
                    
                 </select>
                </td>     
            </tr>
            
            <tr>
                <th>차종</th>
                <td><input type="tel" class="form-control" name="tel"></td>       
            </tr>
             
                         
            
             
            
             
             <tr>
            	<td colspan='2' align='center'><input type="submit" value="회원가입"></td>
            	<td colspan='2' align='center'><input type="submit" value="취소"></td>
        	</tr>
        	
        	
            
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>
</body>
</html>