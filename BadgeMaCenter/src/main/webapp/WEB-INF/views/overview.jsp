<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%
	String server = "/badgemacenter";
%>
<style type="text/css">
<!--
#class_style {
	width: 50px;
	height: 50px;
	margin: 0 auto;
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/common/dashboard/assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/common/dashboard/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>현황판</title>

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
			<div class="sidebar" data-background-color="brown" data-active-color="danger">
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
							<a data-toggle="collapse" href="#collapseExample" class="collapsed">김 문 수 <b class="caret"></b>
				  </a>
							<div class="collapse" id="collapseExample">
								<ul class="nav">
									<li><a href="#profile">My Profile</a></li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav">
						<li class="active">
							<a href="<%=server%>/home.do"> <i class="ti-panel"></i>
								<p>현황판
								</p>
							</a>
						</li>

						<li>
							<a data-toggle="collapse" href="#tablesExamples"> <i class="ti-signal"></i>
								<p>
									도와주세요<b class="caret"></b>
								</p>
							</a>
							<div class="collapse" id="tablesExamples">
								<ul class="nav">
									<li><a href="<%=server%>/declarationManage.do">신고 목록</a></li>
									<li><a href="<%=server%>/finishDeclarationList.do">완료 목록</a></li>
								</ul>
							</div>
						</li>

						<li>
							<a href="<%=server %>/adviceManage.do"> <i class="ti-comments"></i>
								<p>고민있어요</p>
							</a>
						</li>
						<li><a data-toggle="collapse"
						href="#feedExamples"> <i class="ti-book"></i>
							<p>
								대나무숲<b class="caret"></b>
							</p>
					</a>
						<div class="collapse" id="feedExamples">
							<ul class="nav">
								<li><a href="<%=server%>/feed.do">대나무숲
										보기</a></li>
								<li><a href="<%=server%>/feedConfirmList.do">신청
										목록</a></li>
							</ul>
						</div></li>
						<li>
							<a href="<%=server%>/map.do"> <i class="ti-map"></i>
								<p>BadgeMa Map</p>
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
							<a class="navbar-brand" href="<%=server%>/declarationManage.do">
					 현황판 </a>
						</div>
					</div>
				</nav>
				<div class="content">
					<div class="container-fluid">

						<div class="row">
							<div class="col-md-12">

								<div class="col-md-3">
									<div class="card" style="background-color: #FFA2A2">
										<div class="content">
											<div class="row">
												<div class="col-xs-5">
													<div class="icon-big icon-danger text-center">
														<img src="resources/common/dashboard/assets/img/etc/card1.png" style="width: 48px; height: 48px; margin-bottom:12px;">
													</div>
												</div>
												<div class="col-xs-7">
													<div class="numbers" style="color: #ffffff">
														<p style="font-weight: bold">도와주세요</p>
														<div id='Abtn_number'>0건</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- card end -->
								</div>

								<div class="col-md-3">
									<div class="card" style="background-color: #98EBBC">
										<div class="content">
											<div class="row">
												<div class="col-xs-5">
													<div class="icon-big icon-success text-center">
														<img src="resources/common/dashboard/assets/img/etc/card2.png" style="width: 48px; height: 48px; margin-bottom:12px;">
													</div>
												</div>
												<div class="col-xs-7">
													<div class="numbers" style="color: #ffffff">
														<p style="font-weight: bold">출동했어요</p>
														<div id='Abtn_completeNumber'>0건</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- card end -->
								</div>

								<div class="col-md-3">
									<div class="card" style="background-color: #ffe180">
										<div class="content">
											<div class="row">
												<div class="col-xs-5">
													<div class="icon-big icon-warning text-center">
														<i class="ti-face-sad"></i>
													</div>
												</div>
												<div class="col-xs-7">
													<div class="numbers" style="color: #ffffff">
														<p style="font-weight: bold">고민있어요</p>
														<div id='Abtn_completeNumber'>0건</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- card end -->
								</div>

								<div class="col-md-3">
									<div class="card" style="background-color: #99dff2">
										<div class="content">
											<div class="row">
												<div class="col-xs-5">
													<div class="icon-big icon-info text-center">
														<i class="ti-face-smile"></i>
													</div>
												</div>
												<div class="col-xs-7">
													<div class="numbers" style="color: #ffffff">
														<p style="font-weight: bold">대화중이에요</p>
														<div id='Abtn_completeNumber'>0건</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- card end -->
								</div>

							</div>
							<div class="col-md-12">
								<div class="card">
									<div class="content">
										<h4 class="title text-center">
							  <b>반별 배치 상황</b>
						   </h4>
										<hr />
										<div class="row" style="height: 60px;">
											<div class="col-md-1">
												<div id="styleInfo" style="margin-left: 15px;">
													<h4>1층</h4>
												</div>
											</div>
											<div class="col-md-11">
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face11.png" />
														</div>
														<div id="styleInfo">
															<p>1학년 1반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face12.png" />
														</div>
														<div id="styleInfo">
															<p>1학년 2반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face13.png" />
														</div>
														<div id="styleInfo">
															<p>1학년 3반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face14.png" />
														</div>
														<div id="styleInfo">
															<p>1학년 4반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/toilet4.png" />
														</div>
														<div id="styleInfo">
															<p>화장실</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/healthy.png" />
														</div>
														<div id="styleInfo">
															<p>체육실</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<hr style="height: 1px;" />
										<div class="row" style="height: 60px;">
											<div class="col-md-1">
												<div id="styleInfo" style="margin-left: 15px;">
													<h4>2층</h4>
												</div>
											</div>
											<div class="col-md-11">
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face15.png" />
														</div>
														<div id="styleInfo">
															<p>2학년 1반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face16.png" />
														</div>
														<div id="styleInfo">
															<p>2학년 2반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face17.png" />
														</div>
														<div id="styleInfo">
															<p>2학년 3반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face18.png" />
														</div>
														<div id="styleInfo">
															<p>2학년 4반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/toilet2.png" />
														</div>
														<div id="styleInfo">
															<p>화장실</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/paint.png" />
														</div>
														<div id="styleInfo">
															<p>미술실</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<hr />
										<div class="row" style="height: 60px;">
											<div class="col-md-1">
												<div id="styleInfo" style="margin-left: 15px;">
													<h4>3층</h4>
												</div>
											</div>
											<div class="col-md-11">
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face19.png" />
														</div>
														<div id="styleInfo">
															<p>3학년 1반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face20.png" />
														</div>
														<div id="styleInfo">
															<p>3학년 2반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face21.png" />
														</div>
														<div id="styleInfo">
															<p>3학년 3반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/faces/face22.png" />
														</div>
														<div id="styleInfo">
															<p>3학년 4반</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/toilet3.png" />
														</div>
														<div id="styleInfo">
															<p>화장실</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/music.png" />
														</div>
														<div id="styleInfo">
															<p>음악실</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<hr />
										<div class="row" style="height: 60px;">
											<div class="col-md-1">
												<div id="styleInfo" style="margin-left: 10px">
													<h4>교외</h4>
												</div>
											</div>
											<div class="col-md-11">
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/school.png" />
														</div>
														<div id="styleInfo">
															<p>교문</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/back1.png" />
														</div>
														<div id="styleInfo">
															<p>학교 뒷편1</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/back2.png" />
														</div>
														<div id="styleInfo">
															<p>학교 뒷편2</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/trash.png" />
														</div>
														<div id="styleInfo">
															<p>쓰레기장</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/toilet1.png" />
														</div>
														<div id="styleInfo">
															<p>수돗가</p>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div>
														<div id="class_style">
															<img id="stylePhotoImg" src="resources/common/dashboard/assets/img/etc/basketball.png" />
														</div>
														<div id="styleInfo">
															<p>농구장</p>
														</div>
													</div>
												</div>
											</div>

										</div>
										<hr />
									</div>
								</div>
							</div>

							<div class="col-md-12">
								<div class="col-md-4">
									<div class="card">
										<div class="header text-center">
											<h4 class="title">1학년 신고순위</h4>
										</div>
										<div class="content">
											<div class="row">
												<div class="col-md-12">
													<div class="table-responsive">
														<table class="table">
															<thead>
																<tr>
																	<th>
																		<h6>순위</h6>
																	</th>
																	<th>
																		<h6>장소</h6>
																	</th>
																	<th>
																		<h6>신고</h6>
																	</th>
																	<th>
																		<h6>고민</h6>
																	</th>
																</tr>
															</thead>
															<tbody>
																<tr BGCOLOR="RED">
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/one.png" />
																		</div>
																	</td>
																	<td>화장실</td>
																	<td>8</td>
																	<td>13</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/two.png" />
																		</div>
																	</td>
																	<td>1-1반</td>
																	<td>6</td>
																	<td>11</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/three.png" />
																		</div>
																	</td>
																	<td>1-3반</td>
																	<td>6</td>
																	<td>9</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/four.png" />
																		</div>
																	</td>
																	<td>1-4반</td>
																	<td>4</td>
																	<td>8</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/five.png" />
																		</div>
																	</td>
																	<td>1-2반</td>
																	<td>2</td>
																	<td>8</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="card">
										<div class="header text-center">
											<h4 class="title">2학년 신고순위</h4>
										</div>
										<div class="content">
											<div class="row">
												<div class="col-md-12">
													<div class="table-responsive">
														<table class="table">
															<thead>
																<tr>
																	<th>
																		<h6>순위</h6>
																	</th>
																	<th>
																		<h6>장소</h6>
																	</th>
																	<th>
																		<h6>신고</h6>
																	</th>
																	<th>
																		<h6>고민</h6>
																	</th>
																</tr>
															</thead>
															<tbody>
																<tr BGCOLOR="RED">
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/one.png" />
																		</div>
																	</td>
																	<td>2-1반</td>
																	<td>10</td>
																	<td>12</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/two.png" />
																		</div>
																	</td>
																	<td>2-2반</td>
																	<td>9</td>
																	<td>13</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/three.png" />
																		</div>
																	</td>
																	<td>2-3반</td>
																	<td>8</td>
																	<td>10</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/four.png" />
																		</div>
																	</td>
																	<td>2-4반</td>
																	<td>5</td>
																	<td>5</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/five.png" />
																		</div>
																	</td>
																	<td>화장실2</td>
																	<td>2</td>
																	<td>7</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="card">
										<div class="header text-center">
											<h4 class="title">3학년 신고순위</h4>
										</div>
										<div class="content">
											<div class="row">
												<div class="col-md-12">
													<div class="table-responsive">
														<table class="table">
															<thead>
																<tr>
																	<th>
																		<h6>순위</h6>
																	</th>
																	<th>
																		<h6>장소</h6>
																	</th>
																	<th>
																		<h6>신고</h6>
																	</th>
																	<th>
																		<h6>고민</h6>
																	</th>
																</tr>
															</thead>
															<tbody>
																<tr BGCOLOR="RED">
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/one.png" />
																		</div>
																	</td>
																	<td>3-3</td>
																	<td>11</td>
																	<td>11</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/two.png" />
																		</div>
																	</td>
																	<td>화장실</td>
																	<td>12</td>
																	<td>8</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/three.png" />
																		</div>
																	</td>
																	<td>3-1반</td>
																	<td>10</td>
																	<td>7</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/four.png" />
																		</div>
																	</td>
																	<td>3-2반</td>
																	<td>9</td>
																	<td>7</td>
																</tr>
																<tr>
																	<td>
																		<div class="flag">
																			<img width='25' height='25' src="resources/common/dashboard/assets/img/rank/five.png" />
																		</div>
																	</td>
																	<td>1-4반</td>
																	<td>8</td>
																	<td>6</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
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
								<li><a href="https://www.facebook.com/groups/1599411230361237/?ref=bookmarks">
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
							, made with <i class="fa fa-heart heart"></i> by <a href="<%=server%>/home.do">Bagde Ma</a>
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
		//pollSolveA();
		//pollSolveB();
	});
	var pollA = function() {
		setInterval(function(){
			$.ajax({
				type : "GET",
				url : "AbtnNumber.do",
				dataType : "json",
				success : function(json) {
					var list = json.report_result;
					var listLen = list.length;
					var contentStr = "";
					for (var i = 0; i < listLen; i++) {
						contentStr += list[i].num;
					}
					
					$('#Abtn_number').html(
							"<div id='Abtn_number'>" + contentStr + "</div>");
				},

			});
		}, 1000);
		
		
	};
	var pollSolveA = function() {

		$.ajax({
			type : "GET",
			url : "AbtnSolveNumber.do",
			success : function(json) {
				var list = json.solve_result;
				var listLen = list.length;
				var contentStr = "";
				for (var i = 0; i < listLen; i++) {
					contentStr += list[i].num;
				}
				$('#Abtn_completeNumber').html(
						"<div id='Abtn_completeNumber'>" + contentStr
								+ "</div>");
			},
			dataType : "json",
			complete : pollSolveA,
			timeout : 30000
		});
	};
	var pollB = function() {

		setInterval(function(){
			$.ajax({
				type : "GET",
				url : "BbtnNumber.do",
				dataType : "json",
				success : function(json) {
					var list = json.report_result;
					var listLen = list.length;
					var contentStr = "";
					for (var i = 0; i < listLen; i++) {
						contentStr += list[i].num;
					}
					$('#Bbtn_number').html(
							"<div id='Bbtn_number'>" + contentStr + "</div>");
				},

			});
		}, 1000);
	};
	var pollSolveB = function() {

		$.ajax({
			type : "GET",
			url : "BbtnSolveNumber.do",
			success : function(json) {
				var list = json.solve_result;
				var listLen = list.length;
				var contentStr = "";
				for (var i = 0; i < listLen; i++) {
					contentStr += list[i].num;
				}
				$('#Bbtn_completeNumber').html(
						"<div id='Bbtn_completeNumber'>" + contentStr
								+ "</div>");
			},
			dataType : "json",
			complete : pollSolveB,
			timeout : 30000
		});
	};
	var notificationPolling = function() {
		setInterval(function(){
			$.ajax({
				type : "GET",
				url : "unnotificationList.do",
				dataType : "json",
				success : function(json) {
					var list = json.notification_result;
					var listLen = list.length;
					var contentStr = "";
					for (var i = 0; i < listLen; i++) {
						contentStr = list[i].class_location + "에서 ";
						if (list[i].declaration_type == 1) {
							contentStr += "도와주세요! ";
						} else {
							contentStr += "고민있어요! ";
						}
						contentStr += " 의 신고가 들어왔습니다!!";
						demo.showNotification('bottom', 'right', contentStr);
					}
				},

			});
		}, 1000);
	};
</script>

</html>
