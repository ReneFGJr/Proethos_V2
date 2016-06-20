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
function remove_team($proto,$title,$content,$id,$link,$check)
	{
		$("#myModalLabel").html($title);
		$("#myModalContent").html($content);
		$("#myModalContent").html($content);
		$("#myModalProto").val($proto);
		$("#myModalId").val($id);
		$("#myModalLink").val($link);
		$("#myModalCheck").val($check);
		$('#myModal').modal("show");
	}

/* Submit */
$("#team_submit").click(function() {
	var $text = $("#team_email").val();
	var $proto = $("#proto").val();
	var $check = $("#check").val();
	var $link = $("#link").val();
	var $desc = $("#desc").val();
	
	if ($text != '')
		{
			var jqxhr = $.post($link, { proto : $proto, check : $check, comment : $text })
			.done(function( data ) {
				$("#team").html(data);
			}).fail(function() {
				alert("error");
			});			
		}
});

/* Submit */
$("#myModalConfirm").click(function() {
	var $text = "DEL";
	var $id = $("#myModalId").val();
	var $check = $("#myModalCheck").val();
	var $link = $("#myModalLink").val();
	var $proto = $("#myModalProto").val();

	$.ajax({
		method : "POST",
		url : $link,
		data : {
			id : $id,
			proto : $proto,
			check : $check,
			comment : $text
		}
	}).done(function(msg) {
		$("#team").html(msg);
	});
});
