class Api::V1::FavoriteHousesController < ApplicationController
  def index
    @favorites = FavoriteHouse.includes(:house).where(user_id: params[:user_id])
    render json: @favorites
  end

  def create
    favoritehouse = FavoriteHouse.new(favorite_params)

    if favoritehouse.save
      render json: favoritehouse, status: :created
    else
      render json: { errors: favoritehouse.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def favorite_params
    params.permit(:user_id, :house_id)
  end
end