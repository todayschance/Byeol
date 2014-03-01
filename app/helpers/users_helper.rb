module UsersHelper
	# Returns the Gravatar img for the given user.
	def gravatar_for user, class_options={}
		g_id = Digest::MD5::hexdigest user.email.downcase
		g_url = "https://secure.gravatar.com/avatar/#{g_id}"
		image_tag g_url, alt: user.name,
										 class: class_options
	end

	def icon_for icon
		tag :i, class: "ui icon #{icon}"
	end
end