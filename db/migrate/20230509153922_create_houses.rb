class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.decimal :price
      t.string :picture
      t.string :description
      t.string :owner_name

      t.timestamps
    end
  end
end
