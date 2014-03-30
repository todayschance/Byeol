module ApplicationHelper
	def html_title(page_title)
		base_title = "동성 서평"
		if page_title.empty?
			return "서평 커뮤니티"
		else
			return "#{page_title} | #{base_title}"
		end
	end
end
