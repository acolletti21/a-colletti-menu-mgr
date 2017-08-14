class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    search_term = params[:search_term]
    category_type = params[:category]

    if search_term
      @products = @products.where("name iLIKE ? OR description iLIKE ?",
                            "%#{search_term}%",
                            "%#{search_term}%")
    end

    if category_type
      # category = MenuItem.find_by(category: category_type)
      @menu_items = @menu_items.where("category LIKE (?)", "%#{category_type}%")
    end 

    if sort_attribute && sort_order
      @menu_items = @menu_items.order(sort_attribute => sort_order)
    elsif sort_attribute
      @menu_items = @menu_items.order(sort_attribute)
    end  
  end


  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(
                            name: params[:name],
                            price: params[:price],
                            category: params[:category],
                            description: params[:description]
                            )
    if @menu_item.save
      flash[:success] = "Menu Item Successfully Created"
      redirect_to "/menu_items/#{@product.id}"
    else
      render :new
    end
  end

  def show
    if params[:id] == "random"
      menu_item = MenuItem.all.sample
      redirect_to "/products/#{product.id}"
    else 
      @menu_item = MenuItem.find(params[:id])
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    @menu_item = MenuItem.find(params[:id])
    @menu_item.assign_attributes(
                            name: params[:name],
                            price: params[:price],
                            description: params[:description],
                            category: params[:category]
                            )
    if @menu_item.save
      flash[:success] = "Menu Item Successfully Updated"
      redirect_to "/menu_items/#{@menu_item.id}"
    else
      render :edit
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to "/menu_items"
    flash[:warning] = "Menu Item has been destroyed"
    redirect_to = "/"
  end
end
