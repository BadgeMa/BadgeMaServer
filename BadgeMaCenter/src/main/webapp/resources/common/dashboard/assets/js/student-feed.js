studentFeed= {
		
		feedList : function() {
			$('#feed_content').html('<div class="content" id="feed_content">');
			var query = {};
			$
					.ajax({
						type : "GET",
						url : "feedList.do",
						dataType : "json",
						success : function(json) {
							var list = json.feed_list;
							
							var listLen = list.length;
							var feed_id = new Array();
							var count = 0;
							for (var i = 0; i < listLen; i++) {
								$('#feed_content').append('<div class="card" style="background-color: #f4f3ef"><div class="header"><div class="row"><div class="col-md-10"><span class="label label-success">사연</span></div><div class="col-md-2"><ul class="nav navbar-right"><li class="dropdown"><a href="#"class="dropdown-toggle" data-toggle="dropdown"> <i class="ti-settings"></i> <b class="caret"></b></a><ul class="dropdown-menu"><li><a href="#paper">수정</a></li><li><a href="#paper">삭제</a></li></ul></li></ul></div></div></div><div class="content"><p>'+list[i].title+'</p><div class="stats"><i class="ti-time"></i>'+list[i].feed_date+'</div></div><div class="card-footer" style="background-color: #EBE9E6"><a data-toggle="collapse" href="#collapse'+list[i].feed_id+'"><div class="panel-heading"><h4 class="panel-title" style="color: #444444">댓글보기 <i class="ti-angle-down" style="float: right;"></i></h4></div></a><div id="collapse'+list[i].feed_id+'" class="panel-collapse collapse"><div id="comment_body'+list[i].feed_id+'" class="panel-body"><ul style="list-style: none; padding-left: 0px; color: #444444;"><li><div class="col-md-10" style="padding-left: 5px;"><p>익명 : 헐.. 누구냐</p></div><div class="col-md-2"><h6 class="pull-right"> 11월 20일 15시 22분</h6></div><hr class="col-md-12"style="color: #ffffff; background-color: #ffffff; hegiht: 1px; width: 95%;"></li>');
								feed_id[i] = list[i].feed_id;
								studentFeed.commentAjax(feed_id[count++]);	
							}							
								
							$('#feed_content').append('</div>');
						}
					});
		},
		commentAjax : function(id) {
			var feed_query = {
					feed_id : id
				};
			$
			.ajax({
				type : "GET",
				url : "feedCommentList.do",
				data : feed_query,
				dataType : "json",
				success : function(json) {
					var comment_list = json.feedcomment_list;
					var comment_listLen = comment_list.length;
					$('#comment_body'+id).html('<div id="comment_body'+id+'" class="panel-body">');
					for (var i = 0; i < comment_listLen; i++) {
						$('#comment_body'+id).append('<ul style="list-style: none; padding-left: 0px; color: #444444;"><li><div class="col-md-10" style="padding-left: 5px"><p>익명 : '+comment_list[i].comment+'</p></div><div class="col-md-2"><h6 class="pull-right">'+comment_list[i].comment_date+'</h6></div><hr class="col-md-12"style="color: #ffffff; background-color: #ffffff; hegiht: 1px; width: 95%;"></li></ul>');
					}
					$('#comment_body'+id).append('<ul style="list-style: none; padding-left: 0px; color: #444444;"><li><div class="col-md-10"><input id="comment_input'+id+'" class="form-control" type="text" name="required" required="required" paceholder="댓글을 작성해 주세요" /></div><div class="col-md-2"><button onclick = "studentFeed.commentSendClick('+id+');" class="btn btn-fill">확인</button></div></li></ul></div></div>');														
		
				}
			});		
		},
		commentSendClick : function(id) {
			var query = {
					feed_id : id,
					comment : $('#comment_input'+id).val()
				};
			$
			.ajax({
				type : "GET",
				url : "insertFeedComment.do",
				data : query,
				dataType : "json",
				success : function(json) {
					studentFeed.feedList();
				}
			});	
		},
		feedFormClick : function() {
			swal({
				  title: "사연 신청",
				  text: "사연 신청을 하시겠습니까?",
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonColor: "#DD6B55",
				  confirmButtonText: "신청",
				  cancelButtonText: "취소",
				  closeOnConfirm: false,
				  closeOnCancel: false
				},
				function(isConfirm){
				  if (isConfirm) {
					  var query = {
								title : $('#feedform_context').val()
							};
						$
						.ajax({
							type : "POST",
							url : "insertFeed.do",
							data : query,
							dataType : "json",
							success : function(json) {
								swal("게시 완료!", "정상적으로 사연이 신청되었습니다. 검토 후 게시될 예정입니다 :)", "success");
								title : $('#feedform_context').val('');
							}
						});	  
				  } else {
				    swal("취소", "취소되었습니다 :) ", "error");
				  }
				});
		}
}