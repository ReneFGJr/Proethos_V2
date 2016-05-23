$("#bt002").click(function() {
	$("#pannel").hide();
	$("#ac002").slideToggle("slow", function() {
	});
});

/* Submit */
$("#bt002a").click(function() {
	var $text = $("#bt002t").val();
	var $proto = $("#proto2").val();
	var $check = $("#check2").val();
	var $link = $("#link2").val();
	
	$("#ac002").hide("slow");
	$("#pannel").fadeIn("slow");
	$("#pannel").html('wait...');

	$.ajax({
		method : "POST",
		url : $link,
		data : {
			proto : $proto,
			check : $check,
			comment : $text
		}
	}).done(function(msg) {
		$("#pannel").html(msg);
	});
});

/* Cancel */
$("#bt002c").click(function() {
	$("#ac002").hide("slow");
	$("#pannel").fadeIn("slow");
});
