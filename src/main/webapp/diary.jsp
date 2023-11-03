<%@page import="kr.smhrd.model.MemberVO"%>
<%@page import="kr.smhrd.model.DiaryVO"%>
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
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style>
@font-face {
   font-family: 'GangwonEduSaeeum_OTFMediumA';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

body {
   /*background-image: url("assets/css/images/bg3.jpg");*/
   background-color: #DDECCA;
   background-repeat: no-repeat;
   background-size: 100% 100%;
   background-attachment: fixed;
   overflow-y: hidden;
   font-family: 'GangwonEduSaeeum_OTFMediumA';
   font-size: 30px;
   color: #1F0000;
}

button {
   font-family: 'GangwonEduSaeeum_OTFMediumA';
   font-size: 40px;
   padding-top: 10px;
}

#work {
   width: 70%;
}

form {
   text-align: center;
}

#wrapper {
   width: 1500px;
   height: 100px;
}

#menu {
   display: block;
   position: fixed;
   top: 0;
   width: 300px;
   height: 1000px;
   background: rgba(255, 255, 255, 0.5);
   z-index: 2;
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

#view {
   margin-left: -20px;
}

#modal-wrap {
   background-color: rgba(0, 0, 0, 0.5);
   position: fixed;
   top: 0;
   margin: 0;
   width: 100%;
   height: 100%;
   display: none;
   z-index: 1;
   margin-left: -135px;
}

#mental {
   margin: 100px auto;
   border-radius: 10px;
   width: 600px;
   height: 600px;
   background-color: white;
   text-align: center;
   position: relative;
   padding: 30px;
   margin-left: 350px;
}

#button {
   background-color: #222222;
   color:white;
   width: 300px;
    height: 60px;
    border-radius: 10px;
    margin-left: 5%;
    font-size: 40px;
    padding-top: 10px;
}

#btn-position {
   position: absolute;
   bottom: 20px;
   padding-left: 200px;
   padding-bottom: 20px;
}

#btn-position>button {
   width: 200px;
   height: 50px;
   border-radius: 5px;
}

#showExp {
   position: absolute;
   width: 100%;
   top: 0;
}
</style>
</head>


<body class="is-preload">
   <%
   MemberVO vo = (MemberVO) session.getAttribute("vo");
   List<DiaryVO> list = (List<DiaryVO>) request.getAttribute("list");
   %>
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
      <a href="main.jsp"><img src="images/logo.png"
         style="width: 150px; position: fixed; right: 50px; top: 30px;"></a>
      <span onclick="openCloseToc()" style="cursor: pointer;"><img
         src="images/menu.png"
         style="width: 50px; position: fixed; left: 50px; top: 30px;"></span>

   </div>


   <!-- Wrapper-->
   <div id="wrapper">

      <!-- Work -->
      <article id="work" class="panel">

         <form action="DiaryService" method="post" id="Form" name="twoSend"
            accept-charset="utf-8">
            <h2
               style="font-family: 'GangwonEduSaeeum_OTFMediumA'; font-size: 100px; margin-top: 50px;">
               <img src="images/me.png"
                  style="width: 200px; vertical-align: middle; margin-bottom: 30px;">오늘
               하루를 기록해보세요!
            </h2>
            <br>
            <table>
               <tr>
                  <td align="right" colspan="2"><textarea name="diary"
                        style="border-radius: 10px; background-color: white; font-family: 'GangwonEduSaeeum_OTFMediumA'; font-size: 40px; border: 1px solid gray"
                        rows="5" cols="56" placeholder="내용을 입력해주세요"></textarea></td>
               </tr>
            </table>
            <div style="text-align: center;">
               <span id="button"onclick="showExp()"
                  style="display: inline-block; border-radius: 10px; text-align: center; width: 400px; height: 60px; margin-bottom: 100px; margin-top: -100px;">저
                  장</span>
            </div>
            <div id="modal-wrap" data-backdrop="static">
               <div id="mental">
                  <div style="position: relative;">
                     <div id="show"></div>
                  </div>
                  <div>
                  <table>
                     <tr>
                          <td> <a><img id="lv1" src="images/lv1.png" width="300px" style="position:absolute;z-index: 1; margin-left:-100px;margin-top:20px;"
                           ></a></td>
                           <td><a> 
                        <img src="images/water.gif" width="150px"
                           style="position:absolute; margin-left:100px;margin-left:-70px;z-index: 2;"> </a></td>
                           <td><a> 
                        <img src="images/line.png" width="100px"
                           style="position:absolute; margin-left:-90px;margin-top:100px;z-index: 3;"> </p></td>
                           <td><p><img src="images/lv2.png"
                           style=" position:absolute; width:150px; height: 150px; margin-left: -90px; margin-top:90px;z-index: 4;"></p></td>
                     </tr>
                         
                    </table>
                  </div>
                  <div>
                     <a style="font-size: 50px; margin-top: 300px;">
                        경험치 +<%=100%>EXP<br> <%= vo.getC_nick() + "님이 성장하였습니다." %></a>
                        <a style="font-size: 50px; margin-top: 300px;"> 
                        
                     </a>
                       
                  </div>
                  <div id="btn-position">
                     <button type="submit" id="view"
                        onclick="location.href='DiaryService'">확인</button>
                  </div>
               </div>
            </div>
   </div>
   </form>

   </article>

   <!-- 경험치 -->





   </div>

   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>


   <!-- menu -->
   <script>
      function openCloseToc() {
         if (document.getElementById('menu').style.display === 'block') {
            document.getElementById('menu').style.display = 'none';

         } else {
            document.getElementById('menu').style.display = 'block';
         }
      }
   </script>

   <!-- 일기보기 -->
   <script>
      function showExp() {
         document.querySelector('#modal-wrap').style.display = 'block';

      }

      function modalClose() {
         document.querySelector('#modal-wrap').style.display = 'none';
         document.getElementById('view').textContent = '확인';
         document.getElementById('view').style.backgroundColor = '#FD8A69';
      }

      //버튼 클릭리스너 달기
      //document.querySelector('.calendar').addEventListener('click', modalOpen);
      document.querySelectors('#view').addEventListener('click', modalClose);

      //일기전환 버튼   
      function viewExp() {
         document.getElementById('before_d').style.display = 'block';
         document.getElementById('chage_d').style.display = 'block';
         document.getElementById('view').textContent = '원본일기 보기';
         document.getElementById('view').style.backgroundColor = '#FD8A69';
      }
   </script>


</body>
</html>c