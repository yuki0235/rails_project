class User < ApplicationRecord
	before_save :convert_name

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :birthday, presence: true
	validates :email, presence: true

	attr_accessor :first_name, :last_name

	def intialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def name_valid

	end

	def birthday_valid
		
	end

	def email_valid
		
	end

	def convert_date(date)
		Date.parse(date).strftime('%Y月%m月%d日')
	end

	private

	def convert_name
		self.name = [last_name, first_name].join(' ')
	end


end
