advice = {
		
		adviceList : function() {
			$('#advice').html("<div class='content' id = 'advice'>");
			var query = {};
			$
					.ajax({
						type : "GET",
						url : "adviceList.do",
						dataType : "json",
						success : function(json) {
							var list = json.advice_list;
							var listLen = list.length;
							for (var i = 0; i < listLen; i++) {								
								$('#advice').append('<div id='+list[i].advice_id+' onclick = "advice.onclick({advice_id:'
										+ list[i].advice_id
										+ ',advice_date:\''
										+ list[i].advice_date
										+ '\'});" class="card" style="background-color: #f4f3ef"><div class="content"><p>'+list[i].title+'</p></div><div class="card-footer" style="text-align: right;height: 40px;font-size: 12px;"><hr/><i class="ti-time"></i>'+list[i].advice_date+'</div></div>');
							}	
						}
					});
			
//			$('#advice').append('<div id="test" onclick = "advice.onclick(1);" class="card" style="background-color: #f4f3ef"><div class="content"><p>같은반 친구가 돈을 빌려갔는데 갚지 않고 있어요..</p></div><div class="card-footer" style="text-align: right;height: 40px;font-size: 12px;"><hr/><i class="ti-time"></i>2016년 11월 04일 14시 27분</div></div>');
//			$('#advice').append('<div id="test" onclick = "advice.onclick(2);" class="card" style="background-color: #f4f3ef"><div class="content"><p>매일 매점으로 먹거리를 사오라고 시켜요..</p></div><div class="card-footer" style="text-align: right;height: 40px;font-size: 12px;"><hr/><i class="ti-time"></i>2016년 11월 10일 10시 51분</div></div>');
		},
		onclick : function(obj) {
			$('#advice_content').html('<div class="content" id="advice_content">');
			var query = {
					advice_id : obj['advice_id']
				};
				$.ajax({
					type : "GET",
					url : "adviceContentList.do",
					data : query,
					dataType : "json",
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(json) {
						var list = json.advicecontent_list;
						var listLen = list.length;
						$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>안녕하세요! 전문 상담가 뺏지마예요^^.<br/> 어떤 고민이 있나요?</p><div class="card-footer"><i class="ti-check"></i><h6></h6></div></div></li></ol>');
						for (var i = 0; i < listLen; i++) {
							
							if (list[i].send_id == '010101') {								
								$('#advice_content').append('<ol class="chat"><li class="self"><div class="msg"><p>'+list[i].content+'</p><div class="card-footer"><i class="ti-check"></i><h6>'+list[i].content_date+'</h6></div></div><div class="avatar"><img src="resources/common/dashboard/assets/img/default-avatar.png" alt="crash" /></div></li></ol>');
							} else if (list[i].send_id == '100') {								
								$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>'+list[i].content+'</p><div class="card-footer"><i class="ti-check"></i><h6>'+list[i].content_date+'</h6></div></div></li></ol>');
							}		
						}
						$('#advice_content').append('<hr><div class="send-message"><input id = "send_content" class="form-control textarea" type="text" placeholder="Type here!" /><div class="send-button"><button onclick="advice.send_click({advice_id:'
								+ obj["advice_id"]+'});" class="btn btn-primary btn-fill">Send</button></div></div></div>');
					}

				});

		},
		send_click : function(obj) {
			var advice_id = obj['advice_id'];
			var value = $('#send_content').val();
			var query = {
					advice_id : advice_id,
					send_id : "100",
					content : value
				};
				$.ajax({
					type : "POST",
					url : "insertAdviceContent.do",
					data : query,
					dataType : "json",
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(json) {
						advice.onclick({advice_id : advice_id});
					}

				});

//			$('#advice_content').html('<div class="content" id="advice_content">');
//			$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>안녕하세요! 전문 상담가 뺏지마예요^^. <br/>어떤 고민이 있나요?</p><div class="card-footer"><i class="ti-check"></i><h6>11:20</h6></div></div></li></ol>');
//			$('#advice_content').append('<ol class="chat"><li class="self"><div class="msg"><p>쉬는시간 마다 빵을 사오라고 시켜요..</p><div class="card-footer"><i class="ti-check"></i><h6>11:22</h6></div></div><div class="avatar"><img src="resources/common/dashboard/assets/img/default-avatar.png" alt="crash" /></div></li></ol>');
//			$('#advice_content').append('<ol class="chat"><li class="other"><div class="avatar"><img src="resources/common/dashboard/assets/img/faces/face-2.jpg" alt="crash" /></div><div class="msg"><p>몇명에서 사오라고 시키나요??</p><div class="card-footer"><i class="ti-check"></i><h6>11:23</h6></div></div></li></ol>');
//			$('#advice_content').append('<ol class="chat"><li class="self"><div class="msg"><p>'+value+'</p><div class="card-footer"><i class="ti-check"></i><h6>11:24</h6></div></div><div class="avatar"><img src="resources/common/dashboard/assets/img/default-avatar.png" alt="crash" /></div></li></ol>');
//			$('#advice_content').append('<hr><div class="send-message"><input id = "send_content" class="form-control textarea" type="text" placeholder="Type here!" /><div class="send-button"><button onclick="advice.send_click();" class="btn btn-primary btn-fill">Send</button></div></div></div>');
		}
}