<%@page import="kr.smhrd.model.DiaryVO"%>
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

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<style type="text/css">
@font-face {
	font-family: 'GangwonEduSaeeum_OTFMediumA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	background-image: url("images/bg4.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
	overflow-y: scroll;
	font-family: 'GangwonEduSaeeum_OTFMediumA';
	font-size: 30px;
	color: #1F0000;
}

button {
	font-family: 'GangwonEduSaeeum_OTFMediumA';
	font-size: 30px;
	padding-top: 10px;
}

#work {
	width: 55%;
}

#myDiary {
	padding: 20px;
	width: 100%;
	height: 250px;
	border: 1px solid black;
	border-radius: 15px;
}

.per {
	padding-top: 50px;
	width: 50%;
	float: left;
	text-align: center;
}

.per>span {
	font-size: 50px;
}

form>div>span {
	position: absolute;
	right: 10px;
}

#modal-wrap {
	background-color: rgba(0, 0, 0, 0.5);
	position: fixed;
	margin: 0;
	z-index: 1000;
	width: 100%;
	height: 100%;
	display: none;
}

#mental {
	margin: 100px auto;
	border-radius: 10px;
	width: 600px;
	height: 600px;
	background-color: white;
	padding: 20px;
	text-align: center;
	line-height: 150%;
	font-size: 30px;
}

#title_image {
	position: relative;
}

#title_image span {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
}

#saveBtn {
	width: 300px;
	height: 60px;
	border-radius: 10px;
}

textarea {
	border-radius: 15px;
}

#menu {
	display: block;
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

#modal-wrap {
	background-color: rgba(0, 0, 0, 0.5);
	position: fixed;
	top: 0;
	margin: 0;
	width: 100%;
	height: 100%;
	display: none;
}

#mental {
	margin: 100px auto;
	border-radius: 10px;
	width: 700px;
	height: 730px;
	background-color: white;
	text-align: center;
	position: relative;
}

#mental>p {
	padding: 20px;
	font-size: 30px;
}

#mental>button {
	position: absolute;
	bottom: 20px;
}
</style>

</head>

<body class="is-preload">

	<%
	DiaryVO dvo = (DiaryVO) session.getAttribute("diary_req");
	String good_p = dvo.getDiary_rate();
	float good = Float.parseFloat(good_p);
	float bad = 100 - good;
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
			<header align="center">
				<div>
					<img src="images/me.png" width=100px id="title_image"> <span
						style="font-size: 100px;">긍정문으로 바꿔보세요!</span>
				</div>
			</header>

			<section>
				<div id="myDiary"><% if (dvo.getDiary().contains(".")){ %>
					<%=dvo.getDiary().replace(".", ".<br>")%>
					<%} else {%>
					<%=dvo.getDiary().replace(".", ".<br>")%><br>
					<%}%>
					<span>[ 긍정<%=good%>% /
						부정<%=bad%>% ]
					</span>
				</div>
				<div>
					<button id="modal_btn" style="width: 50px; margin-top: 5px;">?</button>
				</div>
				<form action="PositiveService3" method="post" id="positive3"
					accept-charset="utf-8" style="text-align: center;">

					<textarea name="diary"
						style="font-size: 25px; font-family: 'GangwonEduSaeeum_OTFMediumA'; height: 250px;"
						rows="5" placeholder="긍정문을 입력하세요."></textarea>
					<button id="saveBtn">
						저장<span>(3/3)</span>
					</button>
				</form>
	</div>
	</section>
	</article>

	<div id="modal-wrap">
		<div id="mental">
			<h2 style="letter-spacing: 5px; margin-top: 20px;">멘탈휘트니스 대화법
				3요소</h2>
			<p>
				<strong>1. 대화를 "너"가 아니라 "나"로 표현합니다.</strong><br> 상대방의 잘못된 점이나
				행동을 지적하기보다는 내가 느끼는 것, 내 생각을 중심으로 이야기를 시작합니다. <br> <br> <strong>2.
					불만이 아니라 소망을 표현합니다.</strong><br> 불만을 표현하는 것이 아닌, "~했으면 좋겠다"는 소망을 담아 이야기를
				합니다. <br> <br> <strong>3. 긍정적인 감정 단어를 사용합니다.</strong><br>"~게
				표현해준다면 내가 따뜻함을 느낄 것 같아"와 같이, 소망과 함께 긍정적 단어를 이야기 합니다. <br> <br>
				<button>닫기</button>

			</p>


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
		function modalOpen() {
			document.querySelector('#modal-wrap').style.display = 'block';
		}

		// 모달 끄기
		function modalClose() {
			document.querySelector('#modal-wrap').style.display = 'none';
		}

		//버튼 클릭리스너 달기 
		document.querySelector('#modal_btn').addEventListener('click',
				modalOpen);
		document.querySelector('#mental>p>button').addEventListener('click',
				modalClose);

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