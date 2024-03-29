class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
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
      flash[:warning] = "Item failed to save, please try again. #{@menu_item.errors.full_messages.join(', ')}."
      redirect_to '/menu_items/new'
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
      flash[:success] = "Menu Item Successfully Edited"
      redirect_to "/menu_items/#{@menu_item.id}"
    else
      flash[:warning] = "Item failed to save, please try again. #{@menu_item.errors.full_messages.join(', ')}."
      @menu_item.assign_attributes(menu_item_category: [menu_item_id: params[:menu_item_id], category_id: params[:category_id]])
      redirect_to "/menu_items/#{@menu_item.id}/edit"
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to "/"
    flash[:warning] = "Menu Item has been destroyed"
    redirect_to = "/"
  end

  def redirect_bad_url
    redirect_to '/'
    flash[:warning] = "The page you requested cannot be found"
  end

  private
    def menu_item_params
      params.require(:menu_item).permit(
        :name, :price, :description,
        menu_item_category_attributes: [:menu_item_id, :category_id] 
        )
    end
end
