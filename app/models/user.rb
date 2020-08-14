class User < ApplicationRecord
    has_secure_password

    has_many :contacted_properties
    has_many :properties, :through => :contacted_properties

    has_many :favorited_properties
    has_many :properties, :through => :favorited_properties

    has_many :seen_properties
    has_many :properties, :through => :seen_properties

end
