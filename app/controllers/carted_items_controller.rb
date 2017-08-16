class CartedItemsController < ApplicationController
  def index
    @carted_items = CartedItem.where(status: "carted") 
    if @carted_items.any?
      @carted_items = @carted_items
    else
      flash[:warning] = "Your shopping cart is empty."
      redirect_to '/'
    end
  end

  def create
    @carted_item = CartedItem.new(
                                quantity: params[:quantity],
                                status: "carted"
                                )
    if @carted_item.save
      redirect_to "/carted_items"
    else
      flash[:warning] = "Please Enter a Quantity"
      redirect_to '/'
    end
  end


  def destroy
    carted_item = CartedItem.find(params[:id]) 
    carted_item.update(status: 'removed')
    flash[:success] = 'Product removed from cart'
    redirect_to '/carted_items'
  end
end
