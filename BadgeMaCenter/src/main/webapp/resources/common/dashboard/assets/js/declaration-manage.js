var pre_count = 0;
var doing_count = 0;
manage = {
		declarationList : function() {
			pre_count = 0;
			var query = {		
                	};
        			$.ajax({
        				type : "GET",
        				url : "declarationLine.do",
        				dataType : "json",
        				success : function(json) {
        					var list = json.line_list;
        					var listLen = list.length;
        					$('#declarationline').html('<ul class="timeline" id="declarationline">');
        					for (var i = 0; i < listLen; i++) {
        						if (list[i].solve_state == 0) {
        							$('#declarationline').append('<li id="pre'+i+'" onclick="manage.preline_onclick('+i+');"><div class="timeline-badge danger"><i class="ti-check-box"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-danger">긴급 출동</span></div><div class="timeline-body"><p>'+list[i].declaration_date+'<br/>장소 : ' + list[i].class_location + '</p></div></div></li>');
        						} else if (list[i].solve_state == 1) {
        							$('#declarationline').append('<li class="timeline-inverted" id="doing'+i+'" onclick="manage.doingline_onclick(doing'+i+');"><div class="timeline-badge warning" ><i class="ti-gallery"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-warning">신고 처리중</span></div><div class="timeline-body"><p>'+list[i].class_location+'<br/>신고 처리 중입니다.</p></div><h6><i class="ti-time"></i></div></li>');
        						}
        					}
        					$('#declarationline').append("</ul>");
        				}
        			});
		},		
		
		preline_onclick : function(id) {
			
			$('#pre'+id).html('<ul class="timeline" id="declarationline"><li class="timeline-inverted" id="doing'+id+'" onclick="manage.onclick_event();"><div class="timeline-badge warning" ><i class="ti-gallery"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-warning">Taking Job</span></div><div class="timeline-body"><p><br/>신고 처리 중입니다.</p></div><h6><i class="ti-time"></i>11 hours ago via Twitter</h6></div></li>');
		},
		doingline_onclick : function() {
			$('#preline').append('<li><div class="timeline-badge danger"><i class="ti-check-box"></i></div><div class="timeline-panel"><div class="timeline-heading"><span class="label label-danger">긴급 출동</span></div><div class="timeline-body"><p>16.10.27 10:20<br/> 긴급 출동 요함</p></div></div></li>');
			$('#doing1').html('');
		}
}