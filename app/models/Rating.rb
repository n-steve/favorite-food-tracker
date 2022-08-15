class Rating < ActiveRecord::Base
belongs_to :locations

def all
    Rating.all
end

def get_ratings
    self.map do |i| i.rating
    end
end 

def get_true?
    self.map do |i| i.like == true
    end
end

end