module ApplicationHelper

	# Returns the full title of head of html.
	def html_title title
		base_title = "별바다"
		if title.empty?
			"#{base_title}: 커뮤니티"
		else
			"#{title} | #{base_title}"
		end
	end

	# Returns title or uplink for mobile nav
	def nav_title title
		if title.empty?
			return
		else
			content_tag :div, title, class: "item"
		end
	end

	# Returns "active" when it's current page.
	def active_link_to(name, options={}, html_options={}, &block)

		html_options[:class] = html_options[:class].to_s + " active" if current_page?(options.to_s)

		link_to name, options, html_options, &block
	end

	def active_iconic_link_to(name, icon, options={}, html_options={}, &block)
		out_tag = icon_tag(icon) + name
		active_link_to out_tag.html_safe, options, html_options, &block
	end

	def icon_tag icon
		"<i class=\"#{icon} icon\"></i>" if !icon.empty?
	end
end
