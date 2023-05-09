class Api::V1::HousesController < ApplicationController
    def index
        render json: House.all
      end
    
      def show
        @house = House.find(params[:id])
        render json: @house
      end
    
      def create
        @house = House.new(house_params)
        if @house.save
          render json: @house, status: :created
    
        else
          render json: { errors: @house.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      def destroy
        @house = House.find(params[:id])
        if @house.destroy
          render json: { deleted_house: @house, message: 'house could not be deleted' }, status: :ok
        else
          render json: { error: 'house cancellation failed' }, status: :unprocessable_entity
        end
      end
    
      def house_params
        params.permit(:name, :price, :picture, :description, :owner_name)
      end
    end
    