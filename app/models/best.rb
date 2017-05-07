class Best < ActiveRecord::Base
  belongs_to :user


#GET search  
  def self.search(search)
    where("term LIKE ?", "%#{search}%") 
  end
  
  
  
end