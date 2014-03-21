$(document).ready(function() {
	// Dropdown
	$('.ui.dropdown').dropdown();

	// Pop up
	// Signin popup
	$email_popup = $('#email_popup')
	$($email_popup).popup({
		content: '열쇠글은 6자 이상이여야 합니다.',
		target: '#email_popup',
		position: 'bottom right',
		on: 'focus'
	});
});
