require 'rails_helper'

RSpec.describe CartedItem, type: :model do
  describe "validations" do
    it "has a valid factory" do
      menu_item = create(:menu_item)
      expect(FactoryGirl.build(:carted_item, menu_item_id: menu_item.id)).to be_valid
    end
  end
end
