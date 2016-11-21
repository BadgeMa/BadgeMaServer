studentadvice = {
		adviceFormClick : function() {
			$('#card_title').html('<div class="card-title text-center">상담 신청</div><p class="category text-center">여러분의 이야기를 들려주세요</p>');
			$('#advice_content').html('<div class="content" id="advice_content"><div class="form-group"><label>여러분의 이야기를 적어주세요</label><textarea id="advicetitle" class="form-control" placeholder="어떤 고민이 있으신가요?"rows="6"></textarea></div><div class="form-group"><label>Password</label><input id="password" type="password"placeholder="Password" class="form-control"></div></div><div class="footer text-center"><Button onclick = "studentadvice.formConfirm({badge_id:\'010101\'});" class="btn btn-fill btn-wd btn-info"style="margin-bottom: 15px">확인</Button></div>');
		},
		formConfirm : function(obj) {
			var query = {
					badge_id :obj['badge_id'],
					title : $('#advicetitle').val(),
					advice_password : $('#password').val()
			};
			$
					.ajax({
						type : "POST",
						url : "insertAdvice.do",
						data : query, 
						dataType : "json",
						success : function(json) {
							$('#advicetitle').val('');
							$('#password').val('');
							swal("완료!", "상담신청이 완료되었습니다.", "success");
							studentadvice.adviceList();
						}
					});
		},
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
								$('#advice').append('<div id='+list[i].advice_id+' onclick = "studentadvice.onclick({advice_id:'
										+ list[i].advice_id
										+ ',advice_date:\''
										+ list[i].advice_date
										+ '\'});" class="card" style="background-color: #f4f3ef"><div class="content"><p>'+list[i].title+'</p></div><div class="card-footer" style="text-align: right;height: 40px;font-size: 12px;"><hr/><i class="ti-time"></i>'+list[i].advice_date+'</div></div>');
							}	
						}
					});
			
		},
		
		onclick : function(obj) {
			swal({
				  title: "비밀번호 입력!",
				  text: "상담 신청시 작성했던 비밀번호를 입력해주세요^^",
				  type: "input",
				  inputType: "password",
				  showCancelButton: true,
				  closeOnConfirm: false,
				  animation: "slide-from-top",
				  inputPlaceholder: "비밀번호 입력"
				},
				function(inputValue){
				  if (inputValue === false) return false;
				  
				  if (inputValue === "") {
				    swal.showInputError("반드시 입력을 해야합니다^^");
				    return false
				  }
				  var query = {
						  advice_id : obj['advice_id']
						};
						$
								.ajax({
									type : "GET",
									url : "checkAdvicePassword.do",
									data : query,
									dataType : "json",
									contentType : "application/x-www-form-urlencoded; charset=UTF-8",
									success : function(json) {
										var result_list = json.password_check;
										if (result_list[0].advice_password== inputValue) {
											swal("완료!", "비밀번호가 맞습니다.", "success");
											studentadvice.chatView(obj);
										} else if (result_list[0].advice_password != inputValue) {
											swal("틀림!", "비밀번호가 틀렸습니다.", "error");
										}
									}
								});
						
				});

		},
		chatView : function(obj) {
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
						$('#advice_content').append('<hr><div class="send-message"><input id = "send_content" class="form-control textarea" type="text" placeholder="Type here!" /><div class="send-button"><button onclick="studentadvice.send_click({advice_id:'
								+ obj["advice_id"]+'});" class="btn btn-primary btn-fill">Send</button></div></div></div>');
					}

				});
		},
		send_click : function(obj) {
			var advice_id = obj['advice_id'];
			var value = $('#send_content').val();
			var query = {
					advice_id : advice_id,
					send_id : "010101",
					content : value
				};
				$.ajax({
					type : "POST",
					url : "insertAdviceContent.do",
					data : query,
					dataType : "json",
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(json) {
						studentadvice.chatView({advice_id : advice_id});
					}

				});

		}
}