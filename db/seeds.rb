require 'faker'
Achievement.destroy_all
User.destroy_all 
Review.destroy_all
Car.destroy_all
Favorite.destroy_all

# Audi
Car.create!(
    make: "Audi", 
    model: "E-Tron" ,
    description: "" ,  
    image: "https://www.audiusa.com/dam/nemo/us/models/e-tron/e-tron/header-transition/1920x1080/1920x1080_etron-6-min.jpg?output-format=webp&downsize=1920px:*"
)

# BMW
Car.create!(
    make:"BMW" , 
    model: "i3" ,
    description: "" ,  
    image: "https://i0.wp.com/rayhaber.com/wp-content/uploads/2020/06/bmw-i3-elektrikli-surus-keyfini-yuksek-performansla-birlestiriyor.jpg?fit=1424%2C800&ssl=1"
)

# Chevrolet
Car.create!(
    make:"Chevrolet" , 
    model: "Bolt" ,
    description: "" ,  
    image: "https://www.waldorf-chevy.com/assets/shared/CustomHTMLFiles/Responsive/MRP/Chevrolet/2019/Bolt-EV/images/2019-Chevrolet-Bolt-EV-01.jpg"
)

# Honda
Car.create!(
    make:"Honda", 
    model: "Clarity" ,
    description: "",  
    image: "https://media.ed.edmunds-media.com/honda/clarity/2020/oem/2020_honda_clarity_sedan_fuel-cell_fq_oem_7_815.jpg"
)

# Hyundai
Car.create!(
    make: "Hyundai", 
    model: "Ioniq" ,
    description:"" ,  
    image: "https://ev-database.org/img/auto/Hyundai_IONIQ_Electric_2020/Hyundai_IONIQ_Electric_2020-01@2x.jpg"
)
Car.create!(
    make: "Hyundai", 
    model: "Kona" ,
    description:"" ,  
    image: "https://cdn.static-carindigo.com/images/content/07fa88a169c392498afaad34d60ecb81.jpeg"
)

# Jaguar
Car.create!(
    make: "Jaguar", 
    model: "I-Pace" ,
    description: "" ,  
    image: "https://ev-database.org/img/auto/Jaguar_I-Pace/Jaguar_I-Pace-01.jpg"
)

# Kia
Car.create!(
    make: "Kia", 
    model: "Nira" ,
    description: "",  
    image: "https://media.ed.edmunds-media.com/kia/niro-ev/2019/oem/2019_kia_niro-ev_4dr-suv_ex-premium_fq_oem_2_1600.jpg"
)

Car.create!(
    make: "Kia", 
    model: "Soul" ,
    description:"" ,  
    image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-kia-soul-ev-drive-104-1554317525.jpg"
)

# Nissan
Car.create!(
    make: "Nissan", 
    model: "Leaf" ,
    description: "",  
    image: "https://cdn.vox-cdn.com/thumbor/3FTuKl7FHP5sbKiR-6WnZ4XBdrw=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/13672295/2019_Nissan_LEAF_24.jpg"
)

Car.create!(
    make: "Nissan", 
    model: "Leaf Plus" ,
    description: "",  
    image: "https://cnet2.cbsistatic.com/img/446RoFPuMPeuvNtQ9-8urF0Xhv4=/1200x675/2019/04/06/2315f6fd-f122-4df7-8e62-9aedec29c03b/2019-nissan-leaf-plus-27.jpg"
)

# Porsche
Car.create!(
    make: "Porsche", 
    model: "Taycan",
    description: "" ,  
    image: "https://electrade.app/img/blog/comparison/porsche-taycan-vs-mission-e-concept-comparison-3.png"
)

# Tesla
Car.create!(
    make: "Tesla", 
    model: "Model 3" ,
    description: "" ,  
    image: "https://electrek.co/wp-content/uploads/sites/3/2020/10/Tesla-Model-3-2021-refresh.jpg?quality=82&strip=all"
)

Car.create!(
    make: 'Tesla', 
    model: 'Model S',
    description: '',
    image: "https://tesla-cdn.thron.com/delivery/public/image/tesla/35d15221-0a5f-4dce-b484-a4db67b81dd2/bvlatuR/std/0x0/model-s@2x"
)

Car.create!(
    make: 'Tesla', 
    model: 'Model X',
    description: '',
    image: "https://www.tesla.com/sites/default/files/modelsx-new/social/model-x-social.jpg"
)
# Volkswagen
Car.create!(
    make: 'Volkswagen', 
    model: 'e-Golf' ,
    description: "",  
    image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-volksawagen-e-golf-mmp-1-1569525691.jpg"
)






