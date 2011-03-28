class Ism < ActiveRecord::Base
  
  validates :description, :gender, :category, :presence => true
  validates :description, :length => { :maximum => 140 }
  validates :description, :uniqueness => true
  	
end
