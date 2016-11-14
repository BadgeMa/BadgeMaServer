<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<style type="text/css">
<!--
#class_style {
	width: 80px;
	height: 80px;
	overflow: hidden;
	border-radius: 50%;
	margin: 0 auto;
	border: 4px solid rgba(0, 0, 0, 0.15);
}

#stylePhotoImg {
	width: 100%
}

#styleInfo {
	text-align: center
}
//
-->
</style>
<%
	String server = "/BadgeMaCenter";
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/common/dashboard/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/common/dashboard/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>신고 관리</title>

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
					<li><a data-toggle="collapse" href="#dashboardOverview"> <i
							class="ti-panel"></i>
							<p>
								대시보드 <b class="caret"></b>
							</p>
					</a>
						<div class="collapse" id="dashboardOverview">
							<ul class="nav">
								<li><a href="<%=server%>/home.do">overview</a></li>
								<li><a href="#">장비 배치도</a></li>
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
								<li><a href="<%=server%>/declarationList.do">신고 목록</a></li>
								<li><a href="<%=server%>/declarationList.do">상담 목록</a></li>
							</ul>
						</div></li>
					<li class="active"><a href="<%=server%>/declarationManage.do">
							<i class="ti-signal"></i>
							<p>신고 관리</p>
					</a></li>
					<li><a href="<%=server%>/adviceManage.do"> <i
							class="ti-comments"></i>
							<p>상담 관리</p>
					</a></li>
					<li><a href="<%=server%>/feed.do"> <i
							class="ti-book"></i>
							<p>대나무숲 관리</p>
					</a></li>
					<li><a href="<%=server%>/map.do"> <i
							class="ti-map"></i>
							<p>BadgeMa Map</p>
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
						<a class="navbar-brand" href="<%=server%>/declarationManage.do">
							신고 관리 </a>
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="container-fluid">

					<div class="row">

						<div class="col-lg-3">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-danger text-center">
												<i class="ti-direction"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>A버튼 건수</p>
												13
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

						<div class="col-lg-3">
							<div class="card">
								<div class="content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-warning text-center">
												<i class="ti-direction-alt"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>A버튼 처리</p>
												8
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

						<div class="col-lg-6">
							<div class="card">
								<div class="content">
									<div class="row">
										<h6 class="big-title">주간 신고 건수</h6>
										<div id="chartWeeklyReport"></div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="content">
								<div class="col-md-6">


									<ul class="timeline">
										<li class="timeline-inverted">
											<div class="timeline-badge warning">
												<i class="ti-gallery"></i>
											</div>
											<div class="timeline-panel">
												<div class="timeline-heading">
													<span class="label label-warning">Taking Job</span>
												</div>
												<div class="timeline-body">
													<p>
														16년 10월 28일 발생<br /> 규정이가 같은 반 학생에게 돈을 빼앗겼습니다. 상황 정리중입니다.
													</p>
												</div>
												<h6>
													<i class="ti-time"></i> 11 hours ago via Twitter
												</h6>
											</div>
										</li>
										<li>
											<div class="timeline-badge danger">
												<i class="ti-check-box"></i>
											</div>
											<div class="timeline-panel">
												<div class="timeline-heading">
													<span class="label label-danger">Emergency Report</span>
												</div>
												<div class="timeline-body">
													<p>
														16.10.27 10:20<br /> 긴급 출동 요함
													</p>
												</div>
											</div>
										</li>
										<li class="timeline-inverted">
											<div class="timeline-badge warning">
												<i class="ti-gallery"></i>
											</div>
											<div class="timeline-panel">
												<div class="timeline-heading">
													<span class="label label-warning">Taking Job</span>
												</div>
												<div class="timeline-body">
													<p>
														16년 10월 20일 발생<br /> 규정이가 같은 반 학생 돈을 빼앗음. 사건 파악 중입니다.
													</p>
												</div>
												<h6>
													<i class="ti-time"></i> 11 hours ago via Twitter
												</h6>
											</div>
										</li>
										<li>
											<div class="timeline-badge danger">
												<i class="ti-check-box"></i>
											</div>
											<div class="timeline-panel">
												<div class="timeline-heading">
													<span class="label label-danger">Ananymous Report</span>
												</div>
												<div class="timeline-body">
													<p>
														16.10.18 12:58<br /> 익명 신고 발생<br /> 사건 조사 요망
													</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="timeline timeline-simple">
										<li class="timeline-inverted">
											<div class="timeline-badge success">
												<i class="ti-gallery"></i>
											</div>
											<div class="timeline-panel">
												<div class="timeline-heading">
													<span class="label label-success">Some title</span>
												</div>
												<div class="timeline-body">
													<p>Wifey made the best Father's Day meal ever. So
														thankful so happy so blessed. Thank you for making my
														family We just had fun with the “future” theme !!! It was
														a fun night all together ... The always rude Kanye Show at
														2am Sold Out Famous viewing @ Figueroa and 12th in
														downtown.</p>
												</div>
												<h6>
													<i class="ti-time"></i> 11 hours ago via Twitter
												</h6>
											</div>
										</li>
										<li class="timeline-inverted">
											<div class="timeline-badge success">
												<i class="ti-check-box"></i>
											</div>
											<div class="timeline-panel">
												<div class="timeline-heading">
													<span class="label label-success">Another One</span>
												</div>
												<div class="timeline-body">
													<p>Thank God for the support of my wife and real
														friends. I also wanted to point out that it’s the first
														album to go number 1 off of streaming!!! I love you Ellen
														and also my number one design rule of anything I do from
														shoes to music to homes is that Kim has to like it....</p>
												</div>
											</div>
										</li>
										<li class="timeline-inverted">
											<div class="timeline-badge success">
												<i class="ti-credit-card"></i>
											</div>
											<div class="timeline-panel">
												<div class="timeline-heading">
													<span class="label label-success">Another Title</span>
												</div>
												<div class="timeline-body">
													<p>Called I Miss the Old Kanye That’s all it was Kanye
														And I love you like Kanye loves Kanye Famous viewing @
														Figueroa and 12th in downtown LA 11:10PM</p>
													<p>What if Kanye made a song about Kanye Royère doesn't
														make a Polar bear bed but the Polar bear couch is my
														favorite piece of furniture we own It wasn’t any Kanyes
														Set on his goals Kanye</p>
													<hr>
													<div class="dropdown">
														<button type="button" class="btn btn-info dropdown-toggle"
															data-toggle="dropdown">
															<i class="ti-settings"></i> <span class="caret"></span>
														</button>
														<ul class="dropdown-menu dropdown-menu-left" role="menu">
															<li><a href="#action">Action</a></li>
															<li><a href="#action">Another action</a></li>
															<li><a href="#here">Something else here</a></li>
															<li class="divider"></li>
															<li><a href="#link">Separated link</a></li>
														</ul>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
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
<!-- Pie Chart -->
	$(document).ready(function() {
		demo.initOverviewDashboard();
		demo.initCirclePercentage();
		var dataDays = {
			labels : [ 'M', 'T', 'W', 'T', 'F', 'S', 'S' ],
			series : [ [ 33, 13, 20, 5, 7, 8, 4 ] ]
		};

		var optionsDays = {
			showPoint : false,
			lineSmooth : true,
			height : "80px",
			axisX : {
				showGrid : false,
				showLabel : true
			},
			axisY : {
				offset : 40,
				showGrid : false
			},
			low : 0,
			high : 'auto',
			classNames : {
				line : 'ct-line ct-red'
			}
		};

		Chartist.Line('#chartWeeklyReport', dataDays, optionsDays);
	});
</script>

</html>
