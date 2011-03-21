class Ism < ActiveRecord::Base
  
  validates :description, :length => { :maximum => 140 }
  validates :title, :uniqueness => true
  	
end
