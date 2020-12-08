require 'faker'
Achievement.destroy_all
User.destroy_all 
Review.destroy_all
Car.destroy_all
Favorite.destroy_all


#testuser

User.create!(
    name: "kanye",
    username: "Yeezy",
    password: "kanye",
    age:42,
    img_url: "https://upload.wikimedia.org/wikipedia/commons/0/0f/Kanye_West_at_the_2009_Tribeca_Film_Festival-2_%28cropped%29.jpg"
)

Achievement.create!(
    next_badge_achievement: "", 
    badge: "", 
    points: 10, 
    user_id: 1
)

User.create!(
    name: "jon",
    username: "jon",
    password: "jon",
    age:21,
    img_url: "https://ca.slack-edge.com/T02MD9XTF-U01991STABB-9383a42ee985-512"
)
Achievement.create!(
    next_badge_achievement: "", 
    badge: "", 
    points: 8, 
    user_id: 2
)

User.create!(
    name: "greg",
    username: "greg",
    password: "greg",
    age: 25,
    img_url: "https://ca.slack-edge.com/T02MD9XTF-U01991STABB-9383a42ee985-512"
)
Achievement.create!(
    next_badge_achievement: "", 
    badge: "", 
    points: 5, 
    user_id: 3
)

User.create!(
    name: "elon",
    username: "X Æ A-12",
    password: "elon",
    age: 35,
    img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Elon_Musk_and_Hans_Koenigsmann_at_the_SpaceX_CRS-8_post-launch_press_conference_%2826223624532%29_%28cropped%29.jpg/300px-Elon_Musk_and_Hans_Koenigsmann_at_the_SpaceX_CRS-8_post-launch_press_conference_%2826223624532%29_%28cropped%29.jpg"
)

Achievement.create!(
    next_badge_achievement: "", 
    badge: "", 
    points: 4, 
    user_id: 4
)



# Audi #1
Car.create!(
    make: "Audi", 
    model: "E-Tron" ,
    description: "The Audi e-tron is the first full-electrical model from the brand with the four rings. The sporty SUV combines the space and comfort of a typical luxury class automobile with a range suitable for everyday use, catapulting the driver into a new era with the electrical all-wheel drive.",  
    image: "https://www.audiusa.com/dam/nemo/us/models/e-tron/e-tron/header-transition/1920x1080/1920x1080_etron-6-min.jpg?output-format=webp&downsize=1920px:*",
    rating: 0
)

# BMW #2
Car.create!(
    make:"BMW" , 
    model: "i3" ,
    description: "The BMW i3 is a B-segment, high-roof hatchback manufactured and marketed by BMW with an electric powertrain using rear wheel drive via a single-speed transmission and an underfloor Li-ion battery pack and an optional range-extending petrol engine." ,  
    image: "https://i0.wp.com/rayhaber.com/wp-content/uploads/2020/06/bmw-i3-elektrikli-surus-keyfini-yuksek-performansla-birlestiriyor.jpg?fit=1424%2C800&ssl=1",
    rating: 0
    
)

# Chevrolet #3
Car.create!(
    make:"Chevrolet" , 
    model: "Bolt" ,
    description: "The 2020 Chevy Bolt is an all-electric hatchback with a long driving range, spacious cabin, and affordable price tag. Capable of traveling up to 259 miles on a single charge and starting at less than $40,000." ,  
    image: "https://www.waldorf-chevy.com/assets/shared/CustomHTMLFiles/Responsive/MRP/Chevrolet/2019/Bolt-EV/images/2019-Chevrolet-Bolt-EV-01.jpg",
    rating: 0
    
)

# Hyundai #4&5
Car.create!(
    make: "Hyundai", 
    model: "Ioniq" ,
    description:"The Hyundai Ioniq is a compact five door liftback manufactured and marketed by Hyundai. The nameplate Ioniq is a portmanteau of ion and unique. It is the second automobile, after the Volkswagen Golf, to be offered in hybrid, plug-in hybrid, and all-electric variants." ,  
    image: "https://ev-database.org/img/auto/Hyundai_IONIQ_Electric_2020/Hyundai_IONIQ_Electric_2020-01@2x.jpg",
    rating: 0
)
Car.create!(
    make: "Hyundai", 
    model: "Kona" ,
    description:"The Hyundai Kona comes with a 147-horsepower 2.0-liter four-cylinder engine, a six-speed automatic transmission, cloth seats, a 7-inch touch screen, Apple CarPlay, Android Auto, two USB ports, Bluetooth, and six speakers." ,  
    image: "https://cdn.static-carindigo.com/images/content/07fa88a169c392498afaad34d60ecb81.jpeg",
    rating: 0
)

# Jaguar #6
Car.create!(
    make: "Jaguar", 
    model: "I-Pace" ,
    description: "The I-Pace uses two concentric electric motors, one on each axle for permanent four-wheel drive, producing 394bhp and 513lb ft of torque, delivered through a single-speed gearbox. The lithium-ion battery, placed under the floor is sized at 90kWh, good for a claimed 298-mile range." ,  
    image: "https://ev-database.org/img/auto/Jaguar_I-Pace/Jaguar_I-Pace-01.jpg",
    rating: 0
)

