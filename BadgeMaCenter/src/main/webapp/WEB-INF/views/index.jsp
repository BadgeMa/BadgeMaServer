<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script>
	$(document).ready(function() {
		function doloop() {
			$.ajax({
				url : 'http://localhost:8080/getQuote.do',
				method : 'POST',
				async : true, // by default, it's async, but...
				  timeout: 10000
			// IMPORTANT! this is a 10 seconds timeout
			}).done(function(eventList) {
				console.log("success:" + eventList);
				$(".node").html(eventList);
			}).always(doloop);
		}
		$(".startBtn").click(function() {
			$(".node").append("created!!<br>");
			doloop();
		});
	});
</script> 
<title>Hello?</title>
</head>
<body>
	<input class="startBtn" type="button" value="Start">
	</input>
	<div class="node"></div>
</body>
</html>