module SemanticUiHelper

# Add 'active' class if the link points current page
	def active_link_to(name, options={}, html_options={}, &block)
		active_class = "active"
		if current_page?(options.to_s)
			html_options[:class] = html_options[:class].to_s + " #{active_class}"
		end
		return link_to(name, options, html_options, &block)
	end

# Header links
	def smart_link_to(icon, options={}, where={}, html_options={}, &block)
		active_class = "active"
		out_tag = icon_tag(icon)
		if current_page?(controller: where[:controller].to_s)
			html_options[:class] = html_options[:class].to_s + " #{active_class}"
		end
		return link_to(out_tag.html_safe, options, html_options, &block)
	end

# Header user link
	def link_to_user(name, icon, options={}, html_options={}, &block)
		active_class = "active"
		out_tag = icon_tag(icon) + name
		if current_page?('/users/#{current_user.id}')
			html_options[:class] = html_options[:class].to_s + " #{active_class}"
		end
		return link_to(out_tag.html_safe, options, html_options, &block)
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
