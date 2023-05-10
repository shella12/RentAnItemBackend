class Api::V1::FavoriteHousesController < ApplicationController
  def index
    @favorites = FavoriteHouse.includes(:house).where(user_id: params[:user_id])
    render json: @favorites
  end

end