class Book < ActiveRecord::Base
	has_many :reviews
	self.primary_key = "ISBN"

	validates :ISBN, presence: true
end