$(document).ready(function() {
	// Dropdown
	$('.ui.dropdown').dropdown();

	// Pop up
	// Signin popup
	$('#password_popup').popup({
		content: '열쇠글은 6자 이상이여야 합니다.',
		target: '#password_popup',
		position: 'bottom right',
		on: 'focus'
	});

	// message
	$('.message .close').on('click', function() {
		$(this).closest('.message').fadeOut();
	});
});
