class MenuItem < ApplicationRecord
  has_many :carted_items

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
