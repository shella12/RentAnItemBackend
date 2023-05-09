class Api::V1::HouseController < ApplicationController
    def index
        render json: Appointment.all
      end
    
      def show
        @appointment = Appointment.find(params[:id])
        render json: @appointment
      end
    
      def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
          render json: @appointment, status: :created
    
        else
          render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      def destroy
        @appointment = Appointment.find(params[:id])
        if @appointment.destroy
          render json: { deleted_Appointment: @appointment, message: 'Appointment cancelled' }, status: :ok
        else
          render json: { error: 'Appointment cancellation failed' }, status: :unprocessable_entity
        end
      end
    
      def appointment_params
        params.permit(:user_id, :doctor_id, :appointement_date)
      end
    end
    