$("#bt003").click(function() {
	$("#pannel").hide();
	$("#ac003").slideToggle("slow", function() {
	});
});

/* Submit */
$("#bt003a").click(function() {
	var $text = $("#bt003t").val();
	var $proto = $("#proto3").val();
	var $check = $("#check3").val();
	var $link = $("#link3").val();
	
	$("#ac003").hide("slow");
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
$("#bt003c").click(function() {
	$("#ac003").hide("slow");
	$("#pannel").fadeIn("slow");
});