# Kia #7&8
Car.create!(
    make: "Kia", 
    model: "Nira" ,
    description: "The Nira manages 52 mpg in the city in its hybrid variant and delivers an EPA-rated 239 miles of electric range in EV form",  
    image: "https://media.ed.edmunds-media.com/kia/niro-ev/2019/oem/2019_kia_niro-ev_4dr-suv_ex-premium_fq_oem_2_1600.jpg",
    rating: 0
)

Car.create!(
    make: "Kia", 
    model: "Soul" ,
    description:"The Kia Soul is a subcompact crossover SUV manufactured and marketed worldwide by Kia Motors. Designed at Kia's design center in California, the Soul debuted at the 2008 Paris Motor Show and is manufactured in South Korea." ,  
    image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-kia-soul-ev-drive-104-1554317525.jpg",
    rating: 0
)

# Nissan #9 &10
Car.create!(
    make: "Nissan", 
    model: "Leaf" ,
    description: "Nissan LEAF is a pure electric vehicle powered only by electricity, and its battery can be charged at home. The electric motor that replaces the conventional engine offers a totally different driving experience with quiet and responsive acceleration.",  
    image: "https://cdn.vox-cdn.com/thumbor/3FTuKl7FHP5sbKiR-6WnZ4XBdrw=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/13672295/2019_Nissan_LEAF_24.jpg",
    rating: 0
)

Car.create!(
    make: "Nissan", 
    model: "Leaf Plus" ,
    description: "The Leaf Plus is powered by a 62-kilowatt-hour lithium-ion battery that sends 214 horsepower and 250 pound-feet of torque through a single-speed transmission. It takes about 7 seconds for the Plus to hit 60 miles per hour -- roughly a second quicker than the standard Leaf.",  
    image: "https://cnet2.cbsistatic.com/img/446RoFPuMPeuvNtQ9-8urF0Xhv4=/1200x675/2019/04/06/2315f6fd-f122-4df7-8e62-9aedec29c03b/2019-nissan-leaf-plus-27.jpg",
    rating: 0
)

# Porsche #11
Car.create!(
    make: "Porsche", 
    model: "Taycan",
    description: "The 2020 Porsche Taycan (pronounced tie-kahn) delivers incredible acceleration, precise handling, and aggressive styling. ... The Taycan is the first production electric vehicle to use a two-speed transmission and an 800-volt electrical system, which allow for quicker acceleration and shorter recharge times, respectively." ,  
    image: "https://electrade.app/img/blog/comparison/porsche-taycan-vs-mission-e-concept-comparison-3.png",
    rating: 0
)

# Tesla #12,13,14
Car.create!(
    make: "Tesla", 
    model: "Model 3" ,
    description: "The Model 3 is an electric four-door fastback sedan developed by Tesla. The Model 3 Standard Range Plus version delivers an EPA-rated all-electric range of 263 miles (423 km) and the Long Range versions deliver 353 miles (568 km)" ,  
    image: "https://electrek.co/wp-content/uploads/sites/3/2020/10/Tesla-Model-3-2021-refresh.jpg?quality=82&strip=all",
    rating: 0
)

Car.create!(
    make: 'Tesla', 
    model: 'Model S',
    description: "The Model S sets an industry standard for performance and safety. Tesla's all-electric powertrain delivers unparalleled performance in all weather conditions – with Dual Motor All-Wheel Drive, adaptive air suspension and ludicrous acceleration.",
    image: "https://tesla-cdn.thron.com/delivery/public/image/tesla/35d15221-0a5f-4dce-b484-a4db67b81dd2/bvlatuR/std/0x0/model-s@2x",
    rating: 0
)

Car.create!(
    make: 'Tesla', 
    model: 'Model X',
    description: "The Model X is only available as the Long Range Plus with an estimated EPA range of 371 miles (597 km) and the Performance model with an estimated EPA range of 341 miles (549 km).",
    image: "https://www.tesla.com/sites/default/files/modelsx-new/social/model-x-social.jpg",
    rating: 0
) 
# Volkswagen #15
Car.create!(
    make: 'Volkswagen', 
    model: 'e-Golf' ,
    description: "With all the sprightliness and most of the practicality of the regular Golf, the VW e-Golf is Volkswagen's electric car, and provides all-electric motoring in a handsome little package. An electric motor puts out 134 horsepower and draws energy from a 35.8-kWh battery pack.",  
    image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-volksawagen-e-golf-mmp-1-1569525691.jpg",
    rating: 0
)




# kanye's review
Review.create!(
    user_id: 1,
    car_id: 13,
    content: "Originally bought this car for Kim's birthday, but really enjoyed every aspect of the car so I had to go out and buy one for myself. I haven't driven another car since",
    rating: 10,
    likes: 10
)



#jon's review
Review.create!(
    user_id: 2,
    car_id: 11,
    content: "Hopefully I'll be able to afford this after coding Bootcamp. Great lookin' car.",
    rating: 10,
    likes: 8
)

#greg's review
Review.create!(
    user_id: 3,
    car_id: 1,
    content: "Amazing car. Now I have a means to go to the market and get some wood for my fireplace",
    rating: 10,
    likes: 5
)

#elon's review
Review.create!(
    user_id: 4,
    car_id: 8,
    content: "Self-driving cars are the narutal extension of active safety and obviously something we should do. Kia's Soul model is another great example of an EV that exemplifies this.",
    rating: 8,
    likes: 4
)



