module ApplicationHelper

	# Returns the full title of head of html.
	def full_title page_title
		base_title = "별바다"
		if page_title.empty?
			"#{base_title}: 읽고, 나눕시다."
		else
			"#{page_title} | #{base_title}"
		end
		
	end
end
