<%@page import="kr.smhrd.model.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<title>Astral by HTML5 UP</title>
   <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <link rel="stylesheet" href="assets/css/main.css" />
   <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

   <style>      
      @font-face {
          font-family: 'GangwonEduSaeeum_OTFMediumA';
          src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff') format('woff');
          font-weight: normal;
          font-style: normal;
      }
      h1{
       font-family: 'GangwonEduSaeeum_OTFMediumA';
       font-size: 70px;
       color: #1F0000;
      
      }
      h2{
       font-family: 'GangwonEduSaeeum_OTFMediumA';
       font-size: 40px;
       text-align: center;
      }
      #body_back {
         background-image: url("images/bg6.jpg");
         background-repeat: no-repeat;
         background-size: 100% 100%;
         background-attachment: fixed;
         overflow-y: scroll;
         font-family: 'GangwonEduSaeeum_OTFMediumA';
         font-size:30px;
         color:#1F0000;
      }
      #wrapper{
      text-align: center;
      }
      


      #char{
      width:70%;
      }
         
   
      table{
         margin: 0 auto;
         padding: 20px;
         width: 600px;
         padding: 20px;
         background-color: rgba(255,255,255,0.3);
         
      }
      tr{
      margin: 10px;
      padding: 30px;
      
      }
      li>input{
         width: 20px;
         height: 20px;
         z-index: 1;
      }
   
      #menu{
         display:block;
         position:fixed; top:0;
         width: 300px;
         height: 1000px;
         background: rgba(255,255,255,0.5);
      }
      #menu>ul{
         margin-top: 200px;
         text-align: center;      
      }
      #menu>ul>li{
         width:100%;
         padding: 20px;
      }
      #menu>ul>li:hover{
         
         background: rgba(255,255,255,0.8);
         color: #A9D735;
      }
      
      a{
         display: block;
         width: 100%;
         height: 100%;
         style: none;
         text-decoration: none;
          color: inherit;
      }
      a:hover{
      color: inherit;
      
      }
      
      li{
         list-style: none;
      }
      #skin>span{
         margin: 100px 20px 20px 20px;
         padding: 20px;
         display: block;
         width:250px;
         height:150px;
         background-color: rgba(255,255,255,0.3);
         float: left;
         cursor: pointer;
         border-radius: 10px;
         font-size: 20px;
      }
      #skin>span:hover{
      background-color: rgba(255,255,255,0.8);
      }
      #book{
         width: 100%;
         height: 150px;
         border-radius: 10px;
         margin: 50px 20px 100px 20px;
         padding: 20px;
      }
            @media (min-width: 300px) {
          h1{ font-size: 30px; } 
          }
          
      @media (min-width: 768px) {
         h1{font-size:  40px; } 
          }
      @media (min-width: 992px) {
         h1{ font-size:  60px; } 
         }
      @media (min-width: 1200px) {
          h1{ font-size:  70px; } 
         }
         
   </style>
</head>

      
<body id='body_back'>
<% MemberVO vo =(MemberVO) request.getAttribute("mvo"); %>
         <div id="menu">
            <ul>
               <li><a href="diary.jsp">일기쓰기</a></li>
               <li><a href="TotalService">통계보기</a></li>
               <li><a href="BoardService">일기보기</a></li>
               <li><a href="MyService">마이페이지</a></li>
               <li><a href="join_edit.jsp">회원정보 수정</a></li>
            </ul>
         
         </div>
         <div id="logo">
            <a href="main.jsp"><img src="images/logo.png" style="width:150px; position:fixed; right:50px;top:30px;"></a>
            <span onclick="openCloseToc()" style="  cursor: pointer;"><img src="images/menu.png" style="width:50px; position:fixed; left:50px;top:30px;"></span>
         </div>

      <!-- Wrapper-->
      <div id="wrapper">
         <!-- Work -->
            <h1><img src="images/icon-my.png" style="width:80px;  vertical-align: middle;">마이페이지</h1>
         
            <div id="char">
               <div id="image"><img src="images/lv2.png" style="margin-left:100px; width: 400px">
               <table style="border-collapse:collapse;border-radius:15px;" >
                     <tr>
                        <td>닉네임 : </td>
                        <td><%= vo.getC_nick() %></td>
                     </tr>
                     <tr>
                        <td>Lv : </td>
                        <td> <%= vo.getLev() %> </td>
                     </tr>
                     <tr>
                        <td>exp : </td>
                        <td><%= vo.getExp() %></td>
                     </tr>
               </div>
               
                  
                  </table>
                  <br>
                  <div>♡ 캐릭터 북 ♡ </div>                 
                  <img src="images/char.png" style="width: 700px"> 
            
            </div>
            
            
            <div id="tema">
            <hr style="border-top: solid 1px rgba(255,255,255,0.5);">   
            
            <h2>*테마 변경</h2>
            <div id="skin" style="margin-left:350px">
               <span onclick='ChangeNormal()' class='white'>화이트모드<br><span style="display: inline-block; width: 60%; height:50%; background-color: white; "></span></span>
               <span onclick='ChangeDark()' class='black'>다크모드<br> <span style="display: inline-block;  width: 60%; height:50%; background-color: black; "></span></span>
            
            </div>
            
            </div>
      
      

      </div>

      
      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
         
         <script>
         // 메뉴
         function openCloseToc() {
             if(document.getElementById('menu').style.display === 'block') {
               document.getElementById('menu').style.display = 'none';
           
             } else {
               document.getElementById('menu').style.display = 'block';
             }
           }
      
      // 다크모드 전환
      
         function ChangeDark() {
            //$('body').style.backgroundImage = 'none';
            document.querySelector('#body_back').style.backgroundImage= 'none';
            document.querySelector('#body_back').style.backgroundColor= 'black';
            document.querySelector('#body_back').style.color= 'white';
            document.querySelector('h1').style.color= 'white';
            document.querySelector('h2').style.color= 'white';
            document.querySelector('table').style.color= 'white';
            
         }
         function ChangeNormal(){
            document.querySelector('#body_back').style.backgroundImage= 'url("images/bg6.jpg")';
            document.querySelector('#body_back').style.backgroundColor= 'none';
            document.querySelector('#body_back').style.color= '#1F0000';
            document.querySelector('h1').style.color= '#1F0000';
            document.querySelector('h2').style.color= '#1F0000';
            document.querySelector('table').style.color= '#1F0000';
            
         }
      </script>

</body>
</html>