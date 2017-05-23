class Search < ActiveRecord::Base
	has_many :tasks
	
	def self.search(search)
		find('term' == "#{search}")
	end





end