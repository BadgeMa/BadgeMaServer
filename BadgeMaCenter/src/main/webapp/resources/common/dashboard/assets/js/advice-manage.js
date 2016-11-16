advice = {
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
															+ '" onclick="manage.doingline_onclick({id:'
															+ i
															+ ',location:\''
															+ list[i].class_location
															+ '\',pk:\''
															+ list[i].declaration_id
															+ '\',date:\''
															+ list[i].declaration_date
															+ '\'});"><div class="timeline-badge warning" ><i class="ti-gallery"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-warning">신고 처리중</span></div><div class="timeline-body"><p>'
															+ list[i].class_location
															+ '<br/>신고 처리 중입니다.</p></div><h6><i class="ti-time">'
															+ list[i].declaration_date
															+ '</i></div></li>');
								}
							}
							$('#declarationline').append("</ul>");
						}
					});
		},
		adviceList : function() {
			$('#advice').html("<div class='content' id = 'advice'>");
			$('#advice').append('<div id="test" onclick = "advice.onclick(1);" class="card" style="background-color: #f4f3ef"><div class="content"><p>같은반 친구가 돈을 빌려갔는데 갚지 않고 있어요..</p></div><div class="card-footer" style="text-align: right;height: 40px;font-size: 12px;"><hr/><i class="ti-time"></i>2016년 11월 04일 14시 27분</div></div>');
			$('#advice').append('<div id="test" onclick = "advice.onclick(2);" class="card" style="background-color: #f4f3ef"><div class="content"><p>매일 매점으로 먹거리를 사오라고 시켜요..</p></div><div class="card-footer" style="text-align: right;height: 40px;font-size: 12px;"><hr/><i class="ti-time"></i>2016년 11월 10일 10시 51분</div></div>');
		},
		onclick : function(id) {
			$('#advice_content').html('<div class="content" id="advice_content">');
			if (id==1) {
				$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>안녕하세요! 전문 상담가 뺏지마예요^^.<br/> 어떤 고민이 있나요?</p><div class="card-footer"><i class="ti-check"></i><h6>11:20</h6></div></div></li></ol>');
				$('#advice_content').append('<ol class="chat"><li class="self"><div class="msg"><p>얼마전에 친구가 돈을 빌려가서 갚지 않고 있어요</p><div class="card-footer"><i class="ti-check"></i><h6>11:22</h6></div></div><div class="avatar"><img src="resources/common/dashboard/assets/img/default-avatar.png" alt="crash" /></div></li></ol>');
				$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>얼마의 금액을 빌려갔나요??</p><div class="card-footer"><i class="ti-check"></i><h6>11:23</h6></div></div></li></ol>');
				$('#advice_content').append('<hr><div class="send-message"><input id = "send_content" class="form-control textarea" type="text" placeholder="Type here!" /><div class="send-button"><button onclick="advice.send_click();" class="btn btn-primary btn-fill">Send</button></div></div></div>');
			} else if (id ==2){
				$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>안녕하세요! 전문 상담가 뺏지마예요^^. <br/>어떤 고민이 있나요?</p><div class="card-footer"><i class="ti-check"></i><h6>11:20</h6></div></div></li></ol>');
				$('#advice_content').append('<ol class="chat"><li class="self"><div class="msg"><p>쉬는시간 마다 빵을 사오라고 시켜요..</p><div class="card-footer"><i class="ti-check"></i><h6>11:22</h6></div></div><div class="avatar"><img src="resources/common/dashboard/assets/img/default-avatar.png" alt="crash" /></div></li></ol>');
				$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>몇명에서 사오라고 시키나요??</p><div class="card-footer"><i class="ti-check"></i><h6>11:23</h6></div></div></li></ol>');
				$('#advice_content').append('<hr><div class="send-message"><input id = "send_content" class="form-control textarea" type="text" placeholder="Type here!" /><div class="send-button"><button onclick="advice.send_click();" class="btn btn-primary btn-fill">Send</button></div></div></div>');				
			}
		},
		send_click : function() {
			var value = $('#send_content').val();
			$('#advice_content').html('<div class="content" id="advice_content">');
			$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>안녕하세요! 전문 상담가 뺏지마예요^^. <br/>어떤 고민이 있나요?</p><div class="card-footer"><i class="ti-check"></i><h6>11:20</h6></div></div></li></ol>');
			$('#advice_content').append('<ol class="chat"><li class="self"><div class="msg"><p>쉬는시간 마다 빵을 사오라고 시켜요..</p><div class="card-footer"><i class="ti-check"></i><h6>11:22</h6></div></div><div class="avatar"><img src="resources/common/dashboard/assets/img/default-avatar.png" alt="crash" /></div></li></ol>');
			$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>몇명에서 사오라고 시키나요??</p><div class="card-footer"><i class="ti-check"></i><h6>11:23</h6></div></div></li></ol>');
			$('#advice_content').append('<ol class="chat"><li class="self"><div class="msg"><p>'+value+'</p><div class="card-footer"><i class="ti-check"></i><h6>11:24</h6></div></div><div class="avatar"><img src="resources/common/dashboard/assets/img/default-avatar.png" alt="crash" /></div></li></ol>');
			$('#advice_content').append('<hr><div class="send-message"><input id = "send_content" class="form-control textarea" type="text" placeholder="Type here!" /><div class="send-button"><button onclick="advice.send_click();" class="btn btn-primary btn-fill">Send</button></div></div></div>');
		}
}