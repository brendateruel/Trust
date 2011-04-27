class Ism < ActiveRecord::Base
  MAN = "man"
  WOMAN = "woman"
  
  validates :description, :gender, :category, :presence => true
  validates :description, :length => { :maximum => 140 }
  validates :description, :uniqueness => true
  
  def self.random(conditions = {})
    ism_count = Ism.where(conditions).count
    Ism.where(conditions).first(:offset => rand(ism_count))
  end
  
  def woman?
    self.gender == WOMAN
  end
end
