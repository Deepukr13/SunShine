class Person < ActiveRecord::Base
  attr_accessible :address, :blood, :dob, :email, :firstName, :image, :lastName, :last_given, :phone, :weight
  
  validates_presence_of :firstName, :blood, :address ,:email 
   
   validates_uniqueness_of :email ,:phone  

def self.searchQuery(search)
  if search
    find(:all, :conditions => ['blood LIKE ? OR firstName LIKE ?',"%#{search}%","%#{search}%"])
  else
    find(:all)
  end
end
  
  
end
