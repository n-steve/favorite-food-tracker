class CreateRating < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.boolean :like
      
    end
  end
end
