class Ism < ActiveRecord::Base
  
  validates :description, :gender, :category, :presence => true
  validates :description, :length => { :maximum => 140 }
  validates :description, :uniqueness => true
  
  def self.random
    ids = connection.select_all("SELECT id FROM isms")
    find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
  end

end
