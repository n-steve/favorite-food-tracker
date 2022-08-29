class Food < ActiveRecord::Base

    belongs_to :frequent
    belongs_to :city
    
    
end