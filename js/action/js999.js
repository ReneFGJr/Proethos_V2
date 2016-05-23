$("#bt999").click(function() {
	$("#pannel").hide();
	$("#ac999").slideToggle("slow", function() {
	});
});

/* Submit */
$("#bt999a").click(function() {
	var $text = $("#bt999t").val();
	var $proto = $("#proto9").val();
	var $check = $("#check9").val();
	var $link = $("#link9").val();

	$("#ac999").hide("slow");
	$("#pannel").fadeIn("slow");
	$("#pannel").html('wait...');
	alert("OLA" +$link);
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
$("#bt999c").click(function() {
	$("#ac999").hide("slow");
	$("#pannel").fadeIn("slow");
});
