class RemoveColumnPicture < ActiveRecord::Migration[7.0]
  def change
    remove_column :houses, :picture
  end
end
