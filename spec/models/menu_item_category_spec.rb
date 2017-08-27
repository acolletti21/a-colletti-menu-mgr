require 'rails_helper'

RSpec.describe MenuItemCategory, type: :model do
  describe "validations" do
    it "has a valid factory" do
      category = create(:category)
      menu_item = create(:menu_item)
      menu_item_category = build(:menu_item_category, menu_item_id: menu_item.id, category_id: category.id)
      expect(menu_item_category).to be_valid
    end
  end
end
