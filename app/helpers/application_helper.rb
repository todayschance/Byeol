module ApplicationHelper
	def html_title(page_title)
		base_title = "동성 서평"
		if page_title.empty?
			return "서평 커뮤니티"
		else
			return "#{page_title} | #{base_title}"
		end
	end

	def active_link_to(name, options={}, html_options={}, &block)
		active_clsss = "active"
		if current_page?(options.to_s)
			html_options[:class] = html_options[:class].to_s + " #{active_clsss}"
		end
		return link_to(name, options, html_options, &block)
	end

# Only Icon
	def icon_link_to(icon, options={}, html_options={}, &block)
		out_tag = icon_tag(icon)
		active_link_to out_tag.html_safe, options, html_options, &block
	end

# Icon and Text
	def iconic_link_to(name, icon, options={}, html_options={}, &block)
		out_tag = icon_tag(icon) + name
		active_link_to out_tag.html_safe, options, html_options, &block
		
	end

	def icon_tag icon
		"<i class=\"#{icon} icon\"></i>".html_safe if !icon.empty?
	end

end
