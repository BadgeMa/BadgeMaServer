
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

<title>상담 관리</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<link rel="stylesheet" type="text/css" href="resources/common/dashboard/assets/css/sweetalert.css">
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
		<div class="sidebar" data-background-color="brown" data-active-color="warning">
			<!--
			Tip 1: you can change the color of the sidebar's background using: data-background-color="white | brown"
			Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
		-->
			<div class="logo">
				<a href="<%=server%>/studentFeed.do" class="simple-text" > Badge Ma </a>
			</div>
			<div class="logo logo-mini">
				<a href="<%=server%>/studentFeed.do" class="simple-text"> 뺏지마 </a>
			</div>
			<div class="sidebar-wrapper">
				<div class="user">
					<div class="photo">
						<img width="60" height="60" src="resources/common/dashboard/assets/img/faces/badgema_logo.png" />
					</div>
					<div class="info">
						<a data-toggle="collapse" href="#collapseExample" class="collapsed" >
	                        학생
	                        <b class="caret"></b>
	                    </a>
						<div class="collapse" id="collapseExample">
							<ul class="nav">
								<li><a href="#profile">My Profile</a></li>
							</ul>
						</div>
					</div>
				</div>
				<ul class="nav">
					<li>
						<a href="<%=server%>/studentFeed.do">
							<i class="ti-book" ></i>
							<p>대나무 숲</p>
						</a>
					</li>
					<li>
						<a href="<%=server%>/studentFeedForm.do">
							<i class="ti-notepad"></i>
							<p >사연 신청</p>
						</a>
					</li>
					<li class="active">
						<a href="<%=server%>/studentAdvice.do">
							<i class="ti-comments" ></i>
							<p>고민있어요</p>
						</a>
					</li>
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
						<a class="navbar-brand" href="<%=server%>/studentAdvice.do">상담 관리</a>
					</div>
				</div>
			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-6">
							<div class="card">
								<div class="header">
									<div class="card-title">상담 신청 목록</div>
									<div class="card-footer">
										<button onclick="studentadvice.adviceFormClick();"
											type="submit" class="btn btn-info btn-fill pull-right">상담
											신청</button>
									</div>
									<p class="category">학생들의 고민을 함께 나눠요</p>
								</div>
								<div class="content" id="advice"></div>
							</div>
							<!-- card end -->
						</div>

						<div class="col-md-6">
							<div class="card">
								<div class="card card-chat">
									<div class="header" id="card_title">
										<h4 class="title">
											<b>함께 나누는 고민</b>
										</h4>
										<p class="category"></p>
									</div>
									<div class="content" id="advice_content"></div>
								</div>
							</div>
						</div>


						<!-- <div class="col-md-6">
							<div class="card">
								<div class="header">
									<div class="card-title text-center">상담 신청</div>
									<p class="category text-center">여러분의 이야기를 들려주세요</p>
								</div>
								<div class="content" id="advice_content">
									<div class="form-group">
										<label>여러분의 이야기를 적어주세요</label>
										<textarea class="form-control" placeholder="어떤 고민이 있으신가요?"
											rows="6"></textarea>
									</div>
									<div class="form-group">
										<label>Password</label><input type="password"
											placeholder="Password" class="form-control">
									</div>
								</div>
								<div class="footer text-center">
									<Button class="btn btn-fill btn-wd btn-info"
										style="margin-bottom: 15px">확인</Button>
								</div>
							</div>
						</div>
 -->
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
	</bady>

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
<script
	src="resources/common/dashboard/assets/js/sweetalert.min.js"></script>
	<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
	<script
		src="resources/common/dashboard/assets/js/demo.js?ver=1 charset='utf-8'"></script>
	<script
		src="resources/common/dashboard/assets/js/studentadvice-manage.js?ver=2 charset='utf-8'"></script>
	<script type="text/javascript">
	<!-- Pie Chart -->
		$(document).ready(function() {
			studentadvice.adviceList();
			demo.initOverviewDashboard();
			demo.initCirclePercentage();
			$('#chartCounsel').easyPieChart({
				lineWidth : 6,
				size : 160,
				scaleColor : false,
				trackColor : 'rgba(255,255,255,.25)',
				barColor : '#FFFFFF',
				animate : ({
					duration : 5000,
					enabled : true
				})
			});
		});

		var dataPrice = {
			labels : [ '월', '화', '수', '목', '금', '토' ],
			series : [ [ 3, 5, 1, 12, 4, 0 ] ]
		};

		var optionsPrice = {
			showPoint : false,
			lineSmooth : true,
			height : "250px",
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
				line : 'ct-line ct-green'
			}
		};

		Chartist.Line('#chartWeeklyCounsel', dataPrice, optionsPrice);
	</script>
</html>
