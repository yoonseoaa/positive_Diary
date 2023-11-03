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
	background-image: url("images/bg5.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
	overflow-y: scroll;
	font-family: 'GangwonEduSaeeum_OTFMediumA';
	font-size: 30px;
	color: #1F0000;
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

header {
	width: 100%;
	height: 100px;
}

nav {
	width: 100%;
	height: 23px;
	border-top: 1px solid red;
	border-bottom: 1px solid red;
	margin-right: 10%;
	background-color: black;
	color: white;
}

nav a {
	background-color: black;
	color: white;
	text-decoration: none;
}

#left {
	position: fixed;
	left: 30px;
	top: 200px;
	bottom: 0;
	width: 200px;
}

#left ul {
	background-color: black;
	list-style: none;
	margin: 0;
	padding: 0;
}

#left ul li {
	margin-left: 20px;
	padding-top: 5px;
	background-color: black;
}

#left ul li a {
	background-color: black;
	color: white;
	text-decoration: none;
}

#main {
	padding-left: 250px;
	padding-top: 20px;
	left: 250px;
	top: 200px;
	bottom: 0;
	width: 60%;
	height: 500px;
}

.f {
	text-align: center;
}

h {
	text-align: center;
}

.list-table {
	width: 50%;
	margin: 0 auto;
	background-color: rgba(255, 255, 255, 0.2);
	color: black;
	border: 1px solid #444444;
	border-collapse: collapse;
}

th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #fff;
	border-left: 1px solid #fff;
	background: #eee;
}

th, td {
	text-align: center;
	border: 1px solid #444444;
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
}

#mental {
	margin: 100px auto;
	border-radius: 10px;
	width: 600px;
	height: 620px;
	background-color: white;
	text-align: center;
	position: relative;
	padding: 30px;
}

#btn-position {
	position: absolute;
	bottom: 20px;
	padding-left: 50px;
}

#btn-position>button {
	width: 200px;
	height: 50px;
	border-radius: 5px;
}

#view {
	background-color: #FD8A69;
}

#chage_d {
	display: block
}

#chage_d>p:nth-child(1) {
	height: 380px;
	background-color: rgba(0, 0, 0, 0.1);
	color: rgba(0, 0, 0, 0.8);
	border-radius: 5px;
}

#before_d {
	display: none;
	position: absolute;
	width: 100%;
	top: 0;
}

