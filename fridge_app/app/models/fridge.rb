class Fridge < ActiveRecord::Base
  has_many :foods
  validates :location, :brand, :size, :presence => true
end
