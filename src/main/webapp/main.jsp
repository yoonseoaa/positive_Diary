<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
   Astral by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Astral by HTML5 UP</title>
<meta charset="EUC-KR" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<!-- #FFCF4F 배경색 -->
<style>
@font-face {
   font-family: 'GangwonEduSaeeum_OTFMediumA';
   src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

body {
   background-color: #FFCF4F;
   font-family: 'GangwonEduSaeeum_OTFMediumA';
   height: 100vh;
   /*background-image: url("images/bg1.png");*/
   background-repeat: no-repeat;
   background-size: 100% 100%;
   background-attachment: fixed;
   overflow-y: hidden;
   overflow-x: hidden;
}

#img {
   background-color: rgba(255, 255, 255, 0.0);
}


ul {
   list-style: none;
}

main {
   display: inline-block;
   text-align: center;
}

#menu {
   display: none;
   position: fixed;
   top: 0;
   width: 300px;
   height: 1000px;
   background: rgba(255, 255, 255, 0.5);
}

#menu>ul {
   margin-top: 200px;
   text-align: center;
}

#menu>ul>li {
   width: 100%;
   padding: 20px;
}

#menu>ul>li:hover {
   background: rgba(255, 255, 255, 0.8);
   color: #A9D735;
}

a {
   display: block;
   width: 100%;
   height: 100%;
   style: none;
   text-decoration: none;
   color: inherit;
}

a:hover {
   color: inherit;
}

li {
   list-style: none;
}

.button_login{
   position:absolute;
   top:50%;
   left:50%;
   width:100%;
   margin-top:-0.5em;
   margin-left:-50%;
   text-align:center;
   

}

ul {
  width: 480px;
  margin-left: auto;
  margin-right: auto;
}

    ::placeholder {
        width: 80%;
         font-family: 'GangwonEduSaeeum_OTFMediumA'; font-size:30px;
         border-radius: 10px;
         margin : 10px;
      }
      
      
</style>

</head>

<body class="is-preload">

   <!-- 로고, 메뉴바 -->
   <div id="logo">
      <a href="main.jsp"><img src="images/logo.png"
         style="width: 150px; position: fixed; right: 50px; top: 30px;"></a>

   </div>

   <!-- Wrapper-->
   <div id="wrapper">

      <!-- Nav -->


      <!-- Main -->


         <!-- Me -->
         <article id="home" class="panel intro">
            <!--<a><img src="images/me.png" width=500px /></a>-->

            <div style="display: inline-block; float:right;z-index: 3;transform:rotate(-15deg);position: absolute; right: -100px;bottom: -95px;">
                  <a><img src="images/me.png" style="position: relative; display: inline-block; width:1000px;"></a>
               </div>

               <!-- 로그인 -->
               <div style="z-index: 2;float:left;margin-top: 40px;margin-left: -600px; text-align:center ">
                  <h1 text-align="center">
                     <img src="images/mainIcon.png" style="width:700px;">
                  </h1>
                  <br>
                  <div style="z-index: 1;margin-top: -80px;">
                  <span style="font-size:40px; color:#1F0000">나를 바꾸는 긍정의힘!
                  <br>국내 최초 <strong style="font-size:60px; color:blue">AI</strong> 긍정화 트레이닝 다이어리!</span>

                  <form action="LoginService" method="post" style="margin-top:2S0px;">
                     <table width="800px" >
                   <tr></tr>
                     <td>
                     <input name="m_id" type="text"
                           style="width: 400px; height: 50px; border-radius: 10px; :margin-top:9px;font-family: 'GangwonEduSaeeum_OTFMediumA';" 
                           placeholder="ID">
                     </td>
                     </tr>
                     
                     <tr> 
                     <td>
                     <input name="m_pw" type="password"
                           style="width: 400px; height: 50px; border-radius: 10px; margin-top:9px;"
                           placeholder="PW">
                     </td>
                     </tr>
                     
                     <tr> 
                     <td>
                     <button style="width: 400px; text-align: center; border-radius: 10px; height:50px;
                           font-family: 'GangwonEduSaeeum_OTFMediumA';font-size:30px; margin-top:9px">
                           로그인</button>
                        
                     <p onclick="location.href='join.jsp'"
                     style="color: black; font-size: 30px; text-align:left;cursor:pointer; margin-top:9px; margin-left: 150px" >|&nbsp;&nbsp;회원가입</p>
                     </td>
                     </tr>


                        <!-- 이미지
                     
                     <p align="left"> </p>-->


                        <!--  <button type="button" onclick="location.href='join.jsp'"
                           style="border-radius: 10px; text-align: center; width: 100px">
                           회원가입</button> -->
                     </table>

                  </form>

         </article>

         <!-- 
                  
                  `
            <!-- Footer -->
         <!--  <div id="footer">
               <a>상담해dream</a>
              </div>
         -->

      </div>

      <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/browser.min.js"></script>
      <script src="assets/js/breakpoints.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>
      <script>
         function openCloseToc() {
            if (document.getElementById('menu').style.display === 'block') {
               document.getElementById('menu').style.display = 'none';

            } else {
               document.getElementById('menu').style.display = 'block';
            }
         }
      </script>
</body>
</html>