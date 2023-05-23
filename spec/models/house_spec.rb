require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'associations' do
    it 'should be invalid if name is nil' do
      house = House.new(name: nil, price: 100, description: 'test', owner_name: 'test')
      expect(house).to_not be_valid
    end
    it 'should be invalid if price is nil' do
      house = House.new(name: 'test', price: nil, description: 'test', owner_name: 'test')
      expect(house).to_not be_valid
    end
    it 'should be invalid if description is nil' do
      house = House.new(name: 'test', price: 100, description: nil, owner_name: 'test')
      expect(house).to_not be_valid
    end
    it 'should be invalid if owner_name is nil' do
      house = House.new(name: 'test', price: 100, description: 'test', owner_name: nil)
      expect(house).to_not be_valid
    end
  end
end
