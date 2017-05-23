class Best < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  scope :descending, -> { reorder(cached_weighted_average: :desc) }
  
  has_attached_file   :avatar,
                styles: { medium: "300x300>", thumb: "100x100>" },
           default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, 
                        content_type: /\Aimage\/.*\z/
  


  
  validates :term, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :company_name, presence: true
  validates :web_address, presence: true
  validates :email, presence: true


#GET search  
  def self.search(search)
    where("term LIKE ?", "#{search}") 
  end






  
  
  
end