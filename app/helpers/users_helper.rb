module UsersHelper
	def gravatar_for(user, options={})
		options.store("alt", "gravatar image")
		size = options[:size]
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		return image_tag(gravatar_url, options)
	end
end
