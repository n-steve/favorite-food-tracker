class CreateFrequent < ActiveRecord::Migration[6.1]
  def change
    create_table :frequents do |t|
      t.boolean :go_back
    end
  end
end
 