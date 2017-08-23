class CartedItemsController < ApplicationController
  def index
    @carted_items = CartedItem.all.where(status: "carted") 
    if @carted_items.any?
      @carted_items = @carted_items
      @total = @carted_items.sum {|n| n.menu_item.price * n.quantity }
    else
      flash[:warning] = "Your shopping cart is empty."
      redirect_to '/'
    end
  end

  def show
    if params[:id] == "random"
      menu_item = MenuItem.all.sample
      menu_item.lucky_order(7,15)
      redirect_to "/carted_items"
    else 
      redirect_to '/carted_items'
    end
  end

  def create
    @carted_item = CartedItem.new(
                                menu_item_id: params[:menu_item_id],
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

  def update
    @carted_item = CartedItem.find(params[:id])
    @carted_item.update!(params[:quantity])
    if @carted_item.save
      flash[:success] = "Quantity Successfully Updated."
      redirect_to "/carted_items"
    else
      flash[:warning] = "Item failed to update, please try again."
      redirect_to "/"
    end
  end

  def destroy
    carted_item = CartedItem.find(params[:id]) 
    carted_item.update(status: 'removed')
    flash[:success] = 'Item removed from cart'
    redirect_to '/carted_items'
  end
end
