class MenuItem < ApplicationRecord
  has_many :carted_items
  has_one :menu_item_category
  has_one :category, through: :menu_item_categories
  accepts_nested_attributes_for :menu_item_category, allow_destroy: true

  def lucky_order(min, max)
    total = 0
    @carted_items = CartedItem.all.where(status: "carted")
    @carted_items.destroy_all 
    max = max.to_i
    min = min.to_i
    until total > min && total < max do
      rand_item = MenuItem.all.sample
      if (rand_item[:price] + total) < max
        @carted_item = CartedItem.create!(
                            status: 'carted',
                            menu_item_id: rand_item[:id],
                            quantity: 1)
        total += rand_item["price"]
      end
    end
  end
end
