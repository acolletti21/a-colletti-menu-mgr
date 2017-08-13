class CreateCartedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :carted_items do |t|

      t.timestamps
    end
  end
end
