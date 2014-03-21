class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	has_secure_password
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 10 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }
	validates :password, length: { minimum: 6, maximum: 30 }
end
