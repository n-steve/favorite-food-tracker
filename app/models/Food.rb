class Food < ActiveRecord::Base
belongs_to :category
belongs_to :rate



def self.food_name
    Food.all.map do |i| i.food_name
    end
end

def location?
    if self.location.include?("Home") 
        "HomeMade"
    else self.location
    end
end

def self.create_new_food(food_name,location)
   a = Food.create(food_name:food_name,location:location,category_id: Category.ids ,rate_id: Rate.ids)
end

def delicious?
    a = self.rate
    a.update(rating: rand(0..5),like: true)
end


end