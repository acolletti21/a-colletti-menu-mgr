require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryGirl.build(:category)).to be_valid
    end
  end
end
