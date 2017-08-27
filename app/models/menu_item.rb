class MenuItem < ApplicationRecord
  has_many :carted_items
  has_one :menu_item_category
  has_one :category, through: :menu_item_categories
  validates :price, :numericality => true
  accepts_nested_attributes_for :menu_item_category, allow_destroy: true

  def lucky_order(min, max)
    total = 0
    @carted_items = CartedItem.all.where(status: "carted")
    @carted_items.destroy_all 
    min = min.to_i
    max = max.to_i
    until total > min && total < max do
      rand_item = MenuItem.all.sample
      while (rand_item[:price] + total) < max do
        @carted_item = CartedItem.create!(
                            status: 'carted',
                            menu_item_id: rand_item[:id],
                            quantity: 1)
        total += rand_item["price"]
        continue = [*0..1].sample
        rand_item = MenuItem.all.sample
        if continue == 1 && (rand_item[:price] + total) < max
          @carted_item
        else
          break
        end
      end
    end
  end
end
