class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    # .order(category: :desc, price: :asc)
    @categories = Category.all
  end


  def new
    @menu_item = MenuItem.new
    @menu_item.build_menu_item_category
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      flash[:success] = "Menu Item Successfully Created"
      redirect_to "/menu_items/#{@menu_item.id}"
    else
      flash[:warning] = "Item failed to save, please try again."
      redirect_to "/"
    end
  end

  def show
    if params[:id] == "random"
      menu_item = MenuItem.all.sample
      redirect_to "/menu_items/#{menu_item.id}"
    else 
      @menu_item = MenuItem.find(params[:id])
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    @menu_item = MenuItem.find(params[:id])
    @menu_item.menu_item_category.destroy
    @menu_item.update!(menu_item_params)
    if @menu_item.save
      flash[:success] = "Menu Item Successfully Created"
      redirect_to "/menu_items/#{@menu_item.id}"
    else
      flash[:warning] = "Item failed to save, please try again."
      redirect_to "/"
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to "/"
    flash[:warning] = "Menu Item has been destroyed"
    redirect_to = "/"
  end

  private
    def menu_item_params
      params.require(:menu_item).permit(
        :name, :price, :description,
        menu_item_category_attributes: [:menu_item_id, :category_id] 
        )
    end
end
