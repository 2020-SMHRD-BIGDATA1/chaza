<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
* {
  box-sizing: border-box;
}

body {
  background-image: url('images/picture.png');
  /* font-family: 'Noto Sans KR', sans-serif; */
}

.chat-container {
  margin: 60px auto;
  width: 800px;
  box-shadow: 0 2px 4px 0 rgba(0,0,0,0.50);
  transition: width 0.3s ease;
}

::-webkit-scrollbar { display: none; }



.anbtn, .anbtn1, .anbtn2,.anbtn3 ,.anbtn4{

    width:100px;

    background-color: #f8585b;

    border: none;

    color:#fff;

    padding: 15px 20px;

    text-align: center;

    text-decoration: none;

    display: inline-block;

    font-size: 15px;

    margin: 4px;

    cursor: pointer;
    
    border-radius:10px;

}


.chat-header #username {
  vertical-align: middle;
  font-size: 14px;
  font-weight: 500;
  margin-left: 5px;
  color: #343434;
}

/* chat box */

.chatbox {

  height: 300px;
  background-color:;
  padding: 10px;
  overflow-y: scroll;
  position: relative;
}

.chatbox-scrollbar { display: none; }



.bubble {
  margin: 5px 0;
  display: inline-block;
  max-width: 300px;
  font-size: 14px;
  position: relative;
}

.friend-bubble {
  background-color: white;
  border-radius: 14px 14px 14px 0;
  padding: 7px 15px 7px 15px;
  float: left;
  clear: both;
}

.my-bubble {
  background-color: #fff46d;
  border-radius: 14px 14px 0px 14px;
  padding: 7px 15px 7px 15px;
  float: right;
  clear: both;
}

/* text box */

.text-box {
  background-color:;
  padding: 10px;
}

.text-box textarea {
  height: 60px;
  float: left;
  width: calc(100% - 70px);
  border-radius: 3px;
   background-color: unset;
   color:white;
  border: solid 0.5px #d7d7d7;
  resize: none;
  padding: 10px;
  font-size: 14px;
}

#send {
    background-color: unset;
    width: 60px;
    height: 60px;
    color: lightsteelblue;
    border-radius: 15px;
    cursor: pointer;
    margin-left: 10px;
    float: left;
}


.clearfix {
  clear: both;
}
   
   
   #logo{

      background-position: center center;
      background-attachment: fixed;
      color:#f8f8ff;
      text-align: center;
      padding: 5em 0 2em 0;
      cursor: default;
   }



</style>
<head>
  <title>(����)����</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/styles.css">
  <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
</head>
<body>

             <div id="header" >

               <!-- Inner ������õ -->
                  <div >
                     <header>
                     <h1 id="logo">������ ��︮�� ��������?</h1>
                     </header>
                     </div>
                     
  <div class="chat-container">
    <div class="chat-header">
      
      <span id="username">����</span>
    </div>

    <div class="chatbox"  style="-ms-overflow-style: none;">
      <div class="friend-bubble bubble">
     �ȳ�~ �� ���� �������� ���Ͼ�~ �ݰ���!
      </div>
      <div class="friend-bubble bubble">
      �׷� �ʿ��� �´� �������� �˾ƺ���?
      </div>


    </div>
    
 

    <div class="text-box">
      <textarea placeholder="�ۼ��ϱ�"></textarea>
      <button id="send">����</button>
      <div class="clearfix"></div>
    </div>
  </div>


  <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  <script src="js/script.js"></script>
</body>




<script>
var cnt=0;
var message1;
var message2;
var message3;
var message4;
var message5;
var anbtn;
var anbtn1;
var anbtn2;
var anbtn3;
var anbtn4;
    
 $('#send').on('click', send);
