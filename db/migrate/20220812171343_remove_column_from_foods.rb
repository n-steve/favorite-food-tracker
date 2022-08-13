class RemoveColumnFromFoods < ActiveRecord::Migration[6.1]
  def change
    remove_column :foods, :rating_id, :integer
    add_column :foods, :rate_id, :integer
  end
end
