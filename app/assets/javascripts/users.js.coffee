# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ()->

# users#new, users#edit, sessions#new
	$('#password_popup').popup
		content: '열쇠글은 6자 이상이여야 합니다.',
		target: '#password_popup',
		position: 'top center',
		variation: 'inveted',
		on: 'focus'


# users#show
	$('#admin_label').popup
		content: '관리자'
