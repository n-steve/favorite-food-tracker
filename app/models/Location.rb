class Location < ActiveRecord::Base
has_many  :foods
has_many :category, through: :foods

  def self
    Location.all
  end
  
  def self.get_location
    Food.all.map do |i| i.location
    end
  end

def self.get_name
  Food.all.map do |i| i.name
  end
end



end