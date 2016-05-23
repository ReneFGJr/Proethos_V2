/* Submit */
$("#bt001a").click(function() {
	var $text = $("#bt002t").val();
	var $proto = $("#proto2").val();
	var $check = $("#check2").val();
	var $link = $("#link2").val();
	
	$("#ac002").hide("slow");
	$("#pannel").fadeIn("slow");
	$("#pannel").html('wait...');
	window.location.assign($link);
});

/* Cancel */
$("#bt001c").click(function() {
	$("#ac002").hide("slow");
	$("#pannel").fadeIn("slow");
});
