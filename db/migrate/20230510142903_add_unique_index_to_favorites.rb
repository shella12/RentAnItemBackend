class AddUniqueIndexToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_index :favorite_houses, [:user_id, :house_id], unique: true
  end
end
