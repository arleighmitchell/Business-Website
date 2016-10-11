$(document).ready(function() {
	console.log("hey bitches!")
	
	$("#fam-members").hide()
	$("#squad-members").hide()
	
	$("#family").click(function() {
		$("#fam-members").show()
		$("#family").hide()
	});
	
	$("#squad").click(function() {
		$("#squad-members").show()
		$("#squad").hide()
	});
});
