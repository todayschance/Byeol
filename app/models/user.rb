class User < ActiveRecord::Base
	has_many :frees, dependent: :destroy
	has_many :reviews, dependent: :destroy

	before_save { self.email = email.downcase }
	before_create :create_remember_token
	has_secure_password
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 10 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }
	validates :password, length: { minimum: 6, maximum: 30 }

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.hash token
		Digest::SHA1.hexdigest token.to_s
	end

	private
		def create_remember_token
			self.remember_token = User.hash(User.new_remember_token)
		end
end
