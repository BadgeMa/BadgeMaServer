type = [ '', 'info', 'success', 'warning', 'danger' ];

demo = {

	initCirclePercentage : function() {

		$(
				'#chartDashboard, #chartOrders, #chartNewVisitors, #chartSubscriptions')
				.easyPieChart({
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

	},

	initGoogleMaps : function() {

		var school1 = new google.maps.LatLng(37.628298, 127.049677); // 염광고등학교
		var school2 = new google.maps.LatLng(37.646984, 127.075585); // 서라벌고등학교
		var school3 = new google.maps.LatLng(37.650812, 127.038877); // 창동
																		// 고등학교
		var school4 = new google.maps.LatLng(37.586555, 127.068399); // 휘봉
																		// 고등학교
		var school5 = new google.maps.LatLng(37.588541, 127.050904); // 청량
																		// 고등학교
		var school6 = new google.maps.LatLng(37.547774, 126.831766); // 화곡
																		// 고등학교
		var school7 = new google.maps.LatLng(37.484910, 127.0596397); // 개포
																		// 고등학교
		var school8 = new google.maps.LatLng(37.516888, 127.055992); // 경기
																		// 고등학교
		var school9 = new google.maps.LatLng(37.490305, 127.102559); // 세종
																		// 고등학교
		var school10 = new google.maps.LatLng(37.531151, 127.032880); // 압구정
																		// 고등학교
		var school11 = new google.maps.LatLng(37.485700, 127.080651); // 중산
																		// 고등학교
		var school12 = new google.maps.LatLng(37.527964, 127.043331); // 청담
																		// 고등학교

		var mapOptions = {
			zoom : 10,
			scrollwheel : true, // we disable de scroll over the map, it is
			// a really annoing when you scroll through
			// page
			center : school1
		}

		var map = new google.maps.Map(document.getElementById("satelliteMap"),
				mapOptions);

		var marker = new google.maps.Marker({
			map : map,
			position : school1,
			title : "염광 고등학교"
		});
		
		var marker2 = new google.maps.Marker({
			map : map,
			position : school2,
			title : "서라벌 고등학교"
		});
		var marker3 = new google.maps.Marker({
			map : map,
			position : school3,
			title : "창동 고등학교"
		});
		var marker4 = new google.maps.Marker({
			map : map,
			position : school4,
			title : "휘봉 고등학교"
		});
		var marker5 = new google.maps.Marker({
			map : map,
			position : school5,
			title : "청량 고등학교"
		});
		var marker6 = new google.maps.Marker({
			map : map,
			position : school6,
			title : "화곡 고등학교"
		});
		var marker7 = new google.maps.Marker({
			map : map,
			position : school7,
			title : "개포 고등학교"
		});
		var marker8 = new google.maps.Marker({
			map : map,
			position : school8,
			title : "경기 고등학교"
		});
		var marker9 = new google.maps.Marker({
			map : map,
			position : school9,
			title : "세종 고등학교"
		});
		var marker10 = new google.maps.Marker({
			map : map,
			position : school10,
			title : "압구정 고등학교"
		});
		var marker11 = new google.maps.Marker({
			map : map,
			position : school11,
			title : "중산 고등학교"
		});
		var marker12 = new google.maps.Marker({
			map : map,
			position : school12,
			title : "청담 고등학교"
		});
		var school1_content = "염광 고등학교"; // 말풍선 안에 들어갈 내용
		var school2_content = "서라벌 고등학교"; // 말풍선 안에 들어갈 내용
		var school3_content = "창동 고등학교"; // 말풍선 안에 들어갈 내용
		var school4_content = "휘봉 고등학교"; // 말풍선 안에 들어갈 내용
		var school5_content = "청량 고등학교"; // 말풍선 안에 들어갈 내용
		var school6_content = "화곡 고등학교"; // 말풍선 안에 들어갈 내용
		var school7_content = "개포 고등학교"; // 말풍선 안에 들어갈 내용
		var school8_content = "경기 고등학교"; // 말풍선 안에 들어갈 내용
		var school9_content = "세종 고등학교"; // 말풍선 안에 들어갈 내용
		var school10_content = "압구정 고등학교"; // 말풍선 안에 들어갈 내용
		var school11_content = "중산 고등학교"; // 말풍선 안에 들어갈 내용
		var school12_content = "청담 고등학교"; // 말풍선 안에 들어갈 내용
		var school1_infowindow = new google.maps.InfoWindow({ content: school1_content});
		var school2_infowindow = new google.maps.InfoWindow({ content: school2_content});
		var school3_infowindow = new google.maps.InfoWindow({ content: school3_content});
		var school4_infowindow = new google.maps.InfoWindow({ content: school4_content});
		var school5_infowindow = new google.maps.InfoWindow({ content: school5_content});
		var school6_infowindow = new google.maps.InfoWindow({ content: school6_content});
		var school7_infowindow = new google.maps.InfoWindow({ content: school7_content});
		var school8_infowindow = new google.maps.InfoWindow({ content: school8_content});
		var school9_infowindow = new google.maps.InfoWindow({ content: school9_content});
		var school10_infowindow = new google.maps.InfoWindow({ content: school10_content});
		var school11_infowindow = new google.maps.InfoWindow({ content: school11_content});
		var school12_infowindow = new google.maps.InfoWindow({ content: school12_content});
		
		marker.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>100</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>50</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>200</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>120</div>");
			school1_infowindow.open(map, marker);
			map.setZoom(18);
			map.setCenter(marker.getPosition());
		});
		marker2.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>152</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>103</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>300</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>110</div>");
			school2_infowindow.open(map, marker2);
			map.setZoom(18);
			map.setCenter(marker2.getPosition());
		});
		marker3.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>150</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>54</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>230</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>128</div>");
			school3_infowindow.open(map, marker3);
			map.setZoom(18);
			map.setCenter(marker3.getPosition());
		});
		marker4.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>405</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>230</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>610</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>320</div>");
			school4_infowindow.open(map, marker4);
			map.setZoom(18);
			map.setCenter(marker4.getPosition());
		});
		marker5.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>180</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>50</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>530</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>350</div>");
			school5_infowindow.open(map, marker5);
			map.setZoom(18);
			map.setCenter(marker5.getPosition());
		});
		marker6.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>80</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>52</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>342</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>121</div>");
			school6_infowindow.open(map, marker6);
			map.setZoom(18);
			map.setCenter(marker6.getPosition());
		});
		marker7.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>104</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>79</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>341</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>278</div>");
			school7_infowindow.open(map, marker7);
			map.setZoom(18);
			map.setCenter(marker7.getPosition());
		});
		marker8.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>110</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>69</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>72</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>19</div>");
			school8_infowindow.open(map, marker8);
			map.setZoom(18);
			map.setCenter(marker8.getPosition());
		});
		marker9.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>75</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>73</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>93</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>71</div>");
			school9_infowindow.open(map, marker9);
			map.setZoom(18);
			map.setCenter(marker9.getPosition());
		});
		marker10.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>43</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>34</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>62</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>42</div>");
			school10_infowindow.open(map, marker10);
			map.setZoom(18);
			map.setCenter(marker10.getPosition());
		});
		marker11.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>37</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>32</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>103</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>82</div>");
			school11_infowindow.open(map, marker11);
			map.setZoom(18);
			map.setCenter(marker11.getPosition());
		});
		marker12.addListener('click', function() {
			$('#Abtn_number').html("<div id='Abtn_number'>53</div>");
			$('#Abtn_completeNumber').html(
					"<div id='Abtn_completeNumber'>50</div>");
			$('#Bbtn_number').html(
					"<div id='Bbtn_number'>34</div>");
			$('#Bbtn_completeNumber').html(
					"<div id='Bbtn_completeNumber'>14</div>");
			school12_infowindow.open(map, marker12);
			map.setZoom(18);
			map.setCenter(marker12.getPosition());
		});
	},

	initSmallGoogleMaps : function() {
		// Regular Map
		var myLatlng = new google.maps.LatLng(37.492877, 127.055630);
		var mapOptions = {
			zoom : 18,
			center : myLatlng,
			scrollwheel : false, // we disable de scroll over the map, it is
		// a really annoing when you scroll through
		// page
		}

		var map = new google.maps.Map(document.getElementById("regularMap"),
				mapOptions);

		var marker = new google.maps.Marker({
			position : myLatlng,
			title : "Regular Map!"
		});

		marker.setMap(map);

		// Custom Skin & Settings Map
		var myLatlng = new google.maps.LatLng(40.748817, -73.985428);
		var mapOptions = {
			zoom : 13,
			center : myLatlng,
			scrollwheel : false, // we disable de scroll over the map, it is
			// a really annoing when you scroll through
			// page
			disableDefaultUI : true, // a way to quickly hide all controls
			zoomControl : true,
			styles : [ {
				"featureType" : "water",
				"stylers" : [ {
					"saturation" : 43
				}, {
					"lightness" : -11
				}, {
					"hue" : "#0088ff"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"hue" : "#ff0000"
				}, {
					"saturation" : -100
				}, {
					"lightness" : 99
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "geometry.stroke",
				"stylers" : [ {
					"color" : "#808080"
				}, {
					"lightness" : 54
				} ]
			}, {
				"featureType" : "landscape.man_made",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"color" : "#ece2d9"
				} ]
			}, {
				"featureType" : "poi.park",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"color" : "#ccdca1"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "labels.text.fill",
				"stylers" : [ {
					"color" : "#767676"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "labels.text.stroke",
				"stylers" : [ {
					"color" : "#ffffff"
				} ]
			}, {
				"featureType" : "poi",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "landscape.natural",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"visibility" : "on"
				}, {
					"color" : "#b8cb93"
				} ]
			}, {
				"featureType" : "poi.park",
				"stylers" : [ {
					"visibility" : "on"
				} ]
			}, {
				"featureType" : "poi.sports_complex",
				"stylers" : [ {
					"visibility" : "on"
				} ]
			}, {
				"featureType" : "poi.medical",
				"stylers" : [ {
					"visibility" : "on"
				} ]
			}, {
				"featureType" : "poi.business",
				"stylers" : [ {
					"visibility" : "simplified"
				} ]
			} ]

		}

		var map = new google.maps.Map(document.getElementById("customSkinMap"),
				mapOptions);

		var marker = new google.maps.Marker({
			position : myLatlng,
			title : "Custom Skin & Settings Map!"
		});

		marker.setMap(map);

	},

	initVectorMap : function() {
		var mapData = {
			"AU" : 760,
			"BR" : 550,
			"CA" : 120,
			"DE" : 1300,
			"FR" : 540,
			"GB" : 690,
			"GE" : 200,
			"IN" : 200,
			"RO" : 600,
			"RU" : 300,
			"US" : 2920,
		};

		$('#worldMap').vectorMap({
			map : 'world_mill_en',
			backgroundColor : "transparent",
			zoomOnScroll : false,
			regionStyle : {
				initial : {
					fill : '#e4e4e4',
					"fill-opacity" : 0.9,
					stroke : 'none',
					"stroke-width" : 0,
					"stroke-opacity" : 0
				}
			},

			series : {
				regions : [ {
					values : mapData,
					scale : [ "#AAAAAA", "#444444" ],
					normalizeFunction : 'polynomial'
				} ]
			},
		});
	},

	initFullScreenGoogleMap : function() {
		var myLatlng = new google.maps.LatLng(40.748817, -73.985428);
		var mapOptions = {
			zoom : 13,
			center : myLatlng,
			scrollwheel : false, // we disable de scroll over the map, it is
			// a really annoing when you scroll through
			// page
			styles : [ {
				"featureType" : "water",
				"stylers" : [ {
					"saturation" : 43
				}, {
					"lightness" : -11
				}, {
					"hue" : "#0088ff"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"hue" : "#ff0000"
				}, {
					"saturation" : -100
				}, {
					"lightness" : 99
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "geometry.stroke",
				"stylers" : [ {
					"color" : "#808080"
				}, {
					"lightness" : 54
				} ]
			}, {
				"featureType" : "landscape.man_made",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"color" : "#ece2d9"
				} ]
			}, {
				"featureType" : "poi.park",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"color" : "#ccdca1"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "labels.text.fill",
				"stylers" : [ {
					"color" : "#767676"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "labels.text.stroke",
				"stylers" : [ {
					"color" : "#ffffff"
				} ]
			}, {
				"featureType" : "poi",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "landscape.natural",
				"elementType" : "geometry.fill",
				"stylers" : [ {
					"visibility" : "on"
				}, {
					"color" : "#b8cb93"
				} ]
			}, {
				"featureType" : "poi.park",
				"stylers" : [ {
					"visibility" : "on"
				} ]
			}, {
				"featureType" : "poi.sports_complex",
				"stylers" : [ {
					"visibility" : "on"
				} ]
			}, {
				"featureType" : "poi.medical",
				"stylers" : [ {
					"visibility" : "on"
				} ]
			}, {
				"featureType" : "poi.business",
				"stylers" : [ {
					"visibility" : "simplified"
				} ]
			} ]

		}
		var map = new google.maps.Map(document.getElementById("map"),
				mapOptions);

		var marker = new google.maps.Marker({
			position : myLatlng,
			title : "Hello World!"
		});

		// To add the marker to the map, call setMap();
		marker.setMap(map);
	},

	initOverviewDashboard : function() {

		/*
		 * **************** Chart Total Earnings - single line
		 * ********************
		 */

		var dataPrice = {
			labels : [ '6월', '7월', '8월', '9월', '10월', '11월' ],
			series : [ [ 100, 200, 400, 300, 570, 300, 100 ] ]
		};

		var optionsPrice = {
			showPoint : false,
			lineSmooth : true,
			height : "210px",
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

		Chartist.Line('#chartTotalEarnings', dataPrice, optionsPrice);

		var dataPrice = {
			labels : [ '6월', '7월', '8월', '9월', '10월', '11월' ],
			series : [ [ 150, 100, 50, 110, 270, 300, 90 ] ]
		};

		var optionsPrice = {
			showPoint : false,
			lineSmooth : true,
			height : "210px",
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

		Chartist.Line('#chartTotalEarnings2', dataPrice, optionsPrice);

		/*
		 * **************** Chart Subscriptions - single line
		 * ********************
		 */

		var dataDays = {
			labels : [ '월', '화', '수', '목', '금', '토', '일' ],
			series : [ [ 10, 20, 30, 50, 70, 60, 10, 0 ] ]
		};

		var optionsDays = {
			showPoint : false,
			lineSmooth : true,
			height : "210px",
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

		Chartist.Line('#chartTotalSubscriptions', dataDays, optionsDays);

		var dataDays = {
			labels : [ '월', '화', '수', '목', '금', '토', '일' ],
			series : [ [ 60, 50, 30, 50, 70, 60, 90, 100 ] ]
		};

		var optionsDays = {
			showPoint : false,
			lineSmooth : true,
			height : "210px",
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

		Chartist.Line('#chartTotalSubscriptions2', dataDays, optionsDays);
		/*
		 * **************** Chart Total Downloads - single line
		 * ********************
		 */

		var dataDownloads = {
			labels : [ '2011', '2012', '2013', '2014', '2015', '2016' ],
			series : [ [ 7500, 6800, 5000, 6000, 4000, 7000 ] ]
		};

		var optionsDownloads = {
			showPoint : false,
			lineSmooth : true,
			height : "210px",
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
				line : 'ct-line ct-orange'
			}
		};

		Chartist.Line('#chartTotalDownloads', dataDownloads, optionsDownloads);

		var dataDownloads = {
			labels : [ '2011', '2012', '2013', '2014', '2015', '2016' ],
			series : [ [ 1200, 1000, 3490, 8345, 3256, 2566 ] ]
		};

		var optionsDownloads = {
			showPoint : false,
			lineSmooth : true,
			height : "210px",
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
				line : 'ct-line ct-orange'
			}
		};

		Chartist.Line('#chartTotalDownloads2', dataDownloads, optionsDownloads);
	},

	initStatsDashboard : function() {

		var dataSales = {
			labels : [ '9:00AM', '12:00AM', '3:00PM', '6:00PM', '9:00PM',
					'12:00PM', '3:00AM', '6:00AM' ],
			series : [ [ 287, 385, 490, 562, 594, 626, 698, 895, 952 ],
					[ 67, 152, 193, 240, 387, 435, 535, 642, 744 ],
					[ 23, 113, 67, 108, 190, 239, 307, 410, 410 ] ]
		};

		var optionsSales = {
			lineSmooth : false,
			low : 0,
			high : 1000,
			showArea : true,
			height : "245px",
			axisX : {
				showGrid : false,
			},
			lineSmooth : Chartist.Interpolation.simple({
				divisor : 3
			}),
			showLine : true,
			showPoint : false,
		};

		var responsiveSales = [ [ 'screen and (max-width: 640px)', {
			axisX : {
				labelInterpolationFnc : function(value) {
					return value[0];
				}
			}
		} ] ];

		Chartist.Line('#chartHours', dataSales, optionsSales, responsiveSales);

		var data = {
			labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug',
					'Sep', 'Oct', 'Nov', 'Dec' ],
			series : [
					[ 542, 543, 520, 680, 653, 753, 326, 434, 568, 610, 756,
							895 ],
					[ 230, 293, 380, 480, 503, 553, 600, 664, 698, 710, 736,
							795 ] ]
		};

		var options = {
			seriesBarDistance : 10,
			axisX : {
				showGrid : false
			},
			height : "245px"
		};

		var responsiveOptions = [ [ 'screen and (max-width: 640px)', {
			seriesBarDistance : 5,
			axisX : {
				labelInterpolationFnc : function(value) {
					return value[0];
				}
			}
		} ] ];

		Chartist.Line('#chartActivity', data, options, responsiveOptions);

		Chartist.Pie('#chartPreferences', {
			labels : [ '62%', '32%', '6%' ],
			series : [ 62, 32, 6 ]
		});
	},

	initChartsPage : function() {
		/*
		 * **************** 24 Hours Performance - single line
		 * ********************
		 */

		var dataPerformance = {
			labels : [ '6pm', '9pm', '11pm', '2am', '4am', '8am', '2pm', '5pm',
					'8pm', '11pm', '4am' ],
			series : [ [ 1, 6, 8, 7, 4, 7, 8, 12, 16, 17, 14, 13 ] ]
		};

		var optionsPerformance = {
			showPoint : false,
			lineSmooth : true,
			height : "200px",
			axisX : {
				showGrid : false,
				showLabel : true
			},
			axisY : {
				offset : 40,

			},
			low : 0,
			high : 16,
			height : "250px"
		};

		Chartist.Line('#chartPerformance', dataPerformance, optionsPerformance);

		/* **************** 2014 Sales - Bar Chart ******************** */

		var data = {
			labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug',
					'Sep', 'Oct', 'Nov', 'Dec' ],
			series : [
					[ 542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756,
							895 ],
					[ 412, 243, 280, 580, 453, 353, 300, 364, 368, 410, 636,
							695 ] ]
		};

		var options = {
			seriesBarDistance : 10,
			axisX : {
				showGrid : false
			},
			height : "250px"
		};

		var responsiveOptions = [ [ 'screen and (max-width: 640px)', {
			seriesBarDistance : 5,
			axisX : {
				labelInterpolationFnc : function(value) {
					return value[0];
				}
			}
		} ] ];

		Chartist.Bar('#chartActivity', data, options, responsiveOptions);

		/*
		 * **************** NASDAQ: AAPL - single line with points
		 * ********************
		 */

		var dataStock = {
			labels : [ '\'07', '\'08', '\'09', '\'10', '\'11', '\'12', '\'13',
					'\'14', '\'15' ],
			series : [ [ 22.20, 34.90, 42.28, 51.93, 62.21, 80.23, 62.21,
					82.12, 102.50, 107.23 ] ]
		};

		var optionsStock = {
			lineSmooth : false,
			height : "200px",
			axisY : {
				offset : 40,
				labelInterpolationFnc : function(value) {
					return '$' + value;
				}

			},
			low : 10,
			height : "250px",
			high : 110,
			classNames : {
				point : 'ct-point ct-green',
				line : 'ct-line ct-green'
			}
		};

		Chartist.Line('#chartStock', dataStock, optionsStock);

		/* **************** Views - barchart ******************** */

		var dataViews = {
			labels : [ '염광', '서라벌', '창동', '휘봉', '청량', '화곡', '개포', '경기', '세종',
					'압구정', '중산', '청담' ],
			series : [ [ 542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756,
					895 ] ]
		};

		var optionsViews = {
			seriesBarDistance : 10,
			classNames : {
				bar : 'ct-bar'
			},
			axisX : {
				showGrid : false,

			},
			height : "250px"

		};

		var responsiveOptionsViews = [ [ 'screen and (max-width: 640px)', {
			seriesBarDistance : 5,
			axisX : {
				labelInterpolationFnc : function(value) {
					return value[0];
				}
			}
		} ] ];

		Chartist.Bar('#chartViews', dataViews, optionsViews,
				responsiveOptionsViews);

	},

	showSwal : function(type) {
		if (type == 'basic') {
			swal("Here's a message!");

		} else if (type == 'title-and-text') {
			swal("Here's a message!", "It's pretty, isn't it?")

		} else if (type == 'success-message') {
			swal("Good job!", "You clicked the button!", "success")

		} else if (type == 'warning-message-and-confirmation') {
			swal({
				title : "Are you sure?",
				text : "You will not be able to recover this imaginary file!",
				type : "warning",
				showCancelButton : true,
				confirmButtonClass : "btn btn-info btn-fill",
				confirmButtonText : "Yes, delete it!",
				cancelButtonClass : "btn btn-danger btn-fill",
				closeOnConfirm : false,
			}, function() {
				swal("Deleted!", "Your imaginary file has been deleted.",
						"success");
			});

		} else if (type == 'warning-message-and-cancel') {
			swal({
				title : "Are you sure?",
				text : "You will not be able to recover this imaginary file!",
				type : "warning",
				showCancelButton : true,
				confirmButtonText : "Yes, delete it!",
				cancelButtonText : "No, cancel plx!",
				closeOnConfirm : false,
				closeOnCancel : false
			},
					function(isConfirm) {
						if (isConfirm) {
							swal("Deleted!",
									"Your imaginary file has been deleted.",
									"success");
						} else {
							swal("Cancelled", "Your imaginary file is safe :)",
									"error");
						}
					});

		} else if (type == 'custom-html') {
			swal({
				title : 'HTML example',
				html : 'You can use <b>bold text</b>, '
						+ '<a href="http://github.com">links</a> '
						+ 'and other HTML tags'
			});

		} else if (type == 'auto-close') {
			swal({
				title : "Auto close alert!",
				text : "I will close in 2 seconds.",
				timer : 2000,
				showConfirmButton : false
			});
		} else if (type == 'input-field') {
			swal({
				title : 'Input something',
				html : '<p><input id="input-field" class="form-control">',
				showCancelButton : true,
				closeOnConfirm : false,
				allowOutsideClick : false
			}, function() {
				swal({
					html : 'You entered: <strong>' + $('#input-field').val()
							+ '</strong>'
				});
			})
		}
	},

	checkFullPageBackgroundImage : function() {
		$page = $('.full-page');
		image_src = $page.data('image');

		if (image_src !== undefined) {
			image_container = '<div class="full-page-background" style="background-image: url('
					+ image_src + ') "/>'
			$page.append(image_container);
		}
	},

	initFormExtendedSliders : function() {
		// Sliders for demo purpose in refine cards section
		if ($('#slider-range').length != 0) {
			$("#slider-range").slider({
				range : true,
				min : 0,
				max : 500,
				values : [ 75, 300 ],
			});
		}
		if ($('#refine-price-range').length != 0) {
			$("#refine-price-range").slider(
					{
						range : true,
						min : 0,
						max : 999,
						values : [ 100, 850 ],
						slide : function(event, ui) {
							min_price = ui.values[0];
							max_price = ui.values[1];
							$(this).siblings('.price-left').html(
									'&euro; ' + min_price);
							$(this).siblings('.price-right').html(
									'&euro; ' + max_price)
						}
					});
		}

		if ($('#slider-default').length != 0
				|| $('#slider-default2').length != 0) {
			$("#slider-default, #slider-default2").slider({
				value : 70,
				orientation : "horizontal",
				range : "min",
				animate : true
			});
		}
	},

	initFormExtendedDatetimepickers : function() {
		$('.datetimepicker').datetimepicker({
			icons : {
				time : "fa fa-clock-o",
				date : "fa fa-calendar",
				up : "fa fa-chevron-up",
				down : "fa fa-chevron-down",
				previous : 'fa fa-chevron-left',
				next : 'fa fa-chevron-right',
				today : 'fa fa-screenshot',
				clear : 'fa fa-trash',
				close : 'fa fa-remove'
			}
		});

		$('.datepicker').datetimepicker({
			format : 'MM/DD/YYYY', // use this format if you want the 12hours
			// timpiecker with AM/PM toggle
			icons : {
				time : "fa fa-clock-o",
				date : "fa fa-calendar",
				up : "fa fa-chevron-up",
				down : "fa fa-chevron-down",
				previous : 'fa fa-chevron-left',
				next : 'fa fa-chevron-right',
				today : 'fa fa-screenshot',
				clear : 'fa fa-trash',
				close : 'fa fa-remove'
			}
		});

		$('.timepicker').datetimepicker({
			// format: 'H:mm', // use this format if you want the 24hours
			// timepicker
			format : 'h:mm A', // use this format if you want the 12hours
			// timpiecker with AM/PM toggle
			icons : {
				time : "fa fa-clock-o",
				date : "fa fa-calendar",
				up : "fa fa-chevron-up",
				down : "fa fa-chevron-down",
				previous : 'fa fa-chevron-left',
				next : 'fa fa-chevron-right',
				today : 'fa fa-screenshot',
				clear : 'fa fa-trash',
				close : 'fa fa-remove'
			}

		});
	},

	initFullCalendar : function() {
		$calendar = $('#fullCalendar');

		today = new Date();
		y = today.getFullYear();
		m = today.getMonth();
		d = today.getDate();

		$calendar
				.fullCalendar({
					header : {
						left : 'title',
						center : 'month,agendaWeek,agendaDay',
						right : 'prev,next today'
					},
					defaultDate : today,
					selectable : true,
					selectHelper : true,
					titleFormat : {
						month : 'MMMM YYYY', // September 2015
						week : " MMMM D YYYY", // September 2015
						day : 'D MMM, YYYY' // Tuesday, Sep 8, 2015
					},
					select : function(start, end) {

						// on select we show the Sweet Alert modal with an input
						swal(
								{
									title : 'Create an Event',
									html : '<br><input class="form-control" placeholder="Event Title" id="input-field">',
									showCancelButton : true,
									closeOnConfirm : true
								}, function() {

									var eventData;
									event_title = $('#input-field').val();

									if (event_title) {
										eventData = {
											title : event_title,
											start : start,
											end : end
										};
										$calendar.fullCalendar('renderEvent',
												eventData, true); // stick? =
										// true
									}

									$calendar.fullCalendar('unselect');

								});
					},
					editable : true,
					eventLimit : true, // allow "more" link when too many
					// events

					// color classes: [ event-blue | event-azure | event-green |
					// event-orange | event-red ]
					events : [ {
						title : 'All Day Event',
						start : new Date(y, m, 1)
					}, {
						id : 999,
						title : 'Repeating Event',
						start : new Date(y, m, d - 4, 6, 0),
						allDay : false,
						className : 'event-blue'
					}, {
						id : 999,
						title : 'Repeating Event',
						start : new Date(y, m, d + 3, 6, 0),
						allDay : false,
						className : 'event-blue'
					}, {
						title : 'Meeting',
						start : new Date(y, m, d - 1, 10, 30),
						allDay : false,
						className : 'event-green'
					}, {
						title : 'Lunch',
						start : new Date(y, m, d + 7, 12, 0),
						end : new Date(y, m, d + 7, 14, 0),
						allDay : false,
						className : 'event-red'
					}, {
						title : 'Pdpro Launch',
						start : new Date(y, m, d - 2, 12, 0),
						allDay : true,
						className : 'event-azure'
					}, {
						title : 'Birthday Party',
						start : new Date(y, m, d + 1, 19, 0),
						end : new Date(y, m, d + 1, 22, 30),
						allDay : false,
					}, {
						title : 'Click for Creative Tim',
						start : new Date(y, m, 21),
						end : new Date(y, m, 22),
						url : 'http://www.creative-tim.com/',
						className : 'event-orange'
					}, {
						title : 'Click for Google',
						start : new Date(y, m, 21),
						end : new Date(y, m, 22),
						url : 'http://www.creative-tim.com/',
						className : 'event-orange'
					} ]
				});
	},

	showNotification : function(from, align, msg) {
		color = Math.floor((Math.random() * 4) + 1);

		$.notify({
			icon : "ti-gift",
			message : msg

		}, {
			type : type[color],
			timer : 4000,
			placement : {
				from : from,
				align : align
			}

		});

	},

	initDocumentationCharts : function() {
		// init single simple line chart
		var dataPerformance = {
			labels : [ '6pm', '9pm', '11pm', '2am', '4am', '8am', '2pm', '5pm',
					'8pm', '11pm', '4am' ],
			series : [ [ 1, 6, 8, 7, 4, 7, 8, 12, 16, 17, 14, 13 ] ]
		};

		var optionsPerformance = {
			showPoint : false,
			lineSmooth : true,
			height : "200px",
			axisX : {
				showGrid : false,
				showLabel : true
			},
			axisY : {
				offset : 40,
			},
			low : 0,
			high : 16,
			height : "250px"
		};

		Chartist.Line('#chartPerformance', dataPerformance, optionsPerformance);

		// init single line with points chart
		var dataStock = {
			labels : [ '\'07', '\'08', '\'09', '\'10', '\'11', '\'12', '\'13',
					'\'14', '\'15' ],
			series : [ [ 22.20, 34.90, 42.28, 51.93, 62.21, 80.23, 62.21,
					82.12, 102.50, 107.23 ] ]
		};

		var optionsStock = {
			lineSmooth : false,
			height : "200px",
			axisY : {
				offset : 40,
				labelInterpolationFnc : function(value) {
					return '$' + value;
				}

			},
			low : 10,
			height : "250px",
			high : 110,
			classNames : {
				point : 'ct-point ct-green',
				line : 'ct-line ct-green'
			}
		};

		Chartist.Line('#chartStock', dataStock, optionsStock);

		// init multiple lines chart
		var dataSales = {
			labels : [ '9:00AM', '12:00AM', '3:00PM', '6:00PM', '9:00PM',
					'12:00PM', '3:00AM', '6:00AM' ],
			series : [ [ 287, 385, 490, 562, 594, 626, 698, 895, 952 ],
					[ 67, 152, 193, 240, 387, 435, 535, 642, 744 ],
					[ 23, 113, 67, 108, 190, 239, 307, 410, 410 ] ]
		};

		var optionsSales = {
			lineSmooth : false,
			low : 0,
			high : 1000,
			showArea : true,
			height : "245px",
			axisX : {
				showGrid : false,
			},
			lineSmooth : Chartist.Interpolation.simple({
				divisor : 3
			}),
			showLine : true,
			showPoint : false,
		};

		var responsiveSales = [ [ 'screen and (max-width: 640px)', {
			axisX : {
				labelInterpolationFnc : function(value) {
					return value[0];
				}
			}
		} ] ];

		Chartist.Line('#chartHours', dataSales, optionsSales, responsiveSales);

		// pie chart
		Chartist.Pie('#chartPreferences', {
			labels : [ '62%', '32%', '6%' ],
			series : [ 62, 32, 6 ]
		});

		// bar chart
		var dataViews = {
			labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug',
					'Sep', 'Oct', 'Nov', 'Dec' ],
			series : [ [ 542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756,
					895 ] ]
		};

		var optionsViews = {
			seriesBarDistance : 10,
			classNames : {
				bar : 'ct-bar'
			},
			axisX : {
				showGrid : false,

			},
			height : "250px"

		};

		var responsiveOptionsViews = [ [ 'screen and (max-width: 640px)', {
			seriesBarDistance : 5,
			axisX : {
				labelInterpolationFnc : function(value) {
					return value[0];
				}
			}
		} ] ];

		Chartist.Bar('#chartViews', dataViews, optionsViews,
				responsiveOptionsViews);

		// multiple bars chart
		var data = {
			labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug',
					'Sep', 'Oct', 'Nov', 'Dec' ],
			series : [
					[ 542, 543, 520, 680, 653, 753, 326, 434, 568, 610, 756,
							895 ],
					[ 230, 293, 380, 480, 503, 553, 600, 664, 698, 710, 736,
							795 ] ]
		};

		var options = {
			seriesBarDistance : 10,
			axisX : {
				showGrid : false
			},
			height : "245px"
		};

		var responsiveOptions = [ [ 'screen and (max-width: 640px)', {
			seriesBarDistance : 5,
			axisX : {
				labelInterpolationFnc : function(value) {
					return value[0];
				}
			}
		} ] ];

		Chartist.Line('#chartActivity', data, options, responsiveOptions);

	}

}
