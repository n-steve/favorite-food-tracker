class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.integer :rating
      t.boolean :like
    end
  end
end
