class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :calculate_cart_count

  def calculate_cart_count
    @cart_count = CartedItem.all.where(status: 'carted').length
  end
end
