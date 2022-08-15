class Food < ActiveRecord::Base
has_many :locations
def self
    Food.all
end

def category_name
    Food.all.map do |i| i.category
    end
end
end