class Rating < ActiveRecord::Base



# def self.rating
#    Rating.all.map do |i| i.rating
#    end
# end

# def self.sort_ratings
#    self.all.sort_by{|x| x.rating}
# end

# def self.Location_name
#    Location.all.map do |i| i.Location
#    end
#  end
 
#  def self.hungry(Location)
#  a = self.find_by(Location: Location)
#  a.foods.map do |x| "#{x.food_name} at #{x.location}"
#  end
#  end
 
 
#  def self.indecesive
#    a = Location.all.sample
#    b = a.foods.sample
#    "#{b.food_name} at #{b.location}"
 
#  end
     
#  def self.create_new_Location(Location)
#      Location.create(Location: Location)
#  end
 
 

#  def self.food_name
#    Food.all.map do |i| i.food_name
#    end
# end

# def location?
#    if self.location.include?("Home") 
#        "HomeMade"
#    else self.location
#    end
# end

# def self.create_new_food(food_name,location)
#   a = Food.create(food_name:food_name,location:location,Location_id: Location.ids ,rate_id: Rate.ids)
# end

# def delicious?
#    a = self.rate
#    a.update(rating: rand(0..5),like: true)
# end




end