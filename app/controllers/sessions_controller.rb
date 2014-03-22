class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in(user)
			redirect_to root_path
		else
			flash[:error] = '옳지 않은 이메일/열쇠글입니다.'
			render 'new'
		end
	end
	
	def destroy
		sign_out
		flash[:success] = '잘 나갔심다!'
		redirect_to root_url
	end
end
