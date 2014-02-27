class SessionsController < ApplicationController
	def new
		redirect_to root_path if signed_in?
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
		flash[:success] = '정상적으로 나갔습니다.'
		sign_out
		redirect_to root_path
	end
end
