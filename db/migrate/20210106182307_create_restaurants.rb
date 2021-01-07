class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.integer :location_id

      t.timestamps
    end
  end
end
