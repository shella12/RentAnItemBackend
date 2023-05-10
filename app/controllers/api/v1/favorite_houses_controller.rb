class Api::V1::FavoriteHousesController < ApplicationController
  def index
    favorites = FavoriteHouse.includes(:house).where(user_id: params[:user_id])
    house = favorites.map { |favorite| favorite.house}
    render json: house.to_json
  end

  def create
    favoritehouse = FavoriteHouse.new(favorite_params)

    if favoritehouse.save
      render json: favoritehouse, status: :created
    else
      render json: { errors: favoritehouse.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    favorite = FavoriteHouse.find_by(user_id: params[:user_id], house_id: params[:house_id])
    if favorite.destroy
      render json: { deleted_favorite: @favorite, message: 'favorite deleted' }, status: :ok
    else
      render json: { error: 'favorite deletion failed' }, status: :unprocessable_entity
    end
  end

  private

  def favorite_params
    params.permit(:user_id, :house_id)
  end
end