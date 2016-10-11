$(document).ready(function() {
	console.log("hey bitches!")
	
	$("#fam-members").hide()
	$("#squad-members").hide()
	
	$("#family").click(function() {
		$("#fam-members").show()
	});
	
	$("#squad").click(function() {
		$("#squad-members").show()
	});
});
