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
   font-family: 'GangwonEduSaeeum_OTFMediumA';
   font-size:30px;
   border-radius: 10px;
   margin : 10px;
}

#menu{
         display:none;
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
   <div id="menu">
           <ul>
               <li><a href="diary.jsp">�ϱ⾲��</a></li>
               <li><a href="TotalService">��躸��</a></li>
               <li><a href="BoardService">�ϱ⺸��</a></li>
               <li><a href="MyService">����������</a></li>
               <li><a href="join_edit.jsp">ȸ������ ����</a></li>
            </ul>
         
         </div>
   
   <!-- �ΰ�, �޴��� -->
        <div id="logo">
            <a href="main.jsp"><img src="images/logo.png" style="width:150px; position:fixed; right:50px;top:30px;"></a>
            <span onclick="openCloseToc()" style="  cursor: pointer;"><img src="images/menu.png" style="width:50px; position:fixed; left:50px;top:30px;"></span>
            
         </div>




   <!-- ȸ������ -->
   <div id="join">
      <article id="joinPage" class="panel">
         <header>
            <h1 align="center" style="font-family: 'GangwonEduSaeeum_OTFMediumA';">ȸ������ ����</h1>
         </header>

         <form action="JoinService" method="post" style="font-family: 'GangwonEduSaeeum_OTFMediumA'; font-size:30px">
            <table id="table_size">
            <tr></tr>
               <colgroup>
                  <col width="30%" />
                  <col width="auto" />
               </colgroup>
               <tr>
                  <td align="center">���̵�</td>
                  <td><input type="text" name="m_id" placeholder="���̵� �Է��ϼ���" ></td>
               </tr>      
               <tr style="font-family:'GangwonEduSaeeum_OTFMediumA';">
                  <td align="center">��й�ȣ</td>
              <td><input type="password" name="m_pw" style="font-family: 'NanumSquare';"
                     placeholder="��й�ȣ�� �Է��ϼ���" ></td>
               </tr>
               <tr>
                  <td align="center">����</td>
                  <td><input type="date" name="b_date" placeholder="������ �Է��ϼ���">
                  </td>
               </tr>
               <tr>
                  <td align="center">��ȭ��ȣ</td>
                  <td><input type="text" name="tel" placeholder="��ȭ��ȣ�� �Է��ϼ���">
                  </td>
               </tr>
               <tr>
                  <td align="center">�г���</td>
                  <td><input type="text" name="c_nick"
                     placeholder="ĳ���� �̸��� �Է��ϼ���"></td>
                  <!-- ���� �� �ʱ�ȭ -->
               <tr>
                  <td></td>
                  <td> 
                  <input type="submit" value="�Ϸ�"></td>
               </tr>
               <tr></tr>
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

   <script>
         function openCloseToc() {
             if(document.getElementById('menu').style.display === 'block') {
               document.getElementById('menu').style.display = 'none';
           
             } else {
               document.getElementById('menu').style.display = 'block';
             }
           }
      </script>


</body>

</html>