class Food < ActiveRecord::Base
  belongs_to :fridge
  validates :name, :presence => true
end
