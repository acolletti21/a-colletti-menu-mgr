class MenuItem < ApplicationRecord
  has_many :carted_items
  has_many :menu_item_categories
  has_many :categories, through: :menu_item_categories

  # before_save :capitalize

  # def capitalize
  #   self.category = self.category.titlecase
  #   self.name = self.name.titlecase
  # end
end
