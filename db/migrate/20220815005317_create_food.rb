class CreateFood < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.string :location
      t.string :r_name
      t.string :review
      t.integer :scale
      t.integer :city_id
      t.integer :frequent_id
    end
  end
end



