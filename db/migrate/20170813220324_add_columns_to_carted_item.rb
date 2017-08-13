class AddColumnsToCartedItem < ActiveRecord::Migration[5.1]
  def change
    add_column :carted_items, :item_id, :integer
    add_column :carted_items, :status, :string
    add_column :carted_items, :quantity, :integer
  end
end
