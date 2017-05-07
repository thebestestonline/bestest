class Search < ActiveRecord::Base
	has_many :tasks
	
	def self.search(search)
	  where("term LIKE ?", "%#{search}%") 
	end





end