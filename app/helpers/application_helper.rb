module ApplicationHelper

	# Returns the full title of head of html.
	def full_title page_title
		base_title = "별바다"
		if page_title.empty?
			"#{base_title}: 커뮤니티"
		else
			"#{page_title} | #{base_title}"
		end
	end

	def short_title page_short_title
		if !page_short_title.empty?
			page_short_title.to_s
		else
			"별바다"
		end
	end

	# Returns "active" when it's current page.
	def active_link_to(name, options={}, html_options={}, &block)

		html_options[:class] = html_options[:class].to_s + " active" if current_page?(options.to_s)

		link_to name, options, html_options, &block
	end

	def active_iconic_link_to(name, icon, options={}, html_options={}, &block)
		icon_tag = "<i class=\"#{icon} icon\"></i>" + name
		active_link_to icon_tag.html_safe, options, html_options, &block
	end
end
