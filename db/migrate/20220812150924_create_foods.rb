class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods  do |t|
      t.string :food_name
      t.string :location
      t.integer :category_id
     
    end
  end
end
