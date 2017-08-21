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
  def lucky_order(min, max)
    order = Array.new
    total = 0
    until total > min && total < max
      rand_item = MenuItem.all.sample
      if (rand_item[:price] + total) < max
        # rand_item[:status] = 'carted'
        total += rand_item["price"]
      end
    end
    return total
  end
end
