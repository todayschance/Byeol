class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
    redirect_to root_path if signed_in?
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def destroy
    @target = User.find(params[:id])
    @target.destroy
    flash[:success] = "#{@target.name}을(를) 지웠습니다!"
    redirect_to users_path
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = "제대로 고쳤습니다!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
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

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "로그인해야 합니다."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end