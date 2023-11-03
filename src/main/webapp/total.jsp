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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/calender/css/style.css">

		<style >
		@font-face {
		    font-family: 'GangwonEduSaeeum_OTFMediumA';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
	
		h1{
		 font-family: 'GangwonEduSaeeum_OTFMediumA';
		 font-size: 70px;	
		 margin-top: 50px;	 
		}
		h2{
		 font-family: 'GangwonEduSaeeum_OTFMediumA';
		 font-size: 40px;
		 text-align: center;
		}
		h3{
		 font-family: 'GangwonEduSaeeum_OTFMediumA';
		 
		 text-align: center;
		}
	
	
		body {
		background-image:url("images/bg5.jpg");
		background-repeat: no-repeat;
		background-size: 100% 100%;
		background-attachment: fixed;
		overflow-y: scroll;
		font-family: 'GangwonEduSaeeum_OTFMediumA';
		font-size:30px;
		color:#1F0000;
		
		}

		.content{

			width:100%;
			height: 650px;
			
		
		}
		.calendar-container{
			width: 100%;
			height : 650px;			
		}

		.table-date{
		height : 70px;
		
		}
		.calendar-container, .year-header{
		background: rgba(0,0,0,0);
		}
		
		.active-date {
		    background: #A9D735;
		    color: #fff;
		}
		.table-date {	
		border-radius: 0;
		}
		.events-container{
			background-color : rgba(255,255,255,1);
			width: 600px;
			height :650px;
			line-height : 100%;
			float : left;
		}
		.event-card{
		height :350px;
		padding: 20px;
		}
		
		.event_diaryChange{
		background-color: black;
		margin:10px ;
		line-height:50px;
		padding: 20px;
		}
		.per{
		text-align: right;
		
		}
		.sub{
		
		text-align: right;
		}
		.total{
			padding: 20px;
			height: 300px;
			width:100%;
		
		}
		#menu{
			display:block;
			position:fixed; top:0;
			width: 300px;
			height: 1000px;
			background: rgba(255,255,255,0.5);
			z-index: 1;
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
			
		#modal-wrap{
		background-color: rgba(0,0,0,0.5);
		position: fixed; top:0;
		margin: 0;
		width: 100%;
		height:100%;
		display:none;
		z-index: 1;
		}
		#mental{
			margin: 100px auto;
			border-radius: 10px;
			width: 600px;
			height:620px;
			background-color: white;
			text-align: center;
			position: relative;
			padding: 30px;
		}
		
		
		#btn-position{
		position: absolute;
		bottom: 20px;
		padding-left: 50px;
		}
		#btn-position>button {
			width:  200px; height: 50px;
			border-radius: 5px;
		}
		#view{
		background-color: #FD8A69;
		
		}
		
		
		
		#chage_d{
		display: block 
		}
		#chage_d>p:nth-child(1){
		height: 380px; 
		background-color:rgba(0,0,0,0.1);
		color:rgba(0,0,0,0.8);
		border-radius: 5px; 
		
		
		}
		#before_d{
		display: none;
		position:absolute; 
		width:100%; 
		top:0; 
		
		}
		#before_d>p:nth-child(1){
		background-color:rgba(0,0,0,0.1);
		color:rgba(0,0,0,0.8);
		height: 380px;
		border-radius: 5px; 
		}
	
		</style>

 


