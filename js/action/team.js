/* Submit */
$("#new_research").click(function() {
	$("#team_form").toggle();
	$("#team_new").toggle();
});

/* Cancel */
$("#team_cancel").click(function() {
	$("#team_form").toggle();
	$("#team_new").toggle();
});

/* Remove */
function remove_team($id)
	{
		alert("remove");
	}

/* Submit */
$("#team_submit").click(function() {
	var $text = $("#team_email").val();
	var $proto = $("#proto").val();
	var $check = $("#check").val();
	var $link = $("#link").val();
	if ($text != '')
		{
			$.ajax({
			method : "POST",
			url : $link,
			data : {
				proto : $proto,
				check : $check,
				comment : $text
			}
		}).done(function(msg) {
			$("#team").html(msg);
		}).fail(function(jqXHR, textStatus) {
			alert("OPS" + textStatus);
			$("#team").html(msg);
		}).always(function(data) {
			//alert("FIND");
		});
	}
});
