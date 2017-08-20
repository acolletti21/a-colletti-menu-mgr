class MenuItem < ApplicationRecord
  has_many :carted_items
  has_one :menu_item_category
  has_one :category, through: :menu_item_categories
  accepts_nested_attributes_for :menu_item_category, allow_destroy: true

  # before_save :capitalize

  # def capitalize
  #   self.category = self.category.titlecase
  #   self.name = self.name.titlecase
  # end
end
