require 'rails_helper'

RSpec.describe Api::V1::HousesController, type: :request do
  describe 'test api/v1/houses endpoint' do
    before(:all) do
      @user = User.find_by(email: 'test@gmail.com')
      @user ||= User.create(email: 'test@gmail.com', password: '123456')
      @house = House.first
      @house ||= House.new(
        name: 'House 1',
        price: 100_000,
        description: 'A beautiful house',
        owner_name: 'John Doe'
      )

      @house.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images.jpeg')),
                            filename: 'image.jpg', content_type: 'image/jpeg')
      @house.save
    end

    it 'should return all houses' do
      get '/api/v1/houses/'
      expect(response).to have_http_status(:success)
    end

    it 'should return a house' do
      get "/api/v1/houses/#{House.first.id}/"
      expect(response).to have_http_status(:success)
    end

    it 'should create a house' do
      post '/api/v1/houses/', params: { name: 'House 1', price: 100_000, description: 'A beautiful house',
                                         owner_name: 'John Doe', picture: 'image.jpg' }
      expect(response).to have_http_status(:created)
    end

    it 'should felete a house' do
      delete "/api/v1/houses/#{House.first.id}/"
      expect(response).to have_http_status(:success)
    end

    it 'should return a empty a house' do
      get "/api/v1/houses/new/"
      expect(response).to have_http_status(:success)
    end

  end
end