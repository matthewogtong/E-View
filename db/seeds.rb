require 'faker'

User.destroy_all 
Review.destroy_all
Car.destroy_all
# Favorite.destroy_all
# Achievement.destroy_all


# 10.times do
#     User.create!(
#         name: Faker::Name.name, 
#         age: rand(18..40)
#         )
# end

Car.create!(
        make:'Honda', 
        model: 'Civic',
        description: 'R - Type'   
)

Car.create!(
    make: 'Honda', 
    model: 'Accord',
    description: 'Coup'  
)

Car.create!(
    make: 'Tesla', 
    model: 'S',
    description: 'Model S'  
)

Car.create!(
    make: 'Tesla', 
    model: 'X',
    description: 'Model X'
)



# 10.times do
#     Review.create!(
#         content:Faker::Restaurant.description ,
#         user_id: User.all.ids.sample,
#         car_id: Car.all.ids.sample
#     )
# end


# Faker::Internet.password(min_length: 10, max_length: 20)

# Faker::Internet.username(specifier: 5..8)

# Faker::Restaurant.description 