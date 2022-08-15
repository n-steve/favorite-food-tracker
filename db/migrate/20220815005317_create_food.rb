class CreateFood < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.string :category
      t.integer :locations_id

     
    end
  end
end
