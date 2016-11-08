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
								<li><a href="<%=server%>/home.do">Overview</a></li>
								<li class="active"><a href="#">장비 배치도</a></li>
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
								<li><a href="<%=server%>/voteList.do">상담 목록</a></li>
							</ul>
						</div></li>
					<li><a href="#"> <i
							class="ti-signal"></i>
							<p>
								신고 관리 
							</p>
					</a>
					</li>
					<li><a href="#"> <i
							class="ti-comments"></i>
							<p>
								상담 관리
							</p>
					</a>
					</li>
					<li><a href="#"> <i
							class="ti-book"></i>
							<p>
								대나무숲 관리
							</p>
					</a>
					</li>
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
						<a class="navbar-brand" href="<%=server%>/home.do"> 반 배치도 </a>
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">반별 배치 상황</h4>
									<p class="category">실시간 작동 감시</p>
									<br />
								</div>
								<div class="content">
									<hr />
									<div class="row">
										<div class="col-md-2">
											<div id="styleInfo">
												<h4>1층</h4>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>1학년 1반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>1학년 2반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>1학년 3반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>1학년 4반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>화장실</p>
												</div>
											</div>
										</div>
									</div>
									<hr />
									<div class="row">
										<div class="col-md-2">
											<div id="styleInfo">
												<h4>2층</h4>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>2학년 1반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>2학년 2반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>2학년 3반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>2학년 4반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>화장실</p>
												</div>
											</div>
										</div>
									</div>
									<hr />
									<div class="row">
										<div class="col-md-2">
											<div id="styleInfo">
												<h4>3층</h4>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>3학년 1반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>3학년 2반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>3학년 3반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>3학년 4반</p>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div>
												<div id="class_style">
													<img id="stylePhotoImg"
														src="resources/common/dashboard/assets/img/faces/face-2.jpg" />
												</div>
												<div id="styleInfo">
													<p>화장실</p>
												</div>
											</div>
										</div>
									</div>
									<hr />
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
	$(document).ready(function() {
		demo.initOverviewDashboard();
		demo.initCirclePercentage();
	});
</script>

</html>
