/* Submit */
$("#budget_post").click(function() {
	var $check = $("#proto_check").val();
	var $proto = $("#proto_budget").val();
	var $size = $("#budget_source").val();
	var $link = $("#link_budget").val();
	var $budget = $("#budget_vlr").val();
	var $source = $("#budget_type").val();
	
	if ($size != '') {
		if ($budget != '') {
			$.ajax({
				method : "POST",
				url : $link,
				data : {
					proto : $proto,
					check : $check,
					size : $size,
					comment : $source,
					budget : $budget
				}
			}).done(function(msg) {
				$("#budget").html(msg);
			}).fail(function(jqXHR, textStatus) {
				alert("OPS" + textStatus);
				$("#budget").html(msg);
			}).always(function(data) {
				//alert("FIND");
			});
		}
	}
});

/* Remove */
function remove_budget($proto, $title, $content, $id, $link, $check) {
	$("#myBudgetLabel").html($title);
	$("#myBudgetContent").html($content);
	$("#myBudgetContent").html($content);
	$("#myBudgetProto").val($proto);
	$("#myBudgetId").val($id);
	$("#myBudgetLink").val($link);
	$("#myBudgetCheck").val($check);
	$('#myBudget').modal("show");
}

/* Submit */
$("#myBudgetConfirm").click(function() {
	var $link = $("#myBudgetLink").val();
	var $text = "DEL";
	var $id = $("#myBudgetId").val();
	var $check = $("#myBudgetCheck").val();
	var $link = $("#myBudgetLink").val();
	var $proto = $("#myBudgetProto").val();
	var jqxhr = $.post($link, {
		id : $id,
		size : $id,
		proto : $proto
	}).done(function(data) {
		$("#budget").html(data);
	}).fail(function() {
		alert("error");
	});
});
