class UserMailer < ActionMailer::Base
  default from: "web_master@byeolbada.herokuapp.com"

  def welcome_email user
  	@user = user
  	@url = 'http://byeolbada.herokuapp.com/'
  	mail to: @user.email, subject: "별바다에 오신 것을 환영합니다!"
  end
end
