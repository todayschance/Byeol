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

	# Returns "active" when it's current page.
	def link_to_active(name, options={}, html_options={}, &block)

		html_options[:class] = html_options[:class].to_s + " active" if current_page?(options.to_s)

		link_to name, options, html_options, &block
	end

end