</head>

		
<body class="is-preload">
<%
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
	
	
			<div id="logo" style=" position:relative; z-index: 1">
				<a href="main.jsp"><img src="images/logo.png" style="width:150px; position:fixed; right:50px;top:30px;"></a>
				<span onclick="openCloseToc()" style="  cursor: pointer;"><img src="images/menu.png" style="width:50px; position:fixed; left:50px;top:30px;"></span>
				
			</div>
			
		<!-- Wrapper-->
			<div id="wrapper">				
				<h1><img src="images/icon-total.png" style="width:50px; padding-bottom:20px;vertical-align: middle;">&nbsp;&nbsp;통계 보기</h1>
				<div class="col-md-12">
					<div class="content w-100" >
						    <div class="calendar-container">
						      <div class="calendar"> 
						        <div class="year-header"> 
						          <span class="left-button fa fa-chevron-left" id="prev"> </span> 
						          <span class="year" id="label"></span> 
						          <span class="right-button fa fa-chevron-right" id="next"> </span>
						        </div> 
						        <table class="months-table w-100"> 
						          <tbody>
						            <tr class="months-row">
						              <td class="month">Jan</td> 
						              <td class="month">Feb</td> 
						              <td class="month">Mar</td> 
						              <td class="month">Apr</td> 
						              <td class="month">May</td> 
						              <td class="month">Jun</td> 
						              <td class="month">Jul</td>
						              <td class="month">Aug</td> 
						              <td class="month">Sep</td> 
						              <td class="month">Oct</td>          
						              <td class="month">Nov</td>
						              <td class="month">Dec</td>
						            </tr>
						            
						          </tbody>
						        </table> 
						        
						        <table class="days-table w-100"> 
						          <td class="day">Sun</td> 
						          <td class="day">Mon</td> 
						          <td class="day">Tue</td> 
						          <td class="day">Wed</td> 
						          <td class="day">Thu</td> 
						          <td class="day">Fri</td> 
						          <td class="day">Sat</td>
						        </table> 
						        <div class="frame"> 
						          <table class="dates-table w-100"> 
					              <tbody class="tbody">             
					               
					              </tbody>  
						          </table>
						        </div> 
						       
						           
						      </div>
						       <div class="sub">
							       <span style="color:#18A8F1">
							       <div style='display:inline-block;background-color:#18A8F1; width:10px;height:10px;border-radius:50%;'></div>
							       : 긍정 50% 이상</span>
							       <br>
							       <span style="color:#FD8A69">
							       <div style='display:inline-block;background-color:#FD8A69; width:10px;height:10px;border-radius:50%;'></div>
							       : 긍정 50% 미만</span>
						    </div>
					</div>
					</div>
					<!-- <div class="events-container"></div>
					 -->
				
				<h2><br><br> <hr/>* 월별 통계 그래프</h2>
			</div>
		
		
		<!-- 일기보기 -->
		  
				<div id="modal-wrap">
					<div id="mental"> 
				 		<div id="date_d"> </div>
				 		<div style="position: relative;">
							<div id="chage_d"> </div>
							<div id="before_d"> </div>
						</div>
						<div id="btn-position"><button id="view" onclick="viewDiary()"> 원본일기 보기 </button> &nbsp;&nbsp; <button id="viewClose"> 닫기 </button></div>
					</div>
				</div>
			
		
			</div>
	
	
	<!--차트가 그려질 부분-->	
				<div style="width: 900px; height: 500px;text-align: center; margin: 0 auto" >
					<canvas id="myChart" ></canvas>
				</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/calender/js/main2.js" charset="utf-8"></script>
	        <script src="assets/calender/js/popper.js" charset="utf-8"></script>
		    <script src="assets/calender/js/bootstrap.min.js" charset="utf-8"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		
		<!-- 일기보기 -->
	   <script>
	   	//닫기버튼
			function modalOpen() {
			    document.querySelector('#modal-wrap').style.display = 'block';
			}
			// 모달 끄기
			function modalClose() {
			    document.querySelector('#modal-wrap').style.display = 'none';
			    document.querySelector('#before_d').style.display = 'none';
	             document.getElementById('view').textContent = '원본일기 보기';
	             document.getElementById('view').style.backgroundColor = '#FD8A69';
			}
	
			//버튼 클릭리스너 달기
			//document.querySelector('.calendar').addEventListener('click', modalOpen);
			document.querySelector('#viewClose').addEventListener('click', modalClose);
	
		//일기전환 버튼	
			function viewDiary() {
			    if(document.getElementById('chage_d').style.display === 'block') {
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
		
			
			
		</script>  
	
	
		<!-- menu -->
		<script>
			function openCloseToc() {
			    if(document.getElementById('menu').style.display === 'block') {
			      document.getElementById('menu').style.display = 'none';
			  
			    } else {
			      document.getElementById('menu').style.display = 'block';
			    }
			  }
	
			
		
		
		</script>
		<script type="text/javascript">
		(function($) {

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
			});



			// Initialize the calendar by appending the HTML dates
			function init_calendar(date) {
			    $(".tbody").empty();
			    $(".events-container").empty();
			    var calendar_days = $(".tbody");
			    var month = date.getMonth();
			    var year = date.getFullYear();
			    var day_count = days_in_month(month, year);
			    var row = $("<tr class='table-row'></tr>");
			    var today = date.getDate();
			    // Set date to 1 to find the first day of the month
			    date.setDate(1);
			    var first_day = date.getDay();
			    // 35+firstDay is the number of date elements to be added to the dates table
			    // 35 is from (7 days in a week) * (up to 5 rows of dates in a month)
			    for(var i=0; i<35+first_day; i++) {
			        // Since some of the elements will be blank, 
			        // need to calculate actual date from index
			        var day = i-first_day+1;
			        // If it is a sunday, make a new row
			        if(i%7===0) {
			            calendar_days.append(row);
			            row = $("<tr class='table-row'></tr>");
			        }
			        // if current index isn't a day in this month, make it blank
			        if(i < first_day || day > day_count) {
			            var curr_date = $("<td class='table-date nil'>"+"</td>");
			            row.append(curr_date);
			        }   
			        else {

			/////////////////// 추가 rate에 날짜(i)에 해당하는 값 불러오기////////////////////////////////////////////
			         
			         let curr_date;
			         let rate=[];
			         rate[i]=40;
			         
			         if(rate[i]>=50){
			               curr_date = $("<td class='table-date'>"+day+"<br><div style='display:inline-block;background-color:#18A8F1; width:10px;height:10px;border-radius:50%;'></div>"+"</td>");
			            }else{
			            curr_date = $("<td class='table-date'>"+day+"<br><div style='display:inline-block;background-color:#18A8F1; width:10px;height:10px;border-radius:50%;'></div>"+"</td>");
			         }        
			//////////////////////////////////////////////////////////////////////////////////////////////////
			            
			            
			            var events = check_events(day, month+1, year);
			            if(today===day && $(".active-date").length===0) {
			                curr_date.addClass("active-date");
			                show_events(events, months[month], day);
			            }
			            // If this date has any events, style it with .event-date
			            if(events.length!==0) {
			                curr_date.addClass("event-date");
			            }
			            // Set onClick handler for clicking a date
			            curr_date.click({events: events, month: months[month], day:day}, date_click);
			            row.append(curr_date);
			        }
			    }
			    // Append the last row and set the current year
			    calendar_days.append(row);
			    $(".year").text(year);
			}






			// Get the number of days in a given month/year
			function days_in_month(month, year) {
			    var monthStart = new Date(year, month, 1);
			    var monthEnd = new Date(year, month + 1, 1);
			    return (monthEnd - monthStart) / (1000 * 60 * 60 * 24);    
			}





			// Event handler for when a date is clicked
			function date_click(event) {
			    $(".events-container").show(250);
			    $("#dialog").hide(250);
			    $(".active-date").removeClass("active-date");
			    $(this).addClass("active-date");
			    show_events(event.data.events, event.data.month, event.data.day);
			     
			     //$("#modal-wrap").empty();
			   $("#modal-wrap").show(250);
			   


			};




			// Event handler for when a month is clicked
			function month_click(event) {
			    $(".events-container").show(250);
			    $("#dialog").hide(250);
			    var date = event.data.date;
			    $(".active-month").removeClass("active-month");
			    $(this).addClass("active-month");
			    var new_month = $(".month").index(this);
			    date.setMonth(new_month);
			    init_calendar(date);
			}




			// Event handler for when the year right-button is clicked
			function next_year(event) {
			    $("#dialog").hide(250);
			    var date = event.data.date;
			    var new_year = date.getFullYear()+1;
			    $("year").html(new_year);
			    date.setFullYear(new_year);
			    init_calendar(date);
			}




			// Event handler for when the year left-button is clicked
			function prev_year(event) {
			    $("#dialog").hide(250);
			    var date = event.data.date;
			    var new_year = date.getFullYear()-1;
			    $("year").html(new_year);
			    date.setFullYear(new_year);
			    init_calendar(date);
			}





			// Event handler for clicking the new event button
			function new_event(event) {
			    // if a date isn't selected then do nothing
			    if($(".active-date").length===0)
			        return;
			    // remove red error input on click
			    $("input").click(function(){
			        $(this).removeClass("error-input");
			    })
			    // empty inputs and hide events
			    $("#dialog input[type=text]").val('');
			    $("#dialog input[type=number]").val('');
			    $(".events-container").hide(250);
			    $("#dialog").show(250);
			    // Event handler for cancel button
			    $("#cancel-button").click(function() {
			        $("#name").removeClass("error-input");
			        $("#count").removeClass("error-input");
			        $("#dialog").hide(250);
			        $(".events-container").show(250);
			    });
			    // Event handler for ok button
			    $("#ok-button").unbind().click({date: event.data.date}, function() {
			        var date = event.data.date;
			        var name = $("#name").val().trim();
			        var count = parseInt($("#count").val().trim());
			        var day = parseInt($(".active-date").html());
			        // Basic form validation
			        if(name.length === 0) {
			            $("#name").addClass("error-input");
			        }
			        else if(isNaN(count)) {
			            $("#count").addClass("error-input");
			        }
			        else {
			            $("#dialog").hide(250);
			            console.log("new event");
			            new_event_json(name, count, date, day);
			            date.setDate(day);
			            init_calendar(date);
			        }
			    });
			}





			// Adds a json event to event_data
			function new_event_json(name, count, date, day) {
			    var event = {
			        "occasion": name,
			        "invited_count": count,
			        "year": date.getFullYear(),
			        "month": date.getMonth()+1,
			        "day": day
			    };
			    event_data["events"].push(event);
			}







			// Display all events of the selected date in card views
			function show_events(events, month, day) {
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
			       let chage_d = $("<p>"+"<%=list.get(0).getPositive_s3().replace("\r\n", "<br>")%>" + " </p><p>원본 분석비율 : 긍정"+<%=list.get(0).getS3_rate()%>+"% 부정"+<%=Math.floor((100 - Float.parseFloat(list.get(0).getS3_rate()))*10)/10%>+"% </p>");
			       let before_d = $("<p>"+"<%=list.get(0).getDiary().replace("\r\n", "<br>")%>"+" </p><p>긍정문 분석비율 : 긍정"+<%=list.get(0).getDiary_rate()%>+"% 부정"+<%=Math.floor((100 - Float.parseFloat(list.get(0).getDiary_rate()))*10)/10%>+"% </p>");
			      
			      $("#date_d").append(date_d);
			      $("#chage_d").append(chage_d);
			      $("#before_d").append(before_d);
			      
			    }
			    else {
			        // Go through and add each event as a card to the events container
			        for(var i=0; i<events.length; i++) {
			            // 일기보기 레이어 변경
			          let date_d = $("<span>작성일 :  "+month+" "+day+"</span>");
				       let chage_d = $("<p>"+"<%=list.get(0).getPositive_s3().replace("\r\n", "<br>")%>" + " </p><p>원본 분석비율 : 긍정"+<%=list.get(0).getS3_rate()%>+"% 부정"+<%=Math.floor((100 - Float.parseFloat(list.get(0).getS3_rate()))*10)/10%>+"% </p>");
				       let before_d = $("<p>"+"<%=list.get(0).getDiary().replace("\r\n", "<br>")%>"+" </p><p>긍정문 분석비율 : 긍정"+<%=list.get(0).getDiary_rate()%>+"% 부정"+<%=Math.floor((100 - Float.parseFloat(list.get(0).getDiary_rate()))*10)/10%>+"% </p>");
			              
			              
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
			}

			// Checks if a specific date has any events
			function check_events(day, month, year) {
			    var events = [];
			    for(var i=0; i<event_data["events"].length; i++) {
			        var event = event_data["events"][i];
			        if(event["day"]===day &&
			            event["month"]===month &&
			            event["year"]===year) {
			                events.push(event);
			            }
			    }
			    return events;
			}

			// Given data for events in JSON format
			var event_data = {
			    "events": [
			    {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10,
			        "cancelled": true
			    },
			    {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10,
			        "cancelled": true
			    },
			        {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10,
			        "cancelled": true
			    },
			    {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10
			    },
			        {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10,
			        "cancelled": true
			    },
			    {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10
			    },
			        {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10,
			        "cancelled": true
			    },
			    {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10
			    },
			        {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10,
			        "cancelled": true
			    },
			    {
			        "occasion": " Repeated Test Event ",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 10
			    },
			    {
			        "occasion": " Test Event",
			        "invited_count": 120,
			        "year": 2020,
			        "month": 5,
			        "day": 11
			    }
			    ]
			};

			const months = [ 
			    "January", 
			    "February", 
			    "March", 
			    "April", 
			    "May", 
			    "June", 
			    "July", 
			    "August", 
			    "September", 
			    "October", 
			    "November", 
			    "December" 
			];

			})(jQuery);
		
		
		</script>
		
		
		<!-- ChartJs-->
		

			<!-- script안에 내용이 차트↓ data안에 긍정 부정 비율 값 불러와야함! -->
			<script type="text/javascript">
				var context = document.getElementById('myChart').getContext(
						'2d');
				var myChart = new Chart(context, {
					type : 'line', // 차트의 형태 bar(막대),line(꺽은선),pie(도넛?동그라미)
					data : { // 차트에 들어갈 데이터
						labels : [ '1월','2월', '3월','4월','5월','6월','7월','8월', '9월','10월','11월','12월' ],//x 축
						datasets : [ { //데이터
							label : '긍정 비율', //차트 제목
							fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
							data : [10,20,30,40,10,20,30,40,20,30,10,60], //x축 label에 대응되는 데이터 값
							backgroundColor : [
							//색상
							'#18A8F1'		
							],
							borderColor : [
							//경계선 색상
								'#18A8F1'],
								borderWidth : 1
				                  //경계선 굵기
				                  }
				                  , 
				                  
				                  
				                  
				                  {
				                     label : '부정 비율',
				                     fill : false,
				                     data : [30,40, 80,60,30,50,60,80, 60,10,60,100],
				                     backgroundColor : '#FD8A69',
				                     borderColor : [ //경계선 색상
				                    	 '#FD8A69' ],
				                  }
		                  ]
		         },
		         options : {
		            scales : {
		               yAxes : [ {
		                  ticks : {
		                     beginAtZero : true
		                  }
		               } ]
		            }
		         }
		      });
		   </script>

			
	</body>
	
</html>