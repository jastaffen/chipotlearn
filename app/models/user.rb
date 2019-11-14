class User < ApplicationRecord
    has_one :bag
    validates :username, presence: true 
    validates :username, uniqueness: { case_sensitive: false }
    has_secure_password

   
end
