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
    carted_item = CartedItem.where(status: "carted")
    carted_item.each do |item|
      total += (item.menu_item.price * item.quantity)
    end
    subs = self.subtotal.all
  end
end
