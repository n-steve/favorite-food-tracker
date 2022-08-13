class Rate < ActiveRecord::Base
has_many :foods
has_many :category, through: :foods



def self.rating
   Rate.all.map do |i| i.rating
   end
end

def self.sort_ratings
   self.all.sort_by{|x| x.rating}
end




end