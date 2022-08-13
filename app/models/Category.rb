class Category < ActiveRecord::Base
has_many :foods
has_many :rates, through: :foods


def self.category_name
  Category.all.map do |i| i.category
  end
end

def self.hungry(category)
a = self.find_by(category: category)
a.foods.map do |x| "#{x.food_name} at #{x.location}"
end
end


def self.indecesive
  a = Category.all.sample
  b = a.foods.sample
  "#{b.food_name} at #{b.location}"

end
    
def self.create_new_category(category)
    Category.create(category: category)
end


end