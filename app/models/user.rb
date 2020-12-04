class User < ApplicationRecord
    
    has_one :achievement
    has_many :favorites
    has_many :reviews, dependent: :destroy
    has_many :cars, through: :reviews
    has_many :cars, through: :favorites

    has_secure_password

end