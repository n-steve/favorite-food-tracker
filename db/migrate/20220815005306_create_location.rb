class CreateLocation < ActiveRecord::Migration[6.1]
  def change 
    create_table :locations do |t|
      t.string :location 
      t.string :name 
    t.integer :ratings_id
    end
  end
end




# food and category has many locations, a location has many ratings. a ratings belongs to a locationbundl