/* Submit */
$("#country_post").click(function() {

	var $check = $("#proto_check").val();
	var $proto = $("#proto_country").val();
	var $size = $("#country_source").val();
	var $link = $("#link_country").val();
	var $country = $("#country_nr").find(":selected").val();
	var $source = $("#country_type").val();

	if ($size != '') {
		if ($country != '') {
			$.ajax({
				method : "POST",
				url : $link,
				data : {
					proto : $proto,
					check : $check,
					size : $size,
					comment : $source,
					country : $country
				}
			}).done(function(msg) {
				$("#country").html(msg);
			}).fail(function(jqXHR, textStatus) {
				alert("OPS" + textStatus);
				$("#country").html(msg);
			}).always(function(data) {
				//alert("FIND");
			});
		}
	}
});

/* Remove */
function remove_country($proto, $title, $content, $id, $link, $check) {
	$("#myModalLabel").html($title);
	$("#myModalContent").html($content);
	$("#myModalContent").html($content);
	$("#myModalProto").val($proto);
	$("#myModalId").val($id);
	$("#myModalLink").val($link);
	$("#myModalCheck").val($check);
	$('#myModalCountry').modal("show");
}

/* Submit */
$("#myCountryConfirm").click(function() {
	var $link = $("#myModalLink").val();
	var $text = "DEL";
	var $id = $("#myModalId").val();
	var $check = $("#myModalCheck").val();
	var $link = $("#myModalLink").val();
	var $proto = $("#myModalProto").val();
	var jqxhr = $.post($link, {
		id : $id,
		size : $id,
		proto : $proto
	}).done(function(data) {
		$("#country").html(data);
	}).fail(function() {
		alert("error");
	});
});
