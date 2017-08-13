class MenuItem < ApplicationRecord
  has_many :carted_items
  has_many :categories, through: :menu_categories

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
