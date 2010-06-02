class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.double :lat
      t.double :long
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
