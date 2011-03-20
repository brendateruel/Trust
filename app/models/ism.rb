class Ism < ActiveRecord::Base
  has_many :line_items
  
  validates :title, :description, :gender, :category => true
  validates :description, :length => { :maximum => 140 }
  validates :title, :uniqueness => true
  
  categories = ['Fashion', 'Food and Drink', 'Money', 'Health']
	
end
