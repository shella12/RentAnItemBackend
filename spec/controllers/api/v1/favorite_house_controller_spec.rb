require 'rails_helper'

RSpec.describe Api::V1::FavoriteHousesController, type: :request do
  describe 'test api/v1/favorites endpoint' do
    before(:all) do
      @user = User.find_by(email: 'test@gmail.com')
      @user ||= User.create(email: 'test@gmail.com', password: '123456')
      @house = House.first
      @house ||= House.create(name: 'house1', price: 100, picture: 'picture1', description: 'description1',
                              owner_name: 'owner1')

      if FavoriteHouse.find_by(user_id: @user.id, house_id: @house.id).nil?
        FavoriteHouse.create(user_id: @user.id, house_id: @house.id)
      end
    end

    it 'should return all favorites' do
      get "/api/v1/users/#{@user.id}/favorite_houses/"
      expect(response).to have_http_status(:success)
    end

    it 'should create a favorite' do
      house = House.second
      house ||= House.create(name: 'house2', price: 100, picture: 'picture1', description: 'description1',
                             owner_name: 'owner1')
      post "/api/v1/users/#{@user.id}/favorite_houses/", params: { user_id: @user.id, house_id: house.id }
      expect(response).to have_http_status(:created)
    end

    it 'should delete a favorite' do
      delete "/api/v1/users/#{@user.id}/favorite_houses/#{@house.id}/",
             params: { user_id: @user.id, house_id: @house.id }
      expect(response).to have_http_status(:success)
    end
  end
end
