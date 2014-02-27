class UsersController < ApplicationController
  def new
    redirect_to root_path if signed_in?
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.new(user_params)
    if @user.save
      signed_in @user
      flash[:success] = "축하드립니다! 별바다에 가입하셨습니다!"
      redirect_to @user
    else
      render action: 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end