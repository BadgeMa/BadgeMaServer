<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%
	String server = "/BadgeMaCenter";
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/common/dashboard/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/common/dashboard/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Badge Ma 대시보드</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="resources/common/dashboard/assets/css/bootstrap.min.css"
	rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="resources/common/dashboard/assets/css/paper-dashboard.css"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="resources/common/dashboard/assets/css/demo.css"
	rel="stylesheet" />


<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="resources/common/dashboard/assets/css/themify-icons.css"
	rel="stylesheet">
</head>

<body>

	<div class="wrapper">
		<div class="sidebar" data-background-color="brown"
			data-active-color="danger">
			<!--
			Tip 1: you can change the color of the sidebar's background using: data-background-color="white | brown"
			Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
		-->
			<div class="logo">
				<a href="<%=server%>/home.do" class="simple-text"> Badge Ma </a>
			</div>
			<div class="logo logo-mini">
				<a href="<%=server%>/home.do" class="simple-text"> 뺏지마 </a>
			</div>
			<div class="sidebar-wrapper">
				<div class="user">
					<div class="photo">
						<img src="resources/common/dashboard/assets/img/faces/moonsu.png" />
					</div>
					<div class="info">
						<a data-toggle="collapse" href="#collapseExample"
							class="collapsed">김 문 수 <b class="caret"></b>
						</a>
						<div class="collapse" id="collapseExample">
							<ul class="nav">
								<li><a href="#profile">My Profile</a></li>
								<li><a href="#editprofile">Edit Profile</a></li>
								<li><a href="#settings">Settings</a></li>
							</ul>
						</div>
					</div>
				</div>
				<ul class="nav">
					<li class="active"><a data-toggle="collapse"
						href="#dashboardOverview" aria-expanded="true"> <i
							class="ti-panel"></i>
							<p>
								대시보드 <b class="caret"></b>
							</p>
					</a>
						<div class="collapse in" id="dashboardOverview">
							<ul class="nav">
								<li class="active"><a href="<%=server%>/home.do">현황판</a></li>
								<li><a href="#">Stats</a></li>
							</ul>
						</div></li>

					<li><a data-toggle="collapse" href="#tablesExamples"> <i
							class="ti-view-list-alt"></i>
							<p>
								목록 보기 <b class="caret"></b>
							</p>
					</a>
						<div class="collapse" id="tablesExamples">
							<ul class="nav">
								<li><a href="<%=server%>/userList.do">사용자 목록</a></li>
								<li><a href="<%=server%>/voteList.do">신고 목록</a></li>
							</ul>
						</div></li>

					<li><a href="<%=server%>/calendar.do"> <i
							class="ti-calendar"></i>
							<p>Calendar</p>
					</a></li>

				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-minimize">
						<button id="minimizeSidebar" class="btn btn-fill btn-icon">
							<i class="ti-more-alt"></i>
						</button>
					</div>
					<div class="navbar-header">
						<button type="button" class="navbar-toggle">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
							<span class="icon-bar bar3"></span>
						</button>
						<a class="navbar-brand" href="<%=server%>/home.do"> 현황판 보기 </a>
					</div>
				</div>
			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-warning text-center">
												<i class="ti-server"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>A버튼 신고 건수</p>
												<div id='Abtn_number'>0</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr />
									<div class="stats">
										<i class="ti-reload"></i> Updated now
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-success text-center">
												<i class="ti-wallet"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>A버튼 처리 건수</p>
												<div id='Abtn_completeNumber'>0</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr />
									<div class="stats">
										<i class="ti-reload"></i> Updated now
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-danger text-center">
												<i class="ti-pulse"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>B버튼 신고 건수</p>
												<div id='Bbtn_number'>0</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr />
									<div class="stats">
										<i class="ti-reload"></i> Updated now
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-info text-center">
												<i class="ti-twitter-alt"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>B버튼 처리 건수</p>
												0
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr />
									<div class="stats">
										<i class="ti-reload"></i> Updated now
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left"></div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-danger"></span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										일간 <span class="text-muted"></span> 신고 건수
									</h6>
									<div id="chartTotalSubscriptions"></div>
								</div>

							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left"></div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-success"></span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										월간<span class="text-muted"></span> 신고 건수<span
											class="text-muted"></span>
									</h6>
									<div id="chartTotalEarnings"></div>
								</div>

							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left"></div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-warning"></span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										년간 <span class="text-muted"></span> 신고 건수
									</h6>
									<div id="chartTotalDownloads"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left"></div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-danger"></span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										일간 <span class="text-muted"></span> 신고 건수
									</h6>
									<div id="chartTotalSubscriptions2"></div>
								</div>

							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left"></div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-success"></span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										월간<span class="text-muted"></span> 신고 건수<span
											class="text-muted"></span>
									</h6>
									<div id="chartTotalEarnings2"></div>
								</div>

							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left"></div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-warning"></span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										년간 <span class="text-muted"></span> 신고 건수
									</h6>
									<div id="chartTotalDownloads2"></div>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="places-buttons">

				<div class="row">

					<div class="col-md-3">
						<button class="btn btn-default btn-block"
							onclick="demo.showNotification('bottom','right')">right</button>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							<li><a
								href="https://www.facebook.com/groups/1599411230361237/?ref=bookmarks">
									BadgeMa FaceBook </a></li>
							<li><a href="https://github.com/OnePercentDevelop">
									github </a></li>
						</ul>
					</nav>
					<div class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						, made with <i class="fa fa-heart heart"></i> by <a
							href="<%=server%>/home.do">Bagde Ma</a>
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>

