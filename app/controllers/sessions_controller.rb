class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by email: params[:session][:email].downcase
		if user && user.authenticate(params[:session][:password])		
			sign_in user
			redirect_to user
		else
			flash[:error] = '열쇠글이 맞지 않거나 없는 계정입니다.'
			render 'new'
		end
	end

	def destroy
		
	end
end
