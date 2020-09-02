class User < ApplicationRecord
    has_secure_password
    has_many :properties, foreign_key: :owner_id

    has_many :contacted_properties
    has_many :properties_contacted, :through => :contacted_properties, source: :property

    has_many :favorited_properties
    has_many :properties_favorited, :through => :favorited_properties, source: :property

    has_many :seen_properties
    has_many :properties_seen, :through => :seen_properties, source: :property

end