<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
<script src="resources/common/dashboard/assets/js/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="resources/common/dashboard/assets/js/jquery-ui.min.js"
	type="text/javascript"></script>
<script src="resources/common/dashboard/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!--  Forms Validations Plugin -->
<script
	src="resources/common/dashboard/assets/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="resources/common/dashboard/assets/js/moment.min.js"></script>

<!--  Date Time Picker Plugin is included in this js file -->
<script
	src="resources/common/dashboard/assets/js/bootstrap-datetimepicker.js"></script>

<!--  Select Picker Plugin -->
<script
	src="resources/common/dashboard/assets/js/bootstrap-selectpicker.js"></script>

<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
<script
	src="resources/common/dashboard/assets/js/bootstrap-checkbox-radio-switch-tags.js"></script>

<!-- Circle Percentage-chart -->
<script
	src="resources/common/dashboard/assets/js/jquery.easypiechart.min.js"></script>

<!--  Charts Plugin -->
<script src="resources/common/dashboard/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="resources/common/dashboard/assets/js/bootstrap-notify.js"></script>

<!-- Sweet Alert 2 plugin -->
<script src="resources/common/dashboard/assets/js/sweetalert2.js"></script>

<!-- Vector Map plugin -->
<script src="resources/common/dashboard/assets/js/jquery-jvectormap.js"></script>

<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Wizard Plugin    -->
<script
	src="resources/common/dashboard/assets/js/jquery.bootstrap.wizard.min.js"></script>

<!--  Bootstrap Table Plugin    -->
<script src="resources/common/dashboard/assets/js/bootstrap-table.js"></script>

<!--  Full Calendar Plugin    -->
<script src="resources/common/dashboard/assets/js/fullcalendar.min.js"></script>

<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
<script src="resources/common/dashboard/assets/js/paper-dashboard.js"></script>

<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
<script
	src="resources/common/dashboard/assets/js/demo.js?ver=1 charset='utf-8'"></script>

<script type="text/javascript">
	$(document).ready(function() {
		demo.initOverviewDashboard();
		demo.initCirclePercentage();
		//demo.showNotification('bottom','right', "hi");
		notificationPolling();
		pollA();
		pollB();
	});
	var pollA = function (){
		
	    $.ajax({ type : "GET", url: "AbtnNumber.do",  success: function(json){
	    	var list = json.report_result;
			var listLen = list.length;
			var contentStr = "";
			for (var i = 0; i < listLen; i++) {
				contentStr += list[i].num;
			}
			$('#Abtn_number').html(
					"<div id='Abtn_number'>" + contentStr + "</div>");
	    }, dataType: "json", complete: pollA, timeout: 30000 });
	};
	var pollB = function (){
		
	    $.ajax({ type : "GET", url: "BbtnNumber.do",  success: function(json){
	    	var list = json.report_result;
			var listLen = list.length;
			var contentStr = "";
			for (var i = 0; i < listLen; i++) {
				contentStr += list[i].num;
			}
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>" + contentStr + "</div>");
	    }, dataType: "json", complete: pollB, timeout: 30000 });
	};
	var notificationPolling = function (){
		$.ajax({
			type : "GET",
			url : "unnotificationList.do",
			success : function(json) {
				var list = json.notification_result;
				var listLen = list.length;
				var contentStr = "";
				for (var i = 0; i < listLen; i++) {
					contentStr = list[i].class_location + "에서 ";
					if (list[i].declaration_type == 1){
						contentStr += "A버튼";
					}else {
						contentStr += "B버튼";
					}
					contentStr += " 의 신고가 들어왔습니다!!";
					demo.showNotification('bottom','right', contentStr);
				}

			},
			dataType : "json",
			complete : notificationPolling,
			timeout : 30000
		});
	};
</script>

</html>
