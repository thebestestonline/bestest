class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_many :bests
  
  
  #GET search  
  def search
    find(:all, :conditions => ['term LIKE ?', "%#{search}%"])
  end
  

  
  
end
