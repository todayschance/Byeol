$(document).ready(function() {
	// Dropdown
	$('.ui.dropdown').dropdown();

	// message
	$('.message .close').on('click', function() {
		$(this).closest('.message').fadeOut();
	});
});
