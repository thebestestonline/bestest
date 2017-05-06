class Search < ActiveRecord::Base
	def bests
		@bests ||= find_bests
	end

	def find_bests
		Best.find(:all, :conditions => keyword_conditions)
	end

	def keyword_conditions
		[“products.name LIKE ?” , “%#{keywords}%” , “%#{keywords}%” ] unless keywords.blank
	end

end