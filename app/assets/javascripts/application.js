// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

	// Fixed Nav
	$fixed_nav = $('#nav_for_mobile');
	$(window).scroll(function() {
			var sclTop = $(this).scrollTop();
			if (sclTop > 26)
				$($fixed_nav).addClass('inverted')
			else 
				$($fixed_nav).removeClass('inverted')
			if (sclTop >= 4)
				$($fixed_nav).css('top', '0rem')
			else 
				$($fixed_nav).css('top', '-1.4rem')
	});

	readySemantic();
});

var readySemantic = function() {

	$messageClose = $('.message > .close');
	$rootSidebar = $('#root_sidebar');

	$($messageClose).on('click', function() {
		$(this).closest('#flash_message').fadeOut();
	});

	$($rootSidebar).sidebar('attach events', '.launch');

	// dropdowns
	$('.ui.dropdown').dropdown();
}