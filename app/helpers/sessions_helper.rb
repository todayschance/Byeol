module SessionsHelper
	def sign_in(user)
		remember_token = User.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.encrypt(remember_token))
		self.current_user = user
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		remember_token = User.encrypt(cookies[:remember_token])
		@current_user ||= User.find_by(remember_token: remember_token)
	end

	def current_user?(user)
		user == current_user
		
	end

	def signed_in?
		!current_user.nil?
	end

	def sign_out
		current_user.update_attribute(:remember_token, User.encrypt(User.new_remember_token))
		cookies.delete(:remember_token)
		self.current_user = nil
	end

	def store_location
		session[:return_to] = request.url if request.get?
	end

	def redirect_back_or(default)
		redirect_to(session[:return_to] || default)
		session.delete(:return_to)
	end

	# layouts
	def field_for(target, icon, title, symbol, type, placeholder="")
		output = '<div class="field">'
		output << target.label(symbol, title)
		output << '<div class="ui left icon input">'
		output << icon_tag(icon)
		output << target.text_field(symbol, type: type, placeholder: placeholder)
		output << '</div></div>'
		return output.html_safe
	end

	def described_field_for(target, icon, title, symbol, type, placeholder="", describe)
		output = '<div class="grid-r"><div class="field grid-1-2">'
		output << target.label(symbol, title)
		output << '<div class="ui left icon input">'
		output << icon_tag(icon)
		output << target.text_field(symbol, type: type, placeholder: placeholder)
		output << '</div></div><div class="mobile_text_right grid-1-2"><small>'
		output << describe
		output << "</small></div></div>"
		return output.html_safe
	end

end
