class Search < ActiveRecord::Base
	has_many :tasks
	
	def index
		if params[:search]
			@bests = Best.find(:all, :conditions => [‘name LIKE ?’, "%#{params[:search]}%"])
		else
			@bests = Best.find(:all)
		end
	end




end