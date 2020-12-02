class User < ApplicationRecord
    
    has_one :status
    has_many :favorites
    has_many :reviews, dependent: :destroy
    has_many :cars, through: :reviews

    has_secure_password

end