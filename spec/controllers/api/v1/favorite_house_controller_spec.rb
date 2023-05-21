require 'rails_helper'
require 'base64'
# picture:{name:"picture", record:{ id:5, name:"Dream house", price:"30000.0", description:"Not my dream house",owner_name:"Junior Allassane", created_at:"2023-05-20T14:33:36.144Z",updated_at:"2023-05-20T14:33:36.242Z"}}, picture_url:"http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--520ae9249b80f116d210ea7fca6d02256ade1345/NighMare%20House.webp",created_at:"2023-05-20T14:33:36.144Z", updated_at:"2023-05-20T14:33:36.242Z"}

RSpec.describe Api::V1::FavoriteHousesController, type: :request do
  describe 'test api/v1/favorites endpoint' do
    before(:all) do
      @user = User.find_by(email: 'test@gmail.com')
      @user ||= User.create(email: 'test@gmail.com', password: '123456')
      @house = House.first
      # @house ||= House.create(name: 'house1', price: 100,
      #  picture: Base64.strict_encode64(File.read(Rails.root.join('app', 'assets', 'images', 'images.jpeg'))),
      #  description: 'description1',
      #  owner_name: 'owner1')
      @house ||= House.new(
        name: 'House 1',
        price: 100_000,
        description: 'A beautiful house',
        owner_name: 'John Doe'
      )

      @house.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images.jpeg')),
                            filename: 'image.jpg', content_type: 'image/jpeg')
      @house.save

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
      house ||= House.new(
        name: 'House 1',
        price: 100_000,
        description: 'A beautiful house',
        owner_name: 'John Doe'
      )
      house.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images.jpeg')),
                           filename: 'image.jpg', content_type: 'image/jpeg')
      house.save
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
