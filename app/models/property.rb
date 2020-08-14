class Property < ApplicationRecord
  belongs_to :user

  has_many :contacted_properties
  has_many :users, :through => :contacted_properties 

  has_many :favorited_properties
  has_many :users, :through => :favorited_properties
  
  has_many :seen_properties
  has_many :users, :through => :seen_properties 
end
