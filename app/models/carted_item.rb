class CartedItem < ApplicationRecord
  belongs_to :menu_item

  validates :quantity, presence: true
  validates :quantity, numericality: {only_integer: true, greater_than: 0}
  validates :status, presence: true

  def subtotal
    product.price * quantity
  end
end
