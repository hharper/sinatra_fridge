class CreateFridges < ActiveRecord::Migration
  def change
    create_table :fridges do |t|
      t.text :location
      t.text :brand
      t.text :size
    end
  end
end
