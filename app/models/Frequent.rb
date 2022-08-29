class Frequent < ActiveRecord::Base
    has_many :foods
    has_many :cities, through: :foods

end


 