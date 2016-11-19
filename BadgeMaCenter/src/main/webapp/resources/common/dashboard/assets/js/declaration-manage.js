var pre_count = 0;
var doing_count = 0;
manage = {
	helpNumber : function() {
		$.ajax({
			type : "GET",
			url : "AbtnNumber.do",
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			success : function(json) {
				var list = json.report_result;
				var listLen = list.length;
				var contentStr = "";
				for (var i = 0; i < listLen; i++) {
					contentStr += list[i].num;
				}
				
				$('#helpnumber').html("<div id='helpnumber'>"+contentStr+"</div>");
			}
		});
		
	},
	finishNumber : function() {
		$.ajax({
			type : "GET",
			url : "AbtnSolveNumber.do",
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			success : function(json) {
				var list = json.solve_result;
				var listLen = list.length;
				var contentStr = "";
				for (var i = 0; i < listLen; i++) {
					contentStr += list[i].num;
				}
				
				$('#finishNumber').html("<div id='finishNumber'>"+contentStr+"</div>");
			}
		});
		
	},
	declarationList : function() {
		pre_count = 0;
		var query = {};
		$
				.ajax({
					type : "GET",
					url : "declarationLine.do",
					dataType : "json",
					success : function(json) {
						var test = "hello";
						var list = json.line_list;
						var listLen = list.length;
						$('#declarationline').html(
								'<ul class="timeline" id="declarationline">');
						for (var i = 0; i < listLen; i++) {

							if (list[i].solve_state == 0) {

								$('#declarationline')
										.append(
												'<li id="pre'
														+ i
														+ '" onclick="manage.preline_onclick({id:'
														+ i
														+ ',location:\''
														+ list[i].class_location
														+ '\',pk:\''
														+ list[i].declaration_id
														+ '\',date:\''
														+ list[i].declaration_date
														+ '\'})"><div class="timeline-badge danger"><i class="ti-check-box"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-danger">긴급 출동</span></div><div class="timeline-body"><p>'
														+ list[i].declaration_date
														+ '<br/>장소 : '
														+ list[i].class_location
														+ '</p></div></div></li>');
							} else if (list[i].solve_state == 1) {
								$('#declarationline')
										.append(
												'<li class="timeline-inverted" id="doing'
														+ i
														+ '" onclick="manage.doingline_onclick({id:'+ i+ ',location:\''+ list[i].class_location+ '\',pk:\''
														+ list[i].declaration_id
														+ '\',date:\''
														+ list[i].declaration_date
														+ '\'});"><div class="timeline-badge warning" ><i class="ti-gallery"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-warning">신고 처리중</span></div><div class="timeline-body"><p>'
														+ list[i].class_location
														+ '<br/>신고 처리 중입니다.<img align="right" width="50" heigth="50" src="resources/common/dashboard/assets/img/faces/moonsu.png"/></p></div><h6><i class="ti-time">'
														+ list[i].declaration_date
														+ '</i></div></li>');
							}
						}
						$('#declarationline').append("</ul>");
					}
				});
	},

	preline_onclick : function(obj) {
		var id = obj['id'];
		var location = obj['location'];
		var pk = obj['pk'];
		var date = obj['date'];
//		swal(
//				{
//					title : ""+location+"으로 지금 바로 가시겠습니까?",
//					text : "해당 반으로 즉시 출동하시려면 확인버튼을 눌러주세요.",
//					type : "warning",
//					showCancelButton : true,
//					confirmButtonText : '확인',
//					cancelButtonText : "취소",
//					closeOnConfirm : false,
//					closeOnCancel : false
//				},
//				function(isConfirm) {
//					if (isConfirm) {
//						var query = {
//								declaration_id : pk,
//								solve_state : 1
//							};
//							$.ajax({
//								type : "POST",
//								url : "updateSolve.do",
//								data : query,
//								contentType : "application/x-www-form-urlencoded; charset=UTF-8",
//								success : function(data) {
//									alert("ok");
//								}
//
//							});
//							$('#pre' + id)
//									.html(
//											'<ul class="timeline" id="declarationline"><li class="timeline-inverted" id="doing'													+ id
//													+ '" onclick="manage.doingline_onclick({id:'
//													+ id
//													+ ',location:\''
//													+ location
//													+ '\',pk:\''
//													+ pk
//													+ '\',date:\''
//													+ date
//													+ '\'});"><div class="timeline-badge warning" ><i class="ti-gallery"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-warning">신고 처리중</span></div><div class="timeline-body"><p>'
//													+ location
//													+ '<br/>신고 처리 중입니다.</p></div><h6><i class="ti-time">'
//													+ date + '</i></h6></div></li></ul>');
//						swal("완료!", "출동하였습니다.", "success");
//					} else {
//						swal("취소!", "요청이 취소되었습니다.", "error");
//					}
//				});
		var query = {
				declaration_id : pk,
				solve_state : 1
			};
			$.ajax({
				type : "POST",
				url : "updateSolve.do",
				data : query,
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				success : function(data) {
					alert("ok");
				}

			});
		$('#pre' + id)
		.html(
				'<ul class="timeline" id="declarationline"><li class="timeline-inverted" id="doing'													+ id
						+ '" onclick="manage.doingline_onclick({id:'
						+ id
						+ ',location:\''
						+ location
						+ '\',pk:\''
						+ pk
						+ '\',date:\''
						+ date
						+ '\'});"><div class="timeline-badge warning" ><i class="ti-gallery"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-warning">신고 처리중</span></div><div class="timeline-body"><p>'
						+ location
						+ '<br/>신고 처리 중입니다.<img align="right" width="50" heigth="50" src="resources/common/dashboard/assets/img/faces/moonsu.png"/></p></div><h6><i class="ti-time">'
						+ date + '</i></h6></div></li></ul>');
	},
	doingline_onclick : function(obj) {
		var id = obj['id'];
		var location = obj['location'];
		var pk = obj['pk'];
		var date = obj['date'];
		
		swal({
			  title: "사건 처리 내용 입력!",
			  text: "사건에 대한 간략한 내용과 처리내용을 입력하여 주세요:",
			  type: "input",
			  showCancelButton: true,
			  closeOnConfirm: false,
			  animation: "slide-from-top",
			  inputPlaceholder: "사건 내용 및 해결"
			},
			function(inputValue){
			  if (inputValue === false) return false;
			  
			  if (inputValue === "") {
			    swal.showInputError("반드시 입력을 해야합니다^^");
			    return false
			  }
			  var query = {
						declaration_id : pk,
						input_message: inputValue,
						solve_state : 2
					};
					$
							.ajax({
								type : "POST",
								url : "updateSolve.do",
								data : query,
								contentType : "application/x-www-form-urlencoded; charset=UTF-8",
								success : function(data) {
									alert("ok");
								}

							});
					$('#doing' + id).html("");
					swal("처리 완료!", "해당 신고 처리가 완료되었습니다.", "success");
			});
		
		
		
		
		
		

	},
	detail_onclick : function(obj) {
		swal({
			  title: "해결 내용 : " +obj['coment'],
			  text: "" + obj['location'] + "에서 " + obj['date'] + "에 처리완료!",
			  imageUrl: "resources/common/dashboard/assets/img/new_logo.png"
			});
	}
}