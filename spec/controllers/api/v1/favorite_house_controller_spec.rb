require 'rails_helper'

RSpec.describe Api::V1::FavoriteHousesController, type: :request do
  describe 'test api/v1/favorites endpoint' do
    before(:all) do
      @user = User.first
      @user ||= User.create(email: 'test@gmail.com', password: '123456')
      @house = House.first
      @house ||= House.create(name: 'house1', price: 100, picture: 'picture1', description: 'description1',
                              owner_name: 'owner1')

      FavoriteHouse.create(user_id: @user.id, house_id: @house.id) if FavoriteHouse.first
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
