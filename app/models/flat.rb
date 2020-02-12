class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :number_of_guests, presence: true
  validates :number_of_guests, numericality: { only_integer: true,
                                               greater_than_or_equal_to: 1,
                                               less_than_or_equal_to: 20 }
end
