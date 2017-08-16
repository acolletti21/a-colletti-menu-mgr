class MenuItem < ApplicationRecord
  has_many :carted_items

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  before_save :capitalize

  def capitalize
    self.category = self.category.titlecase
    self.name = self.name.titlecase
  end
end
