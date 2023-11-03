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

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<style type="text/css">


@font-face {
	font-family: 'GangwonEduSaeeum_OTFMediumA';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	background-image: url("images/bg2.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
	overflow-y: scroll;
	font-family: 'GangwonEduSaeeum_OTFMediumA';
	font-size:30px;
	color:#1F0000;
	
}

#work {
	width: 90%;
}
cavas{
font-family: 'GangwonEduSaeeum_OTFMediumA';

}

#chButton {
	width: 300px;
	height: 60px;
	border-radius: 10px;
	float: left;
	margin-left: 29%;
	background-color: #18A8F1;
	font-family: 'GangwonEduSaeeum_OTFMediumA';
font-size:30px;
padding-top:10px;
}

#endButton {
	width: 300px;
	height: 60px;
	border-radius: 10px;
	margin-left: 5%;
	float: left;
	font-family: 'GangwonEduSaeeum_OTFMediumA';
font-size:30px;
padding-top:10px;
}

#title {
	margin: auto;
}

#title_image {
	position: relative;
}

#title_image span {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
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
      
      #showPer{
      background-color:#FFF5D8; 
      width: 720px;
      height: 165px;
      text-align: center;
      border-radius: 10px;
   	  margin: 0 auto;
   	  padding: 20px;
   	  }


</style>

</head>

<body class="is-preload">
<div id="menu">
            <ul>
               <li><a href="diary.jsp">일기쓰기</a></li>
               <li><a href="TotalService">통계보기</a></li>
               <li><a href="BoardService">일기보기</a></li>
               <li><a href="MyService">마이페이지</a></li>
               <li><a href="join_edit.jsp">회원정보 수정</a></li>
            </ul>
         
         </div>


	<%
	response.addHeader("Access-Control-Allow-Origin", "*");
	String good_p = request.getParameter("good");
	float good = Float.parseFloat(good_p);
	session.setAttribute("good", good);
	String bad = String.format("%.1f", (100 - good)) ;
	%>
	
	   <div id="logo">
            <a href="main.jsp"><img src="images/logo.png" style="width:150px; position:fixed; right:50px;top:30px;"></a>
            <span onclick="openCloseToc()" style="  cursor: pointer;"><img src="images/menu.png" style="width:50px; position:fixed; left:50px;top:30px;"></span>
            
         </div>
	
	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Work -->
		<article id="work" class="panel">
			<header style="margin-top: -20px; text-align: center; ">
				<div id="title">
					<img src="images/me.png" width=100px id="title_image"> 
					<span style="font-size:100px;">일기 분석 결과 </span>
				</div>
			</header>

			<div style="width: 700px; height:380px; text-align: center; margin: 0 auto ;" >
				<!--차트가 그려질 부분-->
				<canvas id="myChart" style="font-family: 'GangwonEduSaeeum_OTFMediumA';"></canvas>
						</div>

			<!-- script안에 내용이 차트↓ data안에 긍정 부정 비율 값 불러와야함! -->
			<script type="text/javascript">
				var context = document.getElementById('myChart').getContext(
						'2d');
				var myChart = new Chart(context, {
					type : 'bar', // 차트의 형태 bar(막대),line(꺽은선),pie(도넛?동그라미)
					data : { // 차트에 들어갈 데이터
						labels : [ ' ','긍정', '부정',' ' ],//x 축
						datasets : [ { //데이터
							label : '긍정,부정 비율', //차트 제목
							fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
							data : [0,<%=good%>,<%=bad%>,0], //x축 label에 대응되는 데이터 값
							backgroundColor : [
							//색상
								'gray','#18A8F1',		
								'#FD8A69','gray'],
							borderColor : [
							//경계선 색상
								'gray','#18A8F1',		
								'#FD8A69','gray'],
							borderWidth : 1
						//경계선 굵기
						} ]
					},
					options : {
						legend : {
							display : false
						}, // 범례제거
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true,
									fontSize:18 //y축폰트사이즈
								},
							} ]
						}
					}
				});
				
			
			</script>
			
		
			<div id="showPer">
			
			<table>
			
			<tr>
			<td style="color:#18A8F1" >긍정</td>
			<td style="color:#FD8A69">부정</td>
			</tr>
			
			<tr style="font-size:70px; line-height:70px">
			<td style="color:#18A8F1"><%=good%>&nbsp;<span style="font-size:30px;">%</span></td>
			<td style="color:#FD8A69"><%=bad%>&nbsp;<span style="font-size:30px;">%</span></td>
			</tr>
			
			
			</table>
			</div>
	
			</table>
			<div id="buttonStyle" style="margin-top: 20px;">
				<button onclick="location.href='RateService0?diary_rate=<%=good%>'" id="chButton">긍정문 바꾸기</button>
				<button onclick="location.href='login.jsp'" id="endButton">종료</button>
			</div>
	</div>
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