class Review < ApplicationRecord
    belongs_to :user
    belongs_to :car

    validates :user_id, presence: true
    validates :car_id, presence: true
    validates :content, presence: true
    validates :rating, presence: true
end



# validates :name, presence: true
# validates :name, uniqueness: true
# validates :age, numericality: {greater_than: 1, less_than: 99}
# validates :time, numericality: {greater_than: -1, less_than: 24}