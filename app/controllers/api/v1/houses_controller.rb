class Api::V1::HousesController < ApplicationController
  def index
    @houses = House.all
    render json: HouseSerializer.new(@houses).serializable_hash[:data].map { |house| house[:attributes] }
  end

  def show
    @house = House.find(params[:id])
    render json: @house
  end

  def new
    @house = House.new
    render json: @house
  end

  def create
    @house = House.new(house_params)
    puts
    puts
    puts
    puts
    puts 'house'
    puts @house
    puts 'house_params'
    puts house_params
    puts
    puts
    if @house.save
      render json: HouseSerializer.new(@house).serializable_hash[:data][:attributes], status: :created
    else
      render json: { errors: @house.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    FavoriteHouse.where(house_id: params[:id]).destroy_all
    @house = House.find(params[:id])
    if @house.destroy
      render json: { deleted_house: @house, message: 'house could not be deleted' }, status: :ok
    else
      render json: { error: 'house cancellation failed' }, status: :unprocessable_entity
    end
  end

  def house_params
    params.require(:house).permit(:name, :price, :picture, :description, :owner_name)
  end
end
