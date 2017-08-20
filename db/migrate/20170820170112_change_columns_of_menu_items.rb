class ChangeColumnsOfMenuItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :menu_items, :category, :string
  end
end
