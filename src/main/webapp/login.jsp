<%@page import="kr.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<title>Astral by HTML5 UP</title>
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
	background-color: #FFCF4F;
	font-family: 'GangwonEduSaeeum_OTFMediumA';
	height: 100vh;
	/*background-image: url("images/bg1.png");*/
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
	overflow-y: hidden;
	overflow-x: hidden;
	font-size: 30px;
	color: #1F0000;
}

#new-icon>a {
	display: inline-block;
	width: 350px;
	hight: 200px;
	text-align: center;
	text-decoration: none;
}

#menu {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
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
</style>

</head>


<body class="is-preload">
	<%
	request.setCharacterEncoding("EUC-KR");
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	String c_nick = "";
	if (vo == null) {
		c_nick = request.getParameter("c_nick");
	} else {
		c_nick = vo.getC_nick();
	}
	%>

	<!-- Wrapper-->
	<div id="wrapper">
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

		<!-- Work -->
		<article id="work" class="panel">
			<a><img src="images/me.png" style="height: 400px;"></a>
			<header>
				<h2 style="text-align: center; color: #1F0000;"><%=c_nick%>님,
					환영합니다!
				</h2>
			</header>

		</article>

		<div id="new-icon">
			<a href="TotalService" class="icon"><img src="images/002.png"
				style="width: 400px;"></a> <a href="diary.jsp" class="icon"><img
				src="images/001.png" style="width: 400px;"></a> <a href="MyService"
				class="icon"><img src="images/003.png" style="width: 400px;"></a>
		</div>



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



	<script type="text/javascript">
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