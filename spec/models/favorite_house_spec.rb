require 'rails_helper'

RSpec.describe FavoriteHouse, type: :model do
  describe 'associations' do
    it 'should have multiple user' do
      favorite = FavoriteHouse.reflect_on_association(:user)
      expect(favorite.macro).to eq(:belongs_to)
    end
    it 'should have multiple house' do
      favorite = FavoriteHouse.reflect_on_association(:house)
      expect(favorite.macro).to eq(:belongs_to)
    end
  end

  describe 'validations' do
    it 'should be invalid without user_id' do
      favorite = FavoriteHouse.new(user_id: nil, house_id: 1)
      expect(favorite).to_not be_valid
    end

    it 'should be invalid without house_id' do
      favorite = FavoriteHouse.new(user_id: 1, house_id: nil)
      expect(favorite).to_not be_valid
    end
  end
end
