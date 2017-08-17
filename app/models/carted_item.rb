class CartedItem < ApplicationRecord
  belongs_to :menu_item, optional: true

  validates :quantity, presence: true
  validates :quantity, numericality: {only_integer: true, greater_than: 0}
  validates :status, presence: true

  def subtotal
    menu_item.price * quantity
  end

  def cart_total
    total = 0
    cart.each do |item|
      total += item.quantity
    end
  end
end
