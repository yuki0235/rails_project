class User < ApplicationRecord
	validates :name, presence: true
	validates :birthday, presence: true
	validates :email, presence: true

	def name_valid

	end

	def birthday_valid
		
	end

	def email_valid
		
	end

end