function send() {

    if(cnt==0){
     message1 = $('textarea').val();
     console.log(message1);   
   
    $('.chatbox').append('<div class="my-bubble bubble">'+message1+'</div>');
    $('.chatbox').append('<div class="friend-bubble bubble">'+"���Ҿ�!"+'</div>');
    $('textarea').val('');
    $('.chatbox').animate({
        scrollTop: $('.chatbox').get(0).scrollHeight
      }, 600);
    $('.chatbox').append('<div class="friend-bubble bubble">'+"������ ������ ���� �ʹ�?"+'</div>');
    $('.chatbox').append('<div class="friend-bubble bubble"><input type="button" class="anbtn"  value="����"><br><input type="button" class="anbtn" value="ȥ��"><br><input type="button" class="anbtn" value="����" ><br><input type="button" class="anbtn" value="ģ��" ><br></div>');
    $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
    cnt++;
    
  
    }
    
    if (cnt==1){
    $(".anbtn").click(function(){
        anbtn=$(this).attr('value');
        $('.chatbox').append('<div class="my-bubble bubble">'+$(this).attr('value')+'</div>');
        $('.chatbox').animate({
            scrollTop: $('.chatbox').get(0).scrollHeight
          }, 600);
        $('.chatbox').append('<div class="friend-bubble bubble">'+"�׷�����!"+'</div>');
        $('.chatbox').append('<div class="friend-bubble bubble">'+"���ڰ��� ���� ���� �԰� �ʹ�?"+'</div>');
    
       cnt++;
    });  
    }
    
    if(cnt==2){
    
    message2 = $('textarea').val();
    console.log(message2);   
    
    if(message2){
   $('.chatbox').append('<div class="my-bubble bubble">'+message2+'</div>');
   $('textarea').val('');
   $('.chatbox').animate({
        scrollTop: $('.chatbox').get(0).scrollHeight
      }, 600);
   $('.chatbox').append('<div class="friend-bubble bubble">'+"���ְڴ�.."+'</div>');
    $('.chatbox').append('<div class="friend-bubble bubble">'+"�׷� ���� ������ ���� �ʹ�?"+'</div>');
    $('.chatbox').append('<div class="friend-bubble bubble"><input type="button" class="anbtn1"  value="��"><br><input type="button" class="anbtn1" value="����"><br><input type="button" class="anbtn1" value="����" ><br><input type="button" class="anbtn1" value="�ܿ�"></div>');
    $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
    cnt++;
    }
    }
    
    if(cnt==3){
       $(".anbtn1").click(function(){
           anbtn1=$(this).attr('value');
            $('.chatbox').append('<div class="my-bubble bubble">'+$(this).attr('value')+'</div>');
            $('.chatbox').animate({
                scrollTop: $('.chatbox').get(0).scrollHeight
              }, 600);
            $('.chatbox').append('<div class="friend-bubble bubble">'+"���� ������!"+'</div>');
            $('.chatbox').append('<div class="friend-bubble bubble">'+"���ڰ��� �� �غ��� ������ �־�?"+'</div>');
            
           cnt++;
        });  
    }

    if(cnt==4){
       message3 = $('textarea').val();
        console.log(message3);   
        
        if(message3){
       $('.chatbox').append('<div class="my-bubble bubble">'+message3+'</div>');
       $('textarea').val('');
      $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
      $('.chatbox').append('<div class="friend-bubble bubble">'+"������!"+'</div>');
        $('.chatbox').append('<div class="friend-bubble bubble">'+"��? �ٴ�? �ϳ��Ѽ�!"+'</div>');
        $('.chatbox').append('<div class="friend-bubble bubble"><input type="button" class="anbtn2"  value="��"><br><input type="button" class="anbtn2" value="�ٴ�"></div>');
       $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
        cnt++;
        }  
       
    }
    
    if (cnt==5){
       $(".anbtn2").click(function(){
           anbtn2=$(this).attr('value');
           $('.chatbox').append('<div class="my-bubble bubble">'+$(this).attr('value')+'</div>');
           $('.chatbox').animate({
               scrollTop: $('.chatbox').get(0).scrollHeight
             }, 600);
           $('.chatbox').append('<div class="friend-bubble bubble">'+"����!"+'</div>');
           $('.chatbox').append('<div class="friend-bubble bubble">'+"������ �Ѵٸ� ���� ���� ������ �־�?"+'</div>');
           $('.chatbox').animate({
               scrollTop: $('.chatbox').get(0).scrollHeight
             }, 600);
          cnt++;
       });  
       }
    
    
    if (cnt==6){
          message4 = $('textarea').val();
        console.log(message4);   
    
        if(message4){
       $('.chatbox').append('<div class="my-bubble bubble">'+message4+'</div>');
       $('textarea').val('');
      $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
      $('.chatbox').append('<div class="friend-bubble bubble">'+"����~~"+'</div>');
        $('.chatbox').append('<div class="friend-bubble bubble">'+"����̺� �ϴ°� �!?"+'</div>');
        $('.chatbox').append('<div class="friend-bubble bubble"><input type="button" class="anbtn3"  value="�̳� ����"><br><input type="button" class="anbtn3" value="�׳� �׷�"></div>');
       $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
        cnt++;
        }  
    
}   
    if (cnt==7){
       $(".anbtn3").click(function(){
           anbtn3=$(this).attr('value');
           $('.chatbox').append('<div class="my-bubble bubble">'+$(this).attr('value')+'</div>');
           $('.chatbox').animate({
               scrollTop: $('.chatbox').get(0).scrollHeight
             }, 600);
           $('.chatbox').append('<div class="friend-bubble bubble">'+"�׷�����!"+'</div>');
           $('.chatbox').append('<div class="friend-bubble bubble">'+"�����ϸ� ��������� �־�? ���̶���� ���̶���� �� �׷��� ���ݾ� ����"+'</div>');
           $('.chatbox').animate({
               scrollTop: $('.chatbox').get(0).scrollHeight
             }, 600);
          cnt++;
       });  
       }
    
    if (cnt==8){
          message5 = $('textarea').val();
        console.log(message5);   
     
        
        if(message5){
       $('.chatbox').append('<div class="my-bubble bubble">'+message5+'</div>');
       $('textarea').val('');
      $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
        $('.chatbox').append('<div class="friend-bubble bubble">'+"���� ����?!"+'</div>');
        $('.chatbox').append('<div class="friend-bubble bubble"><input type="button" class="anbtn4"  value="����"><br><input type="button" class="anbtn4" value="����"></div>');
       $('.chatbox').animate({
           scrollTop: $('.chatbox').get(0).scrollHeight
         }, 600);
        cnt++;
        }  
    
}  
    
    if (cnt==9){
       $(".anbtn4").click(function(){
           anbtn4=$(this).attr('value');
           $('.chatbox').append('<div class="my-bubble bubble">'+$(this).attr('value')+'</div>');
           $('.chatbox').animate({
               scrollTop: $('.chatbox').get(0).scrollHeight
             }, 600);
          $('.chatbox').append('<div class="friend-bubble bubble">'+"���Ҿ�!��ø� ��ٷ���!�ݹ� �˷��ְھ�"+'</div>');
   
          cnt++;
          
       });  
       }
    
  
    if (cnt==10){
        $('.chatbox').append('<div class="friend-bubble bubble">'+"�ʴ� ���̾�"+'</div>');
        $('.chatbox').animate({
            scrollTop: $('.chatbox').get(0).scrollHeight
          }, 600);
        console.log('����������'+message2);
        
        $('.chatbox').append('<div class="friend-bubble bubble">'+"���þ� �غ� ���°� ���ڳ�!"+'</div>');
        $('.chatbox').append('<div class="friend-bubble bubble"><a href="http://localhost:8083/Web/travel_info.jsp?name=%EB%A7%88%EC%8B%9C%EC%95%88%20%ED%95%B4%EB%B3%80">���þ� �غ�</a></div>');
       /*  $.ajax({
          type: 'POST',
          url: "http://localhost:9000/myPage/predict",
          data:{"accompany": anbtn,
             'food': message2,
             'season': anbtn1,
             'activities':message3,
             'sanbada':anbtn2,
             'location':message4,
              'drive': anbtn3,
              'view':message5,
              'night':anbtn4
           },
          success: function( pre ) {
             $('.chatbox').append('<div class="friend-bubble bubble">'++"���°� ���ٳ�!"+'</div>');
             $('.chatbox').append('<div class="friend-bubble bubble"><a href= >�ⷯ�� ����</a></div>');
            }
       }); */
    }
       
       
}




</script>

</html>