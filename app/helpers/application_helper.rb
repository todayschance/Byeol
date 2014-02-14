module ApplicationHelper

	# Returns the full title of head of html.
	def full_title page_title
		base_title = "별바다"
		if page_title.empty?
			"#{base_title}: 서평 커뮤니티"
		else
			"#{page_title} | #{base_title}"
		end
		
	end
end
