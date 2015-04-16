class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :name
      t.belongs_to :fridge
    end
  end
end
