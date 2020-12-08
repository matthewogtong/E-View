class User < ApplicationRecord
    
    has_one :achievement, dependent: :destroy
    has_many :favorites
    has_many :reviews, dependent: :destroy
    has_many :cars, through: :reviews
    # has_many :cars, through: :favorites

    has_secure_password

    validates :name, presence: true
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :age, numericality: {greater_than: 17, less_than: 99}
end

# @user.cars
# @user.favorites.each do |favorite|
#     favorite.car
# end
# aliasing activerecord relationships 
