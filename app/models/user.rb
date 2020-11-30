class User < ApplicationRecord
    has_one :status
    has_many :favorites
    has_many :reviews
    has_many :cars, through: :reviews

end