#before_d>p:nth-child(1) {
	background-color: rgba(0, 0, 0, 0.1);
	color: rgba(0, 0, 0, 0.8);
	height: 380px;
	border-radius: 5px;
}
</style>
<body class="is-preload">

	<%
	List<DiaryVO> list = (List<DiaryVO>) request.getAttribute("list");
	%>


	<br>
	<br>
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

	<div id="board">
		<article id="joinPage" class="panel">
			<header>
				<h1 align="center"
					style="font-family: 'GangwonEduSaeeum_OTFMediumA'; margin-top: 80px;">게시판</h1>
			</header>
			<div id="board_area">
				<thead>
					<table class="list-table" style="border-radius: 2em;">
						<tr>
							<td width="70">번호</td>
							<td width="500">내용</td>
							<td width="150">작성일</td>
						</tr>
						<%
						for (DiaryVO vo : list) {
						%>

						<tr>
						<tbody>
							<td><%=vo.getD_id()%></td>
							<td id="content" style="cursor: pointer;" onclick="open1()">
								<%if(vo.getDiary()!=null && vo.getDiary().length() >= 35){%>
								<%=vo.getDiary().substring(0,35) + "..."%>
								<%} else{ %>
								<%= vo.getDiary() %>
								<%} %>
								</td>
							<td><%=vo.getD_date()%></td>

						</tbody>
						</tr>

						<%
						}
						%>


						<!-- 일기보기 -->
					<!-- <div id="modal-wrap">
					<div id="mental"> 
				 		<div id="date_d"> </div>
				 		<div style="position: relative;">
							<div id="chage_d"> </div>
							<div id="before_d"> </div>
						</div>
						<div id="btn-position"><button id="view" onclick="viewDiary()"> 원본일기 보기 </button> &nbsp;&nbsp; <button id="viewClose"> 닫기 </button></div>
					</div>
				</div> -->
					
					
					<div id="modal-wrap">
							<div id="mental">
								<div id="date_d">
									<span id="date_write">작성일 : May 12 </span>
								</div>
								<div style="position: relative;">
									<div id="chage_d">
										<p align="center" id="diary_good">May 12일자 : 긍정일기 불러오기</p>
										<p id="diary_good_rate">긍정문 분석비율 : 긍정_% 부정_%</p>
									</div>
									<div id="before_d">
										<p id="diary">May 12일자 : 원문일기 불러오기</p>
										<p id="diary_rate">원문 분석비율 : 긍정_% 부정_%</p>
									</div>
								</div>
								<div id="btn-position">
									<button id="view" onclick="viewDiary()">원본일기 보기</button>
									&nbsp;&nbsp;
									<button id="viewClose" onclick="close1()">닫기</button>
								</div>
							</div>
						</div>
						</div>

						<script>
							function openCloseToc() {
								if (document.getElementById('menu').style.display === 'block') {
									document.getElementById('menu').style.display = 'none';

								} else {
									document.getElementById('menu').style.display = 'block';
								}
							}
						</script>


						<script>
						/* (function($) {

							   "use strict";

							   // Setup the calendar with the current date
							$(document).ready(function(){
							    var date = new Date();
							    var today = date.getDate();
							    // Set click handlers for DOM elements
							    $(".right-button").click({date: date}, next_year);
							    $(".left-button").click({date: date}, prev_year);
							    $(".month").click({date: date}, month_click);
							    $("#add-button").click({date: date}, new_event);
							    // Set current month as active
							    $(".months-row").children().eq(date.getMonth()).addClass("active-month");
							    init_calendar(date);
							    var events = check_events(today, date.getMonth()+1, date.getFullYear());
							    show_events(events, months[date.getMonth()], today);
							}); */
						
						
							function open1() {
								document.querySelector('#modal-wrap').style.display = 'block';
								document.getElementById('date_write').textContent = "<%=list.get(0).getD_date()%>";
								document.getElementById('diary_good').innerHTML = "<%=list.get(0).getPositive_s3().replace("\r\n", "<br>")%>";
								document.getElementById('diary_good_rate').textContent = "긍정문 분석비율 : 긍정"+<%=list.get(0).getS3_rate()%>+"% 부정"+<%=Math.floor((100 - Float.parseFloat(list.get(0).getS3_rate()))*10)/10%>+"%";
								document.getElementById('diary').innerHTML = "<%=list.get(0).getDiary().replace("\r\n", "<br>")%>";
								document.getElementById('diary_rate').textContent = "긍정문 분석비율 : 긍정"+<%=list.get(0).getDiary_rate()%>+"% 부정"+<%=Math.floor((100 - Float.parseFloat(list.get(0).getDiary_rate()))*10)/10%>+"%";
								
								
							}

							function close1() {
								document.querySelector('#modal-wrap').style.display = 'none';
								document.querySelector('#before_d').style.display = 'none';
								document.getElementById('view').textContent = '원본일기 보기';
								document.getElementById('view').style.backgroundColor = '#FD8A69';
							}

							//버튼 클릭리스너 달기
							//document.querySelector('.calendar').addEventListener('click', modalOpen);
							document.querySelector('#viewClose')
									.addEventListener('click', close1);

							//일기전환 버튼	
							function viewDiary() {
								if (document.getElementById('chage_d').style.display === 'block') {
									document.getElementById('chage_d').style.display = 'none';
									document.getElementById('before_d').style.display = 'block';
									document.getElementById('view').textContent = '긍정일기 보기';
									document.getElementById('view').style.backgroundColor = '#18A8F1';

								} else {
									document.getElementById('before_d').style.display = 'none';
									document.getElementById('chage_d').style.display = 'block';
									document.getElementById('view').textContent = '원본일기 보기';
									document.getElementById('view').style.backgroundColor = '#FD8A69';
								}
							}
							
							// Display all events of the selected date in card views
							<%-- function show_events(events, month, day) {
							    ////////////////////////////////////////// 수정 부분 ///////////////////////////////////////////////
							    // Clear the dates container
							    //팝업창(modal)초기화
							    $("#date_d").empty();
							    $("#chage_d").empty();
							    $("#before_d").empty();
							    $("#date_d").show(250);
							    $("#chage_d").show(250);
							   
							    
							    console.log(event_data["events"]);
							    // If there are no events for this date, notify the user
							    if(events.length===0) {
							          
							       // 일기보기 레이어 변경
							       let date_d = $("<span>작성일 :  "+month+" "+day+"</span>");
							       let chage_d = $("<p>"+"<%=list.get(1).getPositive_s3().replace("\r\n", "<br>")%>" + " </p><p>원본 분석비율 : 긍정"+<%=list.get(1).getS3_rate()%>+"% 부정"+<%=(100 - Float.parseFloat(list.get(1).getS3_rate()))%>+"% </p>");
							       let before_d = $("<p>"+"<%=list.get(1).getDiary().replace("\r\n", "<br>")%>"+" </p><p>긍정문 분석비율 : 긍정"+<%=list.get(1).getDiary_rate()%>+"% 부정"+<%=(100 - Float.parseFloat(list.get(1).getDiary_rate()))%>+"% </p>");
							      
							      $("#date_d").append(date_d);
							      $("#chage_d").append(chage_d);
							      $("#before_d").append(before_d);
							      
							    }
							    else {
							        // Go through and add each event as a card to the events container
							        for(var i=0; i<events.length; i++) {
							            // 일기보기 레이어 변경
							          let date_d = $("<span>작성일 :  "+month+" "+day+"</span>");
							          let chage_d = $("<p>"+month+" "+day+" 일자 : 긍정일기 불러오기</p><p>긍정문 분석비율 : 긍정_% 부정_% </p>");
							          let before_d = $("<p>"+month+" "+day+" 일자 : 원본일기 불러오기</p><p>원본 분석비율 : 긍정_% 부정_% </p>");
							              
							              
							            if(events[i]["cancelled"]===true) {
							                $(event_card).css({
							                    "border-left": "10px solid #FF1744"
							                });
							                event_count = $("<div class='event-cancelled'>Cancelled</div>");
							            }
							              $("#date_d").append(date_d);
							         $("#chage_d").append(chage_d);
							         $("#before_d").append(before_d);
							         
							  /////////////////////////////////////////////////////////////////////////////////////////////////////////          
							        }
							    }
							} --%>
							
						</script>
						
</body>


</html>