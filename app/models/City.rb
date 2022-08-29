class City < ActiveRecord::Base
    has_many :foods
    has_many :frequents, through: :foods
    


end