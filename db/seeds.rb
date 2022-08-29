puts "🌱 Seeding spices..."


# l1 = City.create(city_name: "Oakland") 
# r1 = ComeBack.create(go_back: true) 

a1 = City.create(city_name: "Oakland")
b1 = Frequent.create(go_back: true)

Food.create(food_name: "Pho",location:"",r_name: "Pho Ao Sen",review: "Super Delicious", scale: 5, city_id: a1.id, frequent_id: b1.id)



puts "✅ Done seeding!"
