$("#survey_yes").click(function() {
	send_answer(1);
});
$("#survey_no").click(function() {
	send_answer(0);
});

/* Submit */
function send_answer($answ)
	{
	var $proto = $("#protoH").val();
	var $link = $("#linkH").val();
	var $check = $("#checkH").val();
	
	$("#survey").html('wait...');
	$.ajax({
		method : "POST",
		url : $link,
		data : {
			proto : $proto,
			check : $check,
			comment : $answ
		}
	}).done(function(msg) {
		$("#survey").html(msg);
	}).fail(function(jqXHR, textStatus) {
		alert("OPS " + textStatus + " - "+jqXHR);
		$("#survey").html(msg);
	}).always(function(data) {
		//alert("FIND");
	});
}
