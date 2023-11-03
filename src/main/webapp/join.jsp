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
          src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff') format('woff');
          font-weight: normal;
          font-style: normal;
      }


body {
   /*background-image:url("assets/css/images/bg.jpg");*/
   background-color: #FEEBB6;
   background-repeat: no-repeat;
   background-size: 100% 100%;
   background-attachment: fixed;
   overflow-y: scroll;
   	font-family: 'GangwonEduSaeeum_OTFMediumA';
	font-size:30px;
	color:#1F0000;
}



#table_size {
   width: 50%;
   margin: 0 auto;
   background-color: rgba(255, 255, 255, 0.2);
   color: black;
}

#table_size tr {
   height: 80px;
   line-height: 80px;
   font-family: 'GangwonEduSaeeum_OTFMediumA';
   font-size:30px;
}

#table_size input {
   width: 80%;
   font-family: 'GangwonEduSaeeum_OTFMediumA'; font-size:30px;
   border-radius: 10px;
   margin : 10px;
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

      ::placeholder {
        width: 80%;
         font-family: 'GangwonEduSaeeum_OTFMediumA'; font-size:30px;
         border-radius: 10px;
         margin : 10px;
      }


</style>
</head>

<body class="is-preload">
   <br>
   <br>
   
   <!-- 로고, 메뉴바 -->
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



   <!-- 회원가입 -->
   <div id="join">
      <article id="joinPage" class="panel">
         <header>
            <h1 align="center" style="font-family: 'GangwonEduSaeeum_OTFMediumA';">회원가입</h1>
         </header>

         <form action="JoinService" method="post">
            <table id="table_size">
               <colgroup>
                  <col width="30%" />
                  <col width="auto" />
               </colgroup>
               <tr>
                  <td align="center">아이디</td>
                  <td><input type="text" name="m_id" placeholder="아이디를 입력하세요" >
                     <span><button onclick="emailCheck()" id="check_btn"
                           type="button" style="height: 50px; border-radius: 10px; border-radius: 10px;">중복확인</button></td>
               <tr id="hidden" style="display: none;">
                  <td></td>
                  <td style="line-height: 30px"><p id="result"></p></td>
               </tr>
               <tr>
                  <td align="center">비밀번호</td>
                  <td><input type="password" name="m_pw" style="font-family: 'NanumSquare';"
                     placeholder="비밀번호를 입력하세요" ></td>
               </tr>
               <tr>
                  <td align="center">생일</td>
                  <td><input type="date" name="b_date" placeholder="생일을 입력하세요">
                  </td>
               </tr>
               <tr>
                  <td align="center">전화번호</td>
                  <td><input type="text" name="tel" placeholder="전화번호를 입력하세요">
                  </td>
               </tr>
               <tr>
                  <td align="center">닉네임</td>
                  <td><input type="text" name="c_nick"
                     placeholder="캐릭터 이름을 입력하세요"></td>
                  <!-- 제출 및 초기화 -->
               <tr>
                  <td colspan="2" align="center"><input
                     style="width: 150px; height: 60px; margin: 10px; border-radius: 10px"
                     type="submit" value="회원가입"></td>
               </tr>
            </table>
         </form>

      </article>




   </div>

   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

   <script type="text/javascript">
      function emailCheck() {
         // 1. 데이터수집
         let inputs = $('input[name=m_id]');
         let m_id = $(inputs[0]).val();
         console.log(m_id);

         // 2. ajax 통신
         $.ajax({
            url : 'CheckService',
            type : 'POST',
            data : {
               "m_id" : m_id
            },
            success : function(res) {
               console.log(res);
               // 결과를 html에 출력
               if (res == 'true') {

                  $('#result').html('사용할 수 있는 아이디 입니다.').css('color',
                        'green');
                  $('#joinBtn').removeAttr('disabled');
                  $('#hidden').removeAttr('style');
               } else {
                  $('#hidden').removeAttr('style');
                  $('#result').html('중복된 아이디 입니다.')
                  $('#result').css('color', 'red');
               }
            },
            error : function() {
               alert('error');
            }

         });
      }
   </script>
   
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