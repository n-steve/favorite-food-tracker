puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating Category ..."

a1 = Category.create(category: "Asian")
b1 = Category.create(category: "American")
c2 = Category.create(category: "Mexican")

puts "Creating Rates ...."
r1 = Rate.create(rating: rand(0..5),like:true)
r2 = Rate.create(rating: rand(0..5),like:true)
r3 = Rate.create(rating: rand(0..5),like:true)
r4 = Rate.create(rating: rand(0..5),like:true)


puts "Creating Food..."
Food.create(food_name: "Pho",location: "Pho Restauraunt", category_id: a1.id, rate_id: r1.id)
Food.create(food_name: "Bun Bo Hue",location: "Bun Bo Hue Restauraunt", category_id: a1.id, rate_id: r2.id)
Food.create(food_name: "Burgers",location: "Home", category_id: b1.id, rate_id: r3.id)
Food.create(food_name: "Carne Asada Tacos",location: "Tacos Mi Rancho", category_id: c2.id, rate_id: r4.id)
puts "Creating Rating..."


puts "✅ Done seeding!"
