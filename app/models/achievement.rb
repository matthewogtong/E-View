class Achievement < ApplicationRecord
    has_one :user
    has_many :reviews, through: :user
end