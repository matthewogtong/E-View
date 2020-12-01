require 'faker'

User.destroy_all 
Review.destroy_all
Car.destroy_all
# Favorite.destroy_all
# Achievement.destroy_all


10.times do
    User.create!(
        name: Faker::Name.name, 
        age: rand(18..40)
        )
end

10.times do
    Car.create!(
        manufacturer: Faker::Vehicle.manufacture, 
        model: Faker::Vehicle.model,
        description: Faker::Vehicle.standard_specs
        )
end

10.times do
    Review.create!(
        content:Faker::Restaurant.description ,
        user_id: User.all.ids.sample,
        car_id: Car.all.ids.sample
    )
end


# Faker::Internet.password(min_length: 10, max_length: 20)

# Faker::Internet.username(specifier: 5..8)

# Faker::Restaurant.description 