$("#bt009").click(function() {
	$("#pannel").hide();
	$("#ac009").slideToggle("slow", function() {
	});
});

/* Submit */
$("#bt009a").click(function() {
	var $text = $("#bt009t").val();
	var $proto = $("#proto9").val();
	var $check = $("#check9").val();
	var $link = $("#link9").val();

	$("#ac009").hide("slow");
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
	}).fail(function(jqXHR, textStatus) {
		alert("OPS" + textStatus);
		$("#pannel").html(msg);
	}).always(function(data) {
		//alert("FIND");
	});
});

/* Cancel */
$("#bt009c").click(function() {
	$("#ac009").hide("slow");
	$("#pannel").fadeIn("slow");
});
