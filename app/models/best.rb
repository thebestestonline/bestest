class Best < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  


  
  validates :term, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :company_name, presence: true
  validates :web_address, presence: true


#GET search  
  def self.search(search)
    where("term LIKE ?", "%#{search}%") 
  end






  
  
  
end