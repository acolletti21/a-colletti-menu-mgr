class CartedItem < ApplicationRecord
  belongs_to :menu_item

  validates :quantity, presence: true
  validates :quantity, numericality: {only_integer: true, greater_than: 0}
  validates :status, presence: true

  def subtotal
    menu_item.price * quantity
  end

  def cart
    carted_items.where(status: 'carted')
  end
end
