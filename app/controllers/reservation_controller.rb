class ReservationController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  before_action :authenticate_user!, only: [:index]
  def index
    @reservations = Reservation.find_by(user_id: params[:user_id])
    render json: {cars_reservations: @reservations}
  end
  def create
    @reserved = Reservation.new(reservation_params)
    if @reserved.save
      render json:{message: 'car reserved'}
    else
      render json:{error: @reserved.errors.full_messages}
    end
  end
  def show
    render json: @reserved, status: :ok
  end

  def update
    if @reserved.update(reservation_params)
      render json: { message: 'Reservation updated successfully' }, status: :ok
    else
      render json: { error: @reserved.errors.full_messages }
    end
  end
end
