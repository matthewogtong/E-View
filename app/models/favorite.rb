class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :car


    validates :user_id, presence: true
    validates :car_id, presence: true
    validates :car_id, uniqueness: true
    
end # end of class