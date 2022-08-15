puts "🌱 Seeding spices..."

puts "Location.."

r1 = Rating.create(rating:5,like: true)
r2 = Rating.create(rating:4, like: true)
r3 = Rating.create(rating: 3, like: false)


l1 = Location.create(location:"Oakland",name:"Pho Ao Sen", ratings_id: r1.id)
l2 = Location.create(location:"San Jose",name:"La Victoria", ratings_id: r2.id)
l3 = Location.create(location:"San Francisco", name: "Bubba Gump")

Food.create(food_name: "Pho", category: "Vietnamese", locations_id: l1.id)
Food.create(food_name: "Tacos", category: "Mexican", locations_id: l1.id)
Food.create(food_name: "Shrimp", category: "American", locations_id: l3.id)



puts "✅ Done seeding!"
