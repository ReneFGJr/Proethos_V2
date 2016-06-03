$("#bt007").click(function() {
	$("#pannel").hide();
	$("#ac007").slideToggle("slow", function() {
	});
});

/* Submit */
$("#bt007a").click(function() {
	var $v1 = $("#bt007v1").val();
	var $v2 = $("#bt007v2").val();
	var $text = $v1 + $v2;
	var $proto = $("#proto7").val();
	var $check = $("#check7").val();
	var $link = $("#link7").val();

	if ($v == "") {
		alert("inform an option");
	}
	if ($v != "") {

		$("#ac007").fadeIn("slow");
		$("#ac007").html('wait...');
		$.ajax({
			method : "POST",
			url : $link,
			data : {
				proto : $proto,
				check : $check,
				comment : $text
			}
		}).done(function(msg) {
			$("#ac007").html(msg);
		}).fail(function(jqXHR, textStatus) {
			alert("OPS" + textStatus);
			$("#ac007").html(msg);
		}).always(function(data) {
			//alert("FIND");
		});
	}
});

/* Cancel */
$("#bt007c").click(function() {
	$("#ac007").hide("slow");
	$("#pannel").fadeIn("slow");
});
