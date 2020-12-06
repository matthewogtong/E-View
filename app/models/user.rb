class User < ApplicationRecord
    
    has_one :achievement, dependent: :destroy
    has_many :favorites
    has_many :reviews, dependent: :destroy
    has_many :cars, through: :reviews
    # has_many :cars, through: :favorites

    has_secure_password
end

# @user.cars
# @user.favorites.each do |favorite|
#     favorite.car
# end
# aliasing activerecord relationships 
