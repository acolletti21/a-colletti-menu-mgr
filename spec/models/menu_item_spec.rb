require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryGirl.build(:menu_item)).to be_valid
    end
  end
end
