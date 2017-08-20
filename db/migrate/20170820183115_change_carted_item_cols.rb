class ChangeCartedItemCols < ActiveRecord::Migration[5.1]
  def change
    rename_column :carted_items, :item_id, :menu_item_id
  end
end